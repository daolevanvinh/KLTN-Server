<?php


namespace App;


use Illuminate\Database\Eloquent\Model;

class BillStudentCourse extends Model
{
    protected $table = 'bill_student_course';
    protected $primaryKey = 'bill_student_course_id';

    protected $fillable = ['bill_student_course_id', 'user_id', 'currentInfo',
        'vnp_Amount', 'vnp_BankCode', 'vnp_BankTranNo', 'vnp_CardType', 'vnp_TransactionNo'];



}