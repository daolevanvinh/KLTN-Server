<?php


namespace App\Http\Controllers;


use App\BillStudentCourse;
use App\Cart;
use App\InstructorCourse;
use App\StudentCourse;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

class VNPayController extends BaseController
{
    public function create(Request $request)
    {
        $user = $request->user;
        $carts = Cart::where('user_id', $user->user_id)->get();
        $totalPrice = 0;
        if(!$carts || count($carts) == 0) {
            return redirect('http://localhost:8081/mypage?state=11');
        }
        Session::put('user_id', $user->user_id);
        foreach ($carts as $cart) {
            $course = InstructorCourse::with('priceTier')->find($cart->course_id);
            if($course) {
                $totalPrice += $course->priceTier->priceTier;
            } else {
                return redirect('http://localhost:8081/mypage?state=11');
            }
        }

        session(['cost_id' => $request->id]);
        session(['url_prev' => url()->previous()]);
        //SZM993R4
        //JJUZVZFGCCQFLRAHFQYAXHNTPOWAMIDT
        $vnp_TmnCode = "8ZOGO9RW"; //Mã website tại VNPAY
        $vnp_HashSecret = "KDASWVSUZEFSCKKWZPRQEEKFIAHQZULP"; //Chuỗi bí mật
        $vnp_Url = "http://sandbox.vnpayment.vn/paymentv2/vpcpay.html";
        $vnp_Returnurl = "http://goodlearning.com/callbackVPN";
        $vnp_TxnRef = date("YmdHis"); //Mã đơn hàng. Trong thực tế Merchant cần insert đơn hàng vào DB và gửi mã này sang VNPAY
        $vnp_OrderInfo = "Thanh toán hóa đơn phí dich vụ";
        $vnp_OrderType = 'billpayment';
        $vnp_Amount = $totalPrice * 100;
        $vnp_Locale = 'vn';
        $vnp_IpAddr = request()->ip();

        $inputData = array(
            "vnp_Version" => "2.0.0",
            "vnp_TmnCode" => $vnp_TmnCode,
            "vnp_Amount" => $vnp_Amount,
            "vnp_Command" => "pay",
            "vnp_CreateDate" => date('YmdHis'),
            "vnp_CurrCode" => "VND",
            "vnp_IpAddr" => $vnp_IpAddr,
            "vnp_Locale" => $vnp_Locale,
            "vnp_OrderInfo" => $vnp_OrderInfo,
            "vnp_OrderType" => $vnp_OrderType,
            "vnp_ReturnUrl" => $vnp_Returnurl,
            "vnp_TxnRef" => $vnp_TxnRef,
        );

        if (isset($vnp_BankCode) && $vnp_BankCode != "") {
            $inputData['vnp_BankCode'] = $vnp_BankCode;
        }
        ksort($inputData);
        $query = "";
        $i = 0;
        $hashdata = "";
        foreach ($inputData as $key => $value) {
            if ($i == 1) {
                $hashdata .= '&' . $key . "=" . $value;
            } else {
                $hashdata .= $key . "=" . $value;
                $i = 1;
            }
            $query .= urlencode($key) . "=" . urlencode($value) . '&';
        }

        $vnp_Url = $vnp_Url . "?" . $query;
        if (isset($vnp_HashSecret)) {
            // $vnpSecureHash = md5($vnp_HashSecret . $hashdata);
            $vnpSecureHash = hash('sha256', $vnp_HashSecret . $hashdata);
            $vnp_Url .= 'vnp_SecureHashType=SHA256&vnp_SecureHash=' . $vnpSecureHash;
        }
        return redirect($vnp_Url);
    }

    public function callback(Request $request) {
        $user_id = Session::get('user_id');
        Session::put('user_id', 0);
        if($request->vnp_ResponseCode == '00') {

            $carts = Cart::where('user_id', $user_id)->get();

            if(count($carts) > 0) {
                $bill = new BillStudentCourse();
                $bill->user_id = $user_id;
                $bill->vnp_Amount = $request->vnp_Amount / 100;
                $bill->vnp_BankCode= $request->vnp_BankCode;
                $bill->vnp_BankTranNo = $request->vnp_BankTranNo;
                $bill->vnp_CardType = $request->vnp_CardType;
                $bill->vnp_TransactionNo =$request->vnp_TransactionNo;

                $courses = [];
                foreach ($carts as $cart) {
                    $stuCourse = new StudentCourse();
                    $stuCourse->user_id = $user_id;
                    $stuCourse->course_id = $cart->course_id;
                    $stuCourse->save();

                    $currentCourse = DB::table('instructor_course')
                        ->join('pricetier', 'instructor_course.priceTier_id','=','pricetier.priceTier_id')
                        ->select('instructor_course.course_id', 'instructor_course.name', 'pricetier.priceTier',
                            'instructor_course.updated_at as course_updated')
                        ->where('instructor_course.course_id', $cart->course_id)
                        ->first();

                    array_push($courses, $currentCourse);
                    $insCourse = InstructorCourse::with('instructor')->find($cart->course_id);
                    $instructor = User::find($insCourse->instructor->user_id);
                    $instructor->ewallet += $currentCourse->priceTier;
                    $instructor->save();

                    DB::table('cart')
                        ->where('user_id', $user_id)->where('course_id', $cart->course_id)->delete();
                }
                $bill->currentInfo = json_encode($courses);
                $bill->save();




                return redirect('http://localhost:8081/mypage?state='.$request->vnp_ResponseCode);
            }
            return redirect('http://localhost:8081/mypage?state=10');
        }
    }
}