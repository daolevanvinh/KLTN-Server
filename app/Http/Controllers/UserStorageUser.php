<?php


namespace App\Http\Controllers;

use App\BillStudentCourse;
use App\StoragePackage;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\DB;

class UserStorageUser extends BaseController
{
    public function getStoreUserList(Request $request) {
        $user = $request->user;
        $courses = DB::table('instructor_course')
            ->where('user_id', $user->user_id)
            ->select('name', 'course_id')
            ->get();

        $bills = BillStudentCourse::all();
        return [
            'course_list' => $courses,
            'bill_list' => $bills,
            'list' => DB::table('storage_user')->where('user_id', $user->user_id)->get()
        ];
    }

    public function getMyCourse(Request $request) {

    }

}