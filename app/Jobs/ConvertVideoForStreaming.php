<?php

namespace App\Jobs;

use App\Events\VideoProcessing;
use App\Lesson;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\DB;

class ConvertVideoForStreaming implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public $lesson;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($lesson)
    {
        $this->lesson = $lesson;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $format1 = new \FFMpeg\Format\Video\X264('libmp3lame', 'libx264');
        $format1->setKiloBitrate(250);
        $lowBitrate = ($format1);
        $path = "videos/{$this->lesson->course_id}/{$this->lesson->lesson_id}.mp4";
        $savePath = "lives/{$this->lesson->lesson_id}/{$this->lesson->lesson_id}.m3u8";
        \ProtoneMedia\LaravelFFMpeg\Support\FFMpeg::fromDisk('public_uploads')->open($path)
            ->exportForHLS()
            ->setSegmentLength(10) // optional
            ->addFormat($lowBitrate)
            ->save($savePath);
        $ls = Lesson::find($this->lesson->lesson_id);
        $ls->video_processing = 1;
        $ls->save();

    }
}
