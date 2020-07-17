<?php

return [
    'ffmpeg' => [
        'binaries' => 'C:/ffmpeg/bin/ffmpeg.exe',//env('FFMPEG_BINARIES', 'ffmpeg'),
        'threads'  => 12,
    ],

    'ffprobe' => [
        'binaries' => 'C:/ffmpeg/bin/ffprobe.exe',//env('FFPROBE_BINARIES', 'ffprobe'),
    ],

    'timeout' => 3600,

    'enable_logging' => true,
];
