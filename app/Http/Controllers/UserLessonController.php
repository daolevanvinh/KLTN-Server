<?php


namespace App\Http\Controllers;

use App\Annouce;
use App\AnnouceRoom;
use App\Events\AnnoucePosted;
use App\InstructorCourse;
use App\Jobs\ConvertVideoForStreaming;
use App\Lesson;
use App\StorageUser;
use App\User;
use FFMpeg\FFProbe;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class UserLessonController extends Controller
{
    public function getLessons(Request $request) {
        $user = $request->user;
        $course = DB::table('instructor_course')
            ->where('user_id', $user->user_id)
            ->where('course_id', $request->course_id)->first();
        if($course) {
            $data =  [
                'list' => $this->getList($request,$course, $user)
            ];
            return response()->json($data,
                200,
                ['Content-type'=> 'application/json; charset=utf-8'],
                JSON_UNESCAPED_UNICODE);
        }
        return [
            'RequestSuccess' => false,
            'msg' => 'There are something wrong!'
        ];
    }

    function sendAnnouce($text, $course_id) {
        $annouce = new Annouce();
        $annouce->text = $text;
        $annouce->save();

        $stuList = DB::table('student_course')
            ->where('course_id', $course_id)
            ->select('user_id')->get();
        foreach ($stuList as $stu) {
            $room = new AnnouceRoom();
            $room->fromCourse = $course_id;
            $room->toUser = $stu->user_id;
            $room->annouce_id = $annouce->annouce_id;
            $room->save();
        }
        $data = [
            'text' => $annouce->text,
            'course_id' => $course_id
        ];
        event(new AnnoucePosted($data));
    }

    function getList(Request $request, $course,$user) {
        $list = DB::table('lesson')
            ->join('instructor_course','lesson.course_id','=','instructor_course.course_id')
            ->leftJoin('lesson_comment','lesson.lesson_id','=','lesson_comment.lesson_id')
            ->where('instructor_course.user_id','=',$user->user_id)
            ->where('lesson.course_id','=', $request->course_id)
            ->where('lesson.disable','=', 0)
            ->groupBy('lesson_comment.lesson_comment_id','lesson.video_processing','lesson.havePreview','lesson.lesson_id','lesson.title', 'lesson.description',
                'lesson.course_id','lesson.updated_at', 'lesson.duration','lesson.json_info_resourse','lesson.chapter_id')
            ->select('lesson.lesson_id','lesson.video_processing','lesson.havePreview','lesson.title', 'lesson.description',
                'lesson.course_id','lesson.updated_at', DB::raw('COUNT(lesson_comment.lesson_comment_id) as commentCount')
                , 'lesson.duration','lesson.json_info_resourse','lesson.chapter_id')->get();


        $tempList = [];
        $chapterList = json_decode($course->json_info_chapter);
        foreach ($list as $item) {
            foreach ($chapterList as  $chapter) {
                if($item->chapter_id == $chapter->value) {
                    $preview = false;
                    if($item->havePreview == 1) $preview = true;
                    array_push($tempList, [
                        "lesson_id" => $item->lesson_id,
                        "title"=> $item->title,
                        "description" => $item->description,
                        "course_id" => $item->course_id,
                        "updated_at" => $item->updated_at,
                        "commentCount" => $item->commentCount,
                        "duration" => $item->duration,
                        "json_info_resourse" => json_decode($item->json_info_resourse),
                        "chapter_id" => $item->chapter_id,
                        'video_processing' => $item->video_processing,
                        "chapter" => [
                            'chapter_id' => $chapter->value,
                            'chapter_text' => $chapter->text
                        ],
                        'havePreview' => $preview
                    ]);
                }
            }
        }

        return $tempList;
    }

    public function insertLesson(Request $request) {
        $user = $request->user;
        $course = InstructorCourse::where('user_id', $user->user_id)->where('course_id', $request->course_id)->first();
        if($course) {
            if($request->hasFile('video')) {
                $lesson = new Lesson($request->all());
                $havePreview = 0;
                if($request->havePreview=='true') $havePreview = 1;
                $lesson->havePreview = $havePreview;
                $lesson->save();
                Storage::disk('public_uploads')
                    ->putFileAs('videos/'.$course->course_id, $request->file('video'),
                        $lesson->lesson_id.'.'.'mp4');

                $storage_user = StorageUser::find($user->user_id);
                $storage_user->used_space += $request->file('video')->getSize();
                $storage_user->save();

                $this->dispatch(new ConvertVideoForStreaming($lesson));

                $json_info_resourse = array();
                for($i =0 ;$i < $request->totalResourse; $i++) {
                    if($request->hasFile('resourse'.$i)) {
                        $name = $request->file('resourse'.$i)->getClientOriginalName();
                        Storage::disk('public_uploads')
                            ->putFileAs('resourses/'.$course->course_id.'/'.$lesson->lesson_id, $request->file('resourse'.$i),
                                $name);
                        $json_info_resourse[] = ['name' => $name];
                    }
                }
                $lesson->json_info_resourse = json_encode($json_info_resourse);

                $lesson->chapter_id = $request->chapter_id;

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
                $lesson->save();


                $data =[
                    'msg' => 'Create Success!',
                    'RequestSuccess' => true,
                    'list' => $this->getList($request,$course,$user)
                ];

                $this->sendAnnouce('Course: '.$course->name.' is upload a new video', $course->course_id);
                return response()->json($data,
                    200,
                    ['Content-type'=> 'application/json; charset=utf-8'],
                    JSON_UNESCAPED_UNICODE);
            } else {
                return [
                    'msg' => 'Invalid File Type!',
                    'RequestSuccess' => false
                ];
            }
        }
        return [
            'msg' => 'There are something wrong',
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
                $havePreview = 0;
                if($request->havePreview=='true') $havePreview = 1;
                $lesson->havePreview = $havePreview;
                if($request->hasFile('video')) {
                    Storage::disk('public_uploads')->delete('videos/'.$course->course_id.'/'.$lesson->lesson_id.'.mp4');
                    Storage::disk('public_uploads')
                        ->putFileAs('videos/'.$course->course_id, $request->file('video'),
                            $lesson->lesson_id.'.'.'mp4');

                    $this->dispatch(new ConvertVideoForStreaming($lesson));
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

                $json_info_resourse = array();
                for($i =0 ;$i < $request->totalResourse; $i++) {
                    if($request->hasFile('resourse'.$i)) {
                        $name = $request->file('resourse'.$i)->getClientOriginalName();
                        Storage::disk('public_uploads')
                            ->putFileAs('resourses/'.$course->course_id.'/'.$lesson->lesson_id, $request->file('resourse'.$i),
                                $name);
                        $json_info_resourse[] = ['name' => $name];
                    } else {
                        if($request->input('resourseNew'.$i) == 'false' && $request->input('resourseDelete'.$i) == 'true') {
                            Storage::disk('public_uploads')
                                ->delete('resourses/'.$course->course_id.'/'.$request->input('resourseName'.$i).'.mp4');
                        } else {
                            $name = $request->input('resourseName'.$i);
                            $json_info_resourse[] = ['name' => $name];
                        }
                    }
                }
                $lesson->json_info_resourse = json_encode($json_info_resourse);

                $lesson->chapter_id = $request->chapter_id;

                $this->sendAnnouce('Course: '.$course->name.' updated', $course->course_id);




                $lesson->save();

                //// data return
                $data =[
                    'msg' => 'Updated!',
                    'RequestSuccess' => true,
                    'list' => $this->getList($request,$course,$user)
                ];
                return response()->json($data,
                    200,
                    ['Content-type'=> 'application/json; charset=utf-8'],
                    JSON_UNESCAPED_UNICODE);
            }
            return response()
                ->json(['msg' => 'There are something wrong!', 'RequestSuccess' => false], 200, ['Content-type'=> 'application/json; charset=utf-8'], JSON_UNESCAPED_UNICODE);
        }
        return [
            'msg' => 'There are something wrong!',
            'RequestSuccess' =>  false
        ];
    }

    public function deleteLesson(Request $request) {
        $user = $request->user;
        $course = InstructorCourse::where('user_id', $user->user_id)->where('course_id', $request->course_id)->first();
        if($course) {
            $lesson = Lesson::find($request->lesson_id);
            $lesson->disable = 1;
            $lesson->save();
            return [
                'RequestSuccess' => true,
                'msg' => 'Deleted',
                'list' => $this->getList($request,$course,$user)
            ];
        }
        return [
            'RequestSuccess' => false,
            'msg' => 'There are something wrong!'
        ];
    }
}