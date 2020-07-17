<?php


namespace App\Http\Controllers;

use App\Annouce;
use App\AnnouceRoom;
use App\Events\AnnoucePosted;
use App\StudentCourse;
use App\Events\MessagePosted;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\DB;

class AnnouceController extends BaseController
{
    public function sendAnnouce(Request $request) {

        $user = $request->user;
        $course = DB::table('Instructor_Course')
            ->where('course_id', $request->course_id)
            ->where('user_id', $user->user_id)
            ->first();
        if($course) {
            $annouce = new Annouce();
            $annouce->text = $request->text;
            $annouce->save();

            $stuList = DB::table('student_course')
                ->where('course_id', $course->course_id)
                ->select('user_id')->get();
            foreach ($stuList as $stu) {
                $room = new AnnouceRoom();
                $room->fromCourse = $course->course_id;
                $room->toUser = $stu->user_id;
                $room->annouce_id = $annouce->annouce_id;
                $room->save();
            }
            $data = [
                'text' => $annouce->text,
                'course_id' => $course->course_id
            ];
            event(new AnnoucePosted($data));
            return [
                'msg' => 'Sent!',
                'RequestSuccess' => true
            ];
        } else {
            return [
                'msg' => 'Something same error',
                'RequestSuccess' => false
            ];
        }

    }

    public function insGetAnnouces(Request $request) {
        $user = $request->user;
        $annouceList = DB::table('instructor_course')
            ->where('instructor_course.user_id', $user->user_id)
            ->join('annouce_room', 'annouce_room.fromCourse','=', 'instructor_course.course_id')
            ->join('annouce', 'annouce.annouce_id', '=','annouce_room.annouce_id')
            ->orderBy('annouce.updated_at', 'DESC')
            ->distinct('annouce.annouce_id')
            ->select('instructor_course.name','instructor_course.course_id','annouce.annouce_id','annouce.text','annouce.updated_at')
            ->get();
        return [
            'list' => $annouceList
        ];
    }

    public function getCourseList(Request $request) {
        $user = $request->user;
        $list = DB::table('instructor_course')->where('user_id', $user->user_id)
                ->select('name as text', 'course_id as value')
                ->get();
        return [
            'courseList' => $list
        ];
    }

    public function studentGetAnnouces(Request $request) {
        $user = $request->user;

        $annouceList = DB::table('student_course')
                        ->where('student_course.user_id', $user->user_id)
                        ->join('instructor_course', 'instructor_course.course_id','=','student_course.course_id')
                        ->join('annouce_room', 'annouce_room.fromCourse','=', 'student_course.course_id')
                        ->join('annouce', 'annouce.annouce_id', '=','annouce_room.annouce_id')
                        ->orderBy('annouce.updated_at', 'DESC')
                        ->distinct('annouce.annouce_id')
                        ->select('instructor_course.name','instructor_course.course_id','annouce.annouce_id','annouce.text','annouce.updated_at')
                        ->get();

        return [
            'list' => $annouceList
        ];
    }

    public function studentGetAnnoucesByCourse(Request $request) {
        $user = $request->user;

        $annouceList = DB::table('student_course')
            ->where('student_course.user_id', $user->user_id)
            ->where('student_course.course_id', $request->course_id)
            ->join('instructor_course', 'instructor_course.course_id','=','student_course.course_id')
            ->join('annouce_room', 'annouce_room.fromCourse','=', 'student_course.course_id')
            ->join('annouce', 'annouce.annouce_id', '=','annouce_room.annouce_id')
            ->orderBy('annouce.updated_at', 'DESC')
            ->distinct('annouce.annouce_id')
            ->select('instructor_course.name','instructor_course.course_id','annouce.annouce_id','annouce.text','annouce.updated_at')
            ->get();

        return [
            'list' => $annouceList
        ];
    }


    public function getChannelList(Request $request) {
        $user = $request->user;
        $courseList = StudentCourse::where('user_id', $user->user_id)->select('course_id')->get();
        return [
            'list' => $courseList
        ];
    }
}