<?php

namespace App\Providers;

use App\Events\AnnoucePosted;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Broadcast;

class BroadcastServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        \Log::info('This is provider');
        Broadcast::routes();
        Broadcast::channel('InstructorCourse.{course_id}', function ($user, $course_id) {
            \Log::info('This is InstructorCourse in provider');
            return false;
        });

    }
}
