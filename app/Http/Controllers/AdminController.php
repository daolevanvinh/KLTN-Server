<?php


namespace App\Http\Controllers;


use App\Admin;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Hash;
use Tymon\JWTAuth\Facades\JWTAuth;

class AdminController  extends BaseController
{
    function __construct()
    {
        Config::set('jwt.user', Admin::class);
        Config::set('jwt.identifier', 'admin_id');
        Config::set('auth.providers', ['users' => [
            'driver' => 'eloquent',
            'model' => Admin::class,
        ]]);
    }

    public function register(Request $request) {
        $ad = Admin::find($request->admin_id);
        if(!$ad) {
            $input = $request->only('admin_id','name','password');
            $admin = new Admin();
            $admin->admin_id = $request->admin_id;
            $admin->name = $request->name;
            $admin->password = bcrypt($request->password);
            $admin->admintype_id = $request->admintype_id;
            $admin->save();
            return ['msg' => 'Đăng ký thành công',
                'RequestSuccess' => true];
        }
        return ['msg' => 'Tài khoản đã tồn tại',
            'RequestSuccess' =>  false];
    }

    public function login(Request $request) {
        $ad = Admin::find($request->input('admin_id'));
        $error = [
            'msg' => 'Tài khoản hoặc mật khẩu không đúng',
            'RequestSuccess' => false
        ];
        if(($ad && Hash::check($request->password, $ad->password)) && ($request->employee == $ad->admintype_id) ) {
            $credentials = $request->only('admin_id', 'password', $ad->admintype_id);
            $token = JWTAuth::attempt($credentials);

            $data = [
                'token' => $token,
                'admin' => $ad,
                'RequestSuccess' => true
            ];
            return $data;
        } else {
            return $error;
        }
        return $error;
    }

    public function getAdminInfo(Request $request){
        $admin = $request->admin;//User::find($request->user->user_id);

//        $token = JWTAuth::FromUser($admin);
        if(!$admin) {
            return ['msg' => 'Error',
                'RequestSuccess' => false,
//                'data' => $token->admin_id,
//                'token' => $token
            ];
        }
        return ['msg' => 'Tài khoản đã tồn tại',
            'RequestSuccess' => false,
            'admin' => $admin
        ];
    }
    public function editAdminInfo(Request $request){
        $admin = $request->user;
        $admin->name = $request->name;
        $admin->phone = $request->phone;
        $admin->address = $request->address;
        $admin->save();
        return [
            'msg' => "Cập nhật thông tin thành công",
            'admin' => $admin,
            'RequestSuccess' => true
        ];
    }
    public function adminChangePassword(Request $request){
        $admin = $request->user;

        // return[
        //     'pass' => $pass,
        //     'fsdfds' => Hash::check($request->password, Admin::find($admin->admin_id)->password)
        // ];
        if($admin && Hash::check($request->password, $admin->password)) {
            $admin->password = bcrypt($request->newPassword);
            $admin->save();
            return ['msg' => 'Đổi mật khẩu thành công', 'RequestSuccess' => true, 'admin' => $admin];
        }
        return [
            'msg' => 'Mật khẩu hiện tại không đúng',
            'RequestSuccess' => false
        ];

    }
}