<?php


namespace App;


use Illuminate\Database\Eloquent\Model;

class AnnouceRoom extends Model
{
    protected $table = "annouce_room";
    public $incrementing = false;


    public function FromCourse() {
        return $this->belongsTo(InstructorCourse::class,'fromCourse', 'course_id');
    }

    public function ToUserInfo() {
        return $this->belongsTo(User::class, 'toUser', 'user_id');
    }

    public function Annouces() {
        return $this->hasMany(Annouce::class, 'annouce_id', 'annouce_id');
    }
}