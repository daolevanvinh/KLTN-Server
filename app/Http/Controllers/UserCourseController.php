<?php


namespace App\Http\Controllers;

use App\CourseComment;
use App\InstructorCourse;
use App\Lesson;
use App\PriceTier;
use App\StudentCourse;
use App\Topic;
use App\topic_course;
use App\User;
use App\WhatYouLearn;
use Carbon\Carbon;
use FFMpeg\FFProbe;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;


class UserCourseController extends BaseController
{
    public function insertCourse(Request $request) {

        //$path = Storage::disk('public_uploads')->putFileAs('images', $request->file('image'), 'viasdsdnh.png');
        //$path1 = Storage::disk('public_uploads')->putFileAs('videos', $request->file('video'), 'vinhmp4x2.mp4');

        $course = new InstructorCourse($request->all());
        $user = $request->user;
        $course->user_id = $user->user_id;
        $course->save();
        Storage::disk('public_uploads')->putFileAs('images/'.$course->course_id, $request->file('image'), $course->course_id.'.png');

        $topics = json_decode($request->topic_id_list);
        foreach ($topics as $topic) {
            $tp = new topic_course();
            $tp->course_id = $course->course_id;
            $tp->topic_id = $topic;
            $tp->save();
        }

        $whatYouLearn = json_decode($request->whatYouLearn);
        foreach ($whatYouLearn as $learn) {
            $what = new WhatYouLearn();
            $what->learn = $learn->text;
            $what->course_id = $course->course_id;
            $what->save();
        }


        return [
            'RequestSuccess' => true,
            'msg' => 'Create Course Success',
            'list' => InstructorCourse::with('whatYouLearn','priceTier', 'topicsEnable')->where('user_id', $user->user_id)->get()
        ];
    }

    public function getCourses(Request $request) {
        $user = $request->user;
        return ['list' => InstructorCourse::with('whatYouLearn','priceTier', 'topicsEnable')->where('user_id', $user->user_id)->get()];
    }

    public function publicOrUnPublicCourse(Request $request) {
        $user = $request->user;
        $course = InstructorCourse::where('user_id', $user->user_id)->where('course_id', $request->course_id)->first();
        if($course) {
            $public = 0;
            if($course->public == 0) $public = 1;
            $course->public = $public;
            $course->save();
            return [
                'RequestSuccess' => true,
                'msg' => 'Updated'
            ];
        }
        return [
            'msg' => 'Not Find Course',
            'RequestSuccess' => false
        ];
    }

    public function getPriceTier() {
        return [
            'list' => PriceTier::all()
        ];
    }

    function mypageGetCourses($user) {
        $myCourses = DB::table('student_course')
            ->join('instructor_course','instructor_course.course_id', '=', 'student_course.course_id')
            ->join('user', 'user.user_id','=','student_course.user_id')
            ->leftJoin('course_comment', function ($q)  {
                $q->on('user.user_id','=', 'course_comment.user_id')
                    ->on('course_comment.course_id','=', 'student_course.course_id');
            })
            ->where('instructor_course.public','=',1)
            ->where('instructor_course.disable','=',0)
            ->where('user.user_id', $user->user_id)
            ->select( 'instructor_course.course_id','user.name as author','course_comment.course_comment_id as commented'
                ,'description','instructor_course.name', 'instructor_course.updated_at',DB::raw("count('student_course.course_id') as CourseCount"))
            ->orderBy('CourseCount', 'desc')
            ->distinct()
            ->groupBy('instructor_course.updated_at','course_comment.course_comment_id', 'user.name','description','instructor_course.course_id', 'instructor_course.name','student_course.course_id')
            ->get();
        foreach ($myCourses as $course) {
            $wl = DB::table('what_learn_instructor_course')
                ->where('course_id','=',$course->course_id)->get();
            $priceTier = DB::table('instructor_course')
                ->join('pricetier','pricetier.priceTier_id','=','instructor_course.priceTier_id')
                ->where('instructor_course.course_id','=',$course->course_id)
                ->select('priceTier')
                ->first();
            $courseComment = CourseComment::where('course_id', $course->course_id)
                ->select(DB::raw("COUNT('*') as COUNT"))
                ->first();
            $topicEnable = DB::table('topic_course')
                ->where('course_id', $course->course_id)
                ->join('topic', 'topic.topic_id', '=','topic_course.topic_id')
                ->where('topic.disable', false)
                ->select('topic.topic_id','topic.name')
                ->get();

            $course->topicEnable = $topicEnable;
            $course->priceTier = $priceTier->priceTier;
            $course->whatLearn = $wl;
            $course->commentCount = $courseComment->COUNT;
            if($courseComment->COUNT > 0)
                $course->rating = $courseComment->sum('rating_value') / $courseComment->COUNT;
            else
                $course->rating = 0;
        }
        return $myCourses;
    }
    public function studentGetCourses(Request $request) {
        $user = $request->user;

        return [
            'list' => $this->mypageGetCourses($user)
        ];
    }

    public function studentCommentCourse(Request $request) {
        $user = $request->user;
        $stuCourse = StudentCourse::where('course_id', $request->course_id)->where('user_id', $user->user_id)->first();
        if($stuCourse) {
            $comment = new CourseComment($request->all());
            $comment->user_id = $user->user_id;
            $comment->save();
            return [
                'RequestSuccess' => true,
                'msg' => 'Commented!',
                'list' => $this->mypageGetCourses($user)
            ];
        }
        return [
            'RequestSuccess' => false,
            'msg' => 'There are something wrong!'
        ];
    }

    public function addChapter(Request $request) {
        $user = $request->user;
        $course = InstructorCourse::where('user_id', $user->user_id)->where('course_id', $request->course_id)->first();
        if($course) {
            $chapters = json_decode($course->json_info_chapter);
            $id = Carbon::now()->toDateTimeString();
            array_push($chapters, ['value' => $id, 'text' => $request->text ]);
            $course->json_info_chapter = json_encode($chapters);
            $course->save();
            return [
                'msg' => 'Add Success',
                'RequestSuccess' => true,
                'chapters' => $chapters
            ];
        }
        return [
            'msg' => 'There are something wrong'
        ];
    }

    public function updateChapter(Request $request) {
        $user = $request->user;
        $course = InstructorCourse::where('user_id', $user->user_id)->where('course_id', $request->course_id)->first();
        if($course) {
            $course->json_info_chapter = $request->json_info_chapter;
            $course->save();
            return [
                'msg' => 'Updated!',
                'RequestSuccess' => true
            ];
        }
        return [
            'msg' => 'There are something wrong'
        ];
    }

    public function deleteChapter(Request $request) {
        $user = $request->user;
        $course = InstructorCourse::where('user_id', $user->user_id)->where('course_id', $request->course_id)->first();
        if($course) {
            $course->json_info_chapter = $request->json_info_chapter;
            $course->save();
            return [
                'msg' => 'Deleted!',
                'RequestSuccess' => true
            ];
        }
        return [
            'msg' => 'There are something wrong'
        ];
    }

}