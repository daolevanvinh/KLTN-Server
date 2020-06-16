<?php


namespace App\Http\Controllers;
use App\Category;
use App\InstructorCourse;
use App\PriceTier;
use FFMpeg\FFProbe;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\DB;

class GuestSearchController extends BaseController
{
    public function getPriceTier() {
        return [
            'list' => PriceTier::all()
        ];
    }

    public function getItemSearchFromHeader(Request $request) {
        $arr = [];
        $instrutors = DB::table('user')
                ->where('user.name', 'like', '%'.$request->search.'%')
                ->join('instructor_course','instructor_course.user_id','=','user.user_id')
                ->where('instructor_course.public', 1)
                ->where('instructor_course.disable', 0)
                ->leftJoin('course_comment','course_comment.course_id','=','instructor_course.course_id')
                ->groupBy('user.user_id','user.name','user.app_id')
                ->orderBy(DB::raw('COUNT(course_comment.rating_value)'))
                ->take(5)
                ->select('user.name as text','user.app_id as value')->get();
        foreach ($instrutors as $instrutor) {
            $instrutor->type = 0;
            array_push($arr, $instrutor);
        }

        $courses = DB::table('instructor_course')
            ->where('instructor_course.name', 'like', '%'.$request->search.'%')
            ->where('instructor_course.public', 1)
            ->where('instructor_course.disable', 0)
            ->leftJoin('course_comment','course_comment.course_id','=','instructor_course.course_id')
            ->groupBy('instructor_course.course_id','instructor_course.name')
            ->orderBy(DB::raw('COUNT(course_comment.rating_value)'))
            ->take(5)
            ->select('instructor_course.name as text','instructor_course.course_id as value')->get();
        foreach ($courses as $course) {
            array_push($arr, $course);
        }

        return [
            'list' => $arr
        ];
    }

    public function getItemsSearch(Request $request) {
        $courses = DB::table('instructor_course')
            ->where('instructor_course.public', '=', 1)
            ->join('pricetier', 'pricetier.priceTier_id', '=','instructor_course.priceTier_id')
            ->select('instructor_course.course_id',
                "instructor_course.name",'pricetier.priceTier', 'instructor_course.updated_at')->get();
//        $config = [
//            'ffmpeg.binaries' => './ffmpeg/bin/ffmpeg.exe',
//            'ffprobe.binaries' => './ffmpeg/bin/ffprobe.exe',
//            'timeout' => 360, // The timeout for the underlying process
//            'ffmpeg.threads' => 12, // The number of threads that FFMpeg should use
//        ];
//        $ffprobe = FFProbe::create($config);
        foreach ($courses as $course) {
            $tempCount = DB::table('student_course')
                ->where('course_id', $course->course_id)->select(DB::raw('COUNT("user_id") as count'))->first();
            $tempStar = DB::table('course_comment')
                ->where('course_id', $course->course_id)
                ->select('rating_value')->get();

            $lessonList = DB::table('lesson')->where('course_id','=', $course->course_id)
                ->select('duration')->get();
            $totalTime = 0;
            foreach ($lessonList as $lesson) {
//                $base_video_url = "https://localhost/KLTN-Server/public/uploads/videos".'/'
//                    .$course->course_id.'/'.$lesson->lesson_id.'.mp4';
                $totalTime += $lesson->duration;
                    //$ffprobe->format($base_video_url)->get('duration');
            }

            $course->studentCount = $tempCount->count;
            if($tempStar == null || $tempStar->count() == 0)
                $course->star = 0;
            else
                $course->star = $tempStar->sum('rating_value') / $tempStar->count();


            $course->totalVideo = $lessonList->count();
            $course->totalTime = gmdate('H:i:s', $totalTime);
            $tempCourse = InstructorCourse::with('topicsEnable')->find($course->course_id);
            $course->topic = $tempCourse->topicsEnable;
        }
        return [
            'list' => $courses
        ];
    }
}