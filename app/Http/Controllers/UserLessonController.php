<?php


namespace App\Http\Controllers;

use App\InstructorCourse;
use App\Lesson;
use FFMpeg\FFProbe;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class UserLessonController extends BaseController
{
    public function getLessons(Request $request) {
        $user = $request->user;
        $list = DB::table('lesson')
            ->join('instructor_course','lesson.course_id','=','instructor_course.course_id')
            ->leftJoin('lesson_comment','lesson.lesson_id','=','lesson_comment.lesson_id')
            ->where('instructor_course.user_id','=',$user->user_id)
            ->where('lesson.course_id','=', $request->course_id)
            ->groupBy('lesson_comment.lesson_comment_id','lesson.lesson_id','lesson.title', 'lesson.description',
                'lesson.course_id','lesson.updated_at', 'lesson.duration')
            ->select('lesson.lesson_id','lesson.title', 'lesson.description',
                'lesson.course_id','lesson.updated_at', DB::raw('COUNT(lesson_comment.lesson_comment_id) as commentCount')
                , 'lesson.duration')->get();
        $data =  [
            'list' => $list
        ];
        return response()->json($data,
            200,
            ['Content-type'=> 'application/json; charset=utf-8'],
            JSON_UNESCAPED_UNICODE);
    }

    public function insertLesson(Request $request) {
        $user = $request->user;
        $course = InstructorCourse::where('user_id', $user->user_id)->where('course_id', $request->course_id)->first();
        if($course) {
            $config = [
                'ffmpeg.binaries' => './ffmpeg/bin/ffmpeg.exe',
                'ffprobe.binaries' => './ffmpeg/bin/ffprobe.exe',
                'timeout' => 3600, // The timeout for the underlying process
                'ffmpeg.threads' => 12, // The number of threads that FFMpeg should use
            ];


            $lesson = new Lesson($request->all());
            $lesson->save();
            Storage::disk('public_uploads')
                ->putFileAs('videos/'.$course->course_id, $request->file('video'),
                    $lesson->lesson_id.'.'.'mp4');
            $ffprobe = FFProbe::create($config);
            $base_video_url = "https://localhost/KLTN-Server/public/uploads/videos".'/'
                .$course->course_id.'/'.$lesson->lesson_id.'.mp4';
            $lesson->duration =
                $ffprobe->format($base_video_url)->get('duration');
            $lesson->save();

            $list = DB::table('lesson')
                ->join('instructor_course','lesson.course_id','=','instructor_course.course_id')
                ->leftJoin('lesson_comment','lesson.lesson_id','=','lesson_comment.lesson_id')
                ->where('instructor_course.user_id','=',$user->user_id)
                ->where('lesson.course_id','=', $request->course_id)
                ->groupBy('lesson_comment.lesson_comment_id','lesson.lesson_id','lesson.title', 'lesson.description',
                    'lesson.course_id','lesson.updated_at', 'lesson.duration')
                ->select('lesson.lesson_id','lesson.title', 'lesson.description',
                    'lesson.course_id','lesson.updated_at', DB::raw('COUNT(lesson_comment.lesson_comment_id) as commentCount'), 'lesson.duration')->get();
            $data =[
                'msg' => 'Thêm thành công!',
                'RequestSuccess' => true,
                'list' => $list
            ];
            return response()->json($data,
                    200,
                    ['Content-type'=> 'application/json; charset=utf-8'],
                    JSON_UNESCAPED_UNICODE);
        }
        return [
            'msg' => 'Không tìm thấy khóa học của bạn',
            'RequestSuccess' =>  false
        ];
    }

    public function updateLesson(Request $request) {
        $user = $request->user;
        $course = InstructorCourse::where('user_id', $user->user_id)->where('course_id', $request->course_id)->first();
        if($course) {
            $lesson = Lesson::find($request->lesson_id);
            if($lesson) {
                $lesson->title = $request->title;
                $lesson->description = $request->description;
                if($request->hasFile('video')) {
                    Storage::disk('public_uploads')->delete('videos/'.$course->course_id.'/'.$lesson->lesson_id.'.mp4');
                    Storage::disk('public_uploads')
                        ->putFileAs('videos/'.$course->course_id, $request->file('video'),
                            $lesson->lesson_id.'.'.'mp4');
                    $config = [
                        'ffmpeg.binaries' => './ffmpeg/bin/ffmpeg.exe',
                        'ffprobe.binaries' => './ffmpeg/bin/ffprobe.exe',
                        'timeout' => 3600, // The timeout for the underlying process
                        'ffmpeg.threads' => 12, // The number of threads that FFMpeg should use
                    ];
                    $ffprobe = FFProbe::create($config);
                    $base_video_url = "https://localhost/KLTN-Server/public/uploads/videos".'/'
                        .$course->course_id.'/'.$lesson->lesson_id.'.mp4';
                    $lesson->duration =
                        $ffprobe->format($base_video_url)->get('duration');
                }

                $lesson->save();

                //// data return
                $list = DB::table('lesson')
                    ->join('instructor_course','lesson.course_id','=','instructor_course.course_id')
                    ->leftJoin('lesson_comment','lesson.lesson_id','=','lesson_comment.lesson_id')
                    ->where('instructor_course.user_id','=',$user->user_id)
                    ->where('lesson.course_id','=', $request->course_id)
                    ->groupBy('lesson_comment.lesson_comment_id','lesson.lesson_id','lesson.title', 'lesson.description',
                        'lesson.course_id','lesson.updated_at', 'lesson.duration')
                    ->select('lesson.lesson_id','lesson.title', 'lesson.description',
                        'lesson.course_id','lesson.updated_at', 'lesson.duration', DB::raw('COUNT(lesson_comment.lesson_comment_id) as commentCount'))->get();
                $data =[
                    'msg' => 'Chỉnh sửa thành công!',
                    'RequestSuccess' => true,
                    'list' => $list
                ];
                return response()->json($data,
                    200,
                    ['Content-type'=> 'application/json; charset=utf-8'],
                    JSON_UNESCAPED_UNICODE);
            }
            return response()
                ->json(['msg' => 'Không tìm thấy bài học', 'RequestSuccess' => false], 200, ['Content-type'=> 'application/json; charset=utf-8'], JSON_UNESCAPED_UNICODE);
        }
        return [
            'msg' => 'Không tìm thấy khóa học của bạn',
            'RequestSuccess' =>  false
        ];
    }

}