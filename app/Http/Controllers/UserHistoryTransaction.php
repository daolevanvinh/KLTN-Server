<?php


namespace App\Http\Controllers;

use App\BillStudentCourse;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\DB;

class UserHistoryTransaction extends BaseController
{
    public function getHistoryTransaction(Request $request) {
        $user = $request->user;
        $bills = DB::table('bill_student_course')->where('user_id', $user->user_id)
            ->orderBy('created_at', 'desc')->get();
        return [
            'list' => $bills,
            'RequestSuccess' => true
        ];
    }
}