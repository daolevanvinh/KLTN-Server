<?php


namespace App\Http\Controllers;


use App\InstructorCourse;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
class GuestProfileViewController extends BaseController
{
    public function getProfile(Request $request) {
        $app_id = $request->app_id;
        $ins = User::where('app_id', $app_id)->first();
        if($ins) {
            $courses = InstructorCourse::with('instructor','course_comment','priceTier')
                ->where('user_id', '=',$ins->user_id)
                ->where('public',1)
                ->where('disable',0)
                ->get();
            return [
                'object' => $ins,
                'list' => $courses,
                'RequestSuccess' => true
            ];
        }
        return [
            'RequestSuccess' => false
        ];
    }
}