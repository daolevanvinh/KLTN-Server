<?php

namespace App\Http\Middleware;

use App\InstructorCourse;
use App\User;
use Closure;
use Tymon\JWTAuth\Exceptions\JWTException;
use Tymon\JWTAuth\Facades\JWTAuth;

class VerifyAnnoucement
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $token = $request->token;
        try {
            JWTAuth::setToken($token);
            $user = JWTAuth::toUser();
            if($user != null) {

                $us = InstructorCourse::where('user_id', $user->user_id)->where('course_id', 73)->first();
                if(!$us) {
                    return ['errorToken' => true, 'msg' => 'Đã có lỗi xảy ra'];
                }

            } else {
                return response()->json(['errorToken' => true, 'msg' => 'Lỗi đăng nhập, vui lòng đăng nhập lại']);
            }
        }catch (JWTException $e) {
            if($e instanceof \Tymon\JWTAuth\Exceptions\TokenExpiredException) {
                return response()->json(['errorToken' => true, 'msg' => 'Lỗi đăng nhập, vui lòng đăng nhập lại 1']);
            }else if ($e instanceof \Tymon\JWTAuth\Exceptions\TokenInvalidException) {
                return response()->json(['errorToken' => true, 'msg' => 'Lỗi đăng nhập, vui lòng đăng nhập lại 2']);
            }else{
                return response()->json(['errorToken' => true, 'msg' => 'Lỗi đăng nhập, vui lòng đăng nhập lại 3']);
            }
        }
        return $next($request);
    }
}
