<?php

/*
|--------------------------------------------------------------------------
| Broadcast Channels
|--------------------------------------------------------------------------
|
| Here you may register all of the event broadcasting channels that your
| application supports. The given channel authorization callbacks are
| used to check if an authenticated user can listen to the channel.
|
*/

//use App\InstructorCourse;
//Broadcast::channel('App.User.{id}', function ($user, $id) {
//    return (int) $user->id === (int) $id;
//});
\Log::info('This is channel.php');


Broadcast::channel('InstructorCourse.{course_id}' );

Broadcast::channel('Lesson.{lesson_id}' );