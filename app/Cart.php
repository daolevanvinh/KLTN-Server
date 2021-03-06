<?php


namespace App;


use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    protected $table = "cart";
    protected $primaryKey = "user_id";
    public $incrementing = false;

    public function course() {
        return $this->hasOne(InstructorCourse::class, 'course_id', 'course_id');
    }

}