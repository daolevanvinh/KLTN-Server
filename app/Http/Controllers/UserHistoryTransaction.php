<?php


namespace App\Http\Controllers;

use App\BillStudentCourse;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
class UserHistoryTransaction extends BaseController
{
    public function getHistoryTransaction(Request $request) {
        $user = $request->user;
        $bills = BillStudentCourse::where('user_id', $user->user_id)->get();
        return [
            'list' => $bills,
            'RequestSuccess' => true
        ];
    }
}