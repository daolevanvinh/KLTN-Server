<?php


namespace App\Http\Controllers;

use App\Admin;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Storage;
use Tymon\JWTAuth\Facades\JWTAuth;

class UserController extends BaseController
{
    protected $user_id = '';
    protected $password = '';

    function __construct()
    {
        Config::set('jwt.user', User::class);
        Config::set('jwt.identifier', 'user_id');
        Config::set('auth.providers', ['users' => [
            'driver' => 'eloquent',
            'model' => User::class,
        ]]);
    }


    public function register(Request $request) {
        $us = User::find($request->user_id);
        if(!$us) {



            $input = $request->only('user_id','name','password');
            $user = new User();
            $user->user_id = $input['user_id'];
            $user->name = $input['name'];
            $user->password = bcrypt($input['password']);
            Storage::disk('public_uploads')->copy('/default/avatar.png','users/'.$user->user_id.'/avatar.png');


            $user->save();




            return ['msg' => 'Đăng ký thành công',
                'RequestSuccess' => true];
        }
        return ['msg' => 'Tài khoản đã tồn tại',
            'RequestSuccess' =>  false];
    }

    public function login(Request $request) {
        $user = User::find($request->input('user_id'));
        $error = [
            'msg' => 'Tài khoản hoặc mật khẩu không đúng',
            'RequestSuccess' => false
        ];
        if($user && Hash::check($request->password, $user->password)) {
            $credentials = $request->only('user_id', 'password');
            $token = JWTAuth::attempt($credentials);

            $data = [
                'token' => $token,
                'user' => User::with('card')->find($request->input('user_id')),
                'RequestSuccess' => true
            ];
            return $data;
        } else {
            return $error;
        }
        return $error;
    }

    public function getUserInfo(Request $request) {

        //JWTAuth::invalidate($request->token);
        $user = $request->user;//User::find($request->user->user_id);
        $token = JWTAuth::FromUser($user);
        $data = [
          'user' => $user,
            'token' => $token
        ];



        return response()->json($data,
            200,
            ['Content-type'=> 'application/json; charset=utf-8'],
            JSON_UNESCAPED_UNICODE);
    }

    public function editInfor(Request $request) {
        $user = $request->user;
        $user->name = $request->name;
        $user->address = $request->address;
        $user->phone = $request->phone;
        $user->save();
        Storage::disk('public_uploads')->delete('users/'.$user->user_id.'/avatar.png');
        Storage::disk('public_uploads')->putFileAs('users/'.$user->user_id, $request->file('avatar'), 'avatar.png');
        return [
            'msg' => 'Updated!',
            'user' => $user,
            'RequestSuccess' => true
        ];
    }

    public function changePassword(Request $request) {
        $user = User::find($request->user_id);
        if($user && Hash::check($request->password, $user->password)) {
            $user->password = bcrypt($request->newPassword);
            $user->save();
            return ['msg' => 'Đổi mật khẩu thành công', 'RequestSuccess' => true, 'user' => $user];
        }
        return ['msg' => 'Mật khẩu hiện tại không đúng', 'RequestSuccess' => false];
    }

    public function editProfile(Request $request) {
        $us = $request->user;
        $user = User::find($us->user_id);
        if($user) {
            $user->profile = $request->profile;
            $user->save();
            return [
                'msg' => 'Cập nhật thông tin thành công',
                'user' => $user,
                'RequestSuccess' => true
            ];
        }

    }

    public function forgotPassword(Request $request) {
        $user_id = $request->user_id;
        $user = User::find($user_id);
        if($user) {
            $code = bcrypt(md5(time().$user->user_id));
            $user->active_code = $code;
            $user->save();

            //$url = route('http://localhost:8081/forgotPassword',['user_id' => $user_id, 'code' => $code ]);
            $url = 'http://localhost:8081/forgotPassword?code='.$code.'&user_id='.$user_id;
            $data = array('name'=>$user->name , "url" => $url );
            Mail::send('mail', $data, function($message) use($user_id) {
                $message->to($user_id,'')->subject
                ('Xác thực quên mật khẩu');
                $message->from('16110267@student.hcmute.edu.vn','vinh');
            });
            return [
                'msg' => 'Vui lòng đăng nhập vào mail để xác thực!',
                'RequestSuccess' => true
            ];
        } else {
            return ['msg' => 'Tài khoản không tồn tại', 'RequestSucces' => false];

        }
    }

    public function afterForgotPassword(Request $request) {
        $user = User::find($request->user_id);
        if($user && $user->active_code == $request->code) {
            $user->password = bcrypt($request->password);
            $user->active_code = null;
            $user->save();
            return [
                'msg' => 'Thay đổi thành công',
                'RequestSuccess' => true
            ];
        }
        return [
            'RequestSuccess' => false,
            'msg' => 'Đã có lỗi xảy ra !!!'
        ];
    }
}

