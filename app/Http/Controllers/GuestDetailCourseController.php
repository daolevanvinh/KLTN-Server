<?php


namespace App\Http\Controllers;
use App\InstructorCourse;
use App\CourseComment;
use App\Lesson;
use App\User;
use App\StudentCourse;
use FFMpeg\FFProbe;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Config;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\Storage;

class GuestDetailCourseController extends BaseController
{
    function __construct(){
        Config::set('jwt.user',User::class);
        Config::set('jwt.indentifier','user_id');
        Config::set('auth.providers',['users'=>[
            'driver'=> 'eloquent',
            'model'=>User::class,
        ]]);
    }


    public function getDetailCourse(Request $request) {
        $course = InstructorCourse
            ::with('whatYouLearn', 'priceTier', 'instructor.ins_courses.course_comment', 'topicsEnable', 'course_comment.author')
            ->where('course_id', $request->course_id)
            ->where('disable', 0)
            ->where('public', 1)
            ->first();
        if($course) {
//            $config = [
//                'ffmpeg.binaries' => './ffmpeg/bin/ffmpeg.exe',
//                'ffprobe.binaries' => './ffmpeg/bin/ffprobe.exe',
//                'timeout' => 3600, // The timeout for the underlying process
//                'ffmpeg.threads' => 12, // The number of threads that FFMpeg should use
//            ];
//            $ffprobe = FFProbe::create($config);

            $chapterList = json_decode($course->json_info_chapter);
            $totalDurations = 0;
            foreach ($chapterList as $chapter) {
                $lessonList = DB::table('lesson')
                    ->where('chapter_id', '=', $chapter->value)
                    ->where('disable', '=',0)
                    ->select('title', 'duration', 'havePreview','lesson_id')
                    ->get();
                $tempLessonList = [];
                $durations = 0;
                foreach ($lessonList as $index => $ls) {
                    $temp = [
                        'lesson_id' => $ls->lesson_id,
                        'title' => $ls->title,
                        'duration' => gmdate('H:i:s', $ls->duration),
                        'havePreview' => $ls->havePreview
                    ];
                    $durations += $ls->duration;
                    array_push($tempLessonList, $temp);
                }
                $totalDurations += $durations;
                $chapter->duration = gmdate('H:i:s', $durations);
                $chapter->lessonList = $tempLessonList;
            }

            $topics = DB::table('topic_course')
                        ->where('course_id', $course->course_id)->get();
            $ArrayCourse = [];
            foreach ($topics as $topic) {
                $courses = DB::table('topic_course')
                                ->where('topic_course.topic_id', $topic->topic_id)
                                ->join('instructor_course','instructor_course.course_id', '=','topic_course.course_id')
                                ->join('course_like','course_like.course_id','=','instructor_course.course_id')
                                ->join('pricetier', 'pricetier.priceTier_id', '=','instructor_course.priceTier_id')
                                ->groupBy('course_like.course_id', "instructor_course.name", 'pricetier.priceTier','instructor_course.updated_at')
                                ->orderBy(DB::raw("COUNT(course_like.user_id)"),'desc')
                                ->where('instructor_course.course_id','<>',$course->course_id)
                                ->select('course_like.course_id', DB::raw("COUNT(course_like.user_id) as likeCount"),
                                    "instructor_course.name",'pricetier.priceTier', 'instructor_course.updated_at')->get();
                foreach ($courses as $cs) {
                    $flag = true;
                    foreach ($ArrayCourse as $myCourse) {
                        if($cs->course_id == $myCourse->course_id || $cs->course_id == $course->course_id) {
                            $flag = false;
                            break;
                        }
                    }
                    if($flag) {
                        $tempCount = DB::table('student_course')
                            ->where('course_id', $cs->course_id)->select(DB::raw('COUNT("user_id") as count'))->first();
                        $tempStar = DB::table('course_comment')
                            ->where('course_id', $cs->course_id)
                            ->select('rating_value')->get();

                        $lessonList = DB::table('lesson')->where('disable','=',0)->where('course_id','=', $cs->course_id)->get();
                        $totalTime = 0;
                        //   /app/vendor/ffmpeg_bundle/ffmpeg/bin/ffmpeg
                        //   /app/vendor/ffmpeg_bundle/ffmpeg/bin/ffprobe

//
//                        'ffmpeg.binaries' => 'ffmpeg/bin/ffmpeg.exe',
//                            'ffprobe.binaries' => 'ffmpeg/bin/ffprobe.exe',

                        foreach ($lessonList as $lesson) {
                            $base_video_url = "https://localhost/KLTN-Server/public/uploads/videos".'/'
                                .$cs->course_id.'/'.$lesson->lesson_id.'.mp4';
                            $totalTime += $lesson->duration;
                                //$ffprobe->format($base_video_url)->get('duration');
                        }

                        $cs->studentCount = $tempCount->count;
                        if($tempStar == null || $tempStar->count() == 0)
                            $cs->star = 0;
                        else
                            $cs->star = $tempStar->sum('rating_value') / $tempStar->count();
                        $cs->totalVideo = $lessonList->count();
                        $cs->totalTime = gmdate('H:i:s', $totalTime);
                        array_push($ArrayCourse, $cs);
                    }
                }
            }
            $temp = collect($ArrayCourse)->sortByDesc('likeCount');
            $course->top5 = json_decode($temp->take(5));
            $course->whatLearn =$course->whatYouLearn($course);
            $course->priceTier = $course->priceTier($course);
            $course->chapterList = $chapterList;
            $course->totalDurations = gmdate('H:i:s', $totalDurations);
            return [
                'object' => $course,
                'RequestSuccess' => true
            ];
        }
        return [
            'msg' => 'Không tìm thấy khóa học',
            'RequestSuccess' => false
        ];
    }

    public function insertComment(Request $request){
        $user = $request->user;

        $comment = new CourseComment($request->all());
        $user_id = $user->user_id;
        $course_id = $request->course_id;
        $text_comment = $request->textComment;
        $ratingValue = $request->ratingValue;

        $comment->user_id = $user_id;
        $comment->comment = $text_comment;
        $comment->course_id = $course_id;
        $comment->rating_value = $ratingValue;
        $comment->save();
        return [
            'msg'=>"Thanks for your previews"
        ];
    }
    public function getListComment(Request $request){
        $listComment = DB::table('course_comment')->where('course_id',$request->course_id)->get();
        return [
            'RequestSuccess' => true,
            'list' => $listComment
        ];
    }
}
