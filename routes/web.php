<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use App\Cart;

Route::get('/', function () {
    return view('welcome');
});

Route::match(['get', 'post'], '/botman', 'BotManController@handle');
Route::get('/botman/tinker', 'BotManController@tinker');



Route::post('/user', 'UserController@register');
Route::post('/userLogin', 'UserController@login');


Route::get('/admin', 'AdminController@register');
Route::post('/adminLogin', 'AdminController@login');

// guest

Route::get('/guest/category','GuestController@getCategory');
Route::get('/guest/category/topCourse', 'GuestController@getCategoryWithTopCourse');
Route::get('/guest/bot', 'GuestChatBotController@chatBot');

Route::get('/guest/profileview', 'GuestProfileViewController@getProfile');
Route::get('/guest/search', 'GuestSearchController@getItemsSearch');
Route::get('/guest/search/header', 'GuestSearchController@getItemSearchFromHeader');

Route::get('/user/forgotPassword', 'UserController@forgotPassword');
Route::post('/user/forgotPassword', 'UserController@afterForgotPassword');

Route::get('/customerVerify', function (\Illuminate\Http\Request $request) {
    return $request->all();
})->name('customerVerify');


//hung
//Route::get('/guest/course/getlistcomment','GuestDetailCourseController@getListComment');
//Route::get('/guest/course/gettop5course','GuestDetailCourseController@getTop5CourseByTopic');
//Route::get('/guest/course/getdetailcourse','GuestDetailCourseController@getDetailCourse');
//Route::get('/guest/course/getinfoinstructor','GuestDetailCourseController@getInfoInstructor');


Route::get('/guest/course','GuestDetailCourseController@getDetailCourse');

Route::group(['middleware' => 'jwt.myAuth'], function () {
    Route::post('/broadcasting/auth', 'AnnouceController@Auth');
    Route::get('/broadcasting/auth', 'AnnouceController@Auth');
    Route::options('/broadcasting/auth', 'AnnouceController@Auth');


    Route::get('/getUser', 'UserController@getUserInfo');
    Route::get('/test', function (\Illuminate\Http\Request $request) {
        return 'ahihi';
    });

    Route::patch('/admin/category', 'CategoryController@updateCategory');
    Route::get('/admin/category', 'CategoryController@getCategories');
    Route::put('/admin/category', 'CategoryController@getCategory');
    Route::post('/admin/category', 'CategoryController@insertCategory');
    Route::delete('/admin/category', 'CategoryController@deleteCategory');
    //
    Route::patch('/admin/topic', 'TopicController@updateTopic');
    Route::get('/admin/topic', 'TopicController@getTopics');
    Route::put('/admin/topic', 'TopicController@getTopic');
    Route::post('/admin/topic', 'TopicController@insertTopic');
    Route::delete('/admin/topic', 'TopicController@deleteTopic');

    Route::post('/admin/bot/answer', "ChatBotController@insertAnswerBot");
    Route::patch('/admin/bot/answer', "ChatBotController@updateAnswerBot");
    Route::delete('/admin/bot/answer', "ChatBotController@deleteAnswerBot");

    Route::get('/admin/bot/question', "ChatBotController@getQuestionBots");
    Route::post('/admin/bot/question', "ChatBotController@insertQuestionBot");
    Route::patch('/admin/bot/question', "ChatBotController@updateQuestionBot");
    Route::delete('/admin/bot/question', "ChatBotController@deleteQuestionBot");

    Route::get('/admin/bot/message', "ChatBotController@getMessageBots");
    Route::post('/admin/bot/message', "ChatBotController@insertMessageBot");
    Route::patch('/admin/bot/message', "ChatBotController@updateMessageBot");
    Route::delete('/admin/bot/message', "ChatBotController@deleteMessageBot");

    Route::get('/admin/storagePackage','AdminStoragePackage@getStoragePackageList');
    Route::post('/admin/storagePackage','AdminStoragePackage@insertStoragePackage');
    Route::patch('/admin/storagePackage','AdminStoragePackage@updateStoragePackage');
    Route::delete('/admin/storagePackage','AdminStoragePackage@deleteStoragePackage');

    // user role

    Route::get('/user','UserController@getUserInfo');
    Route::patch('/user/edit/password', 'UserController@changePassword');
    Route::post('/user/edit/infor','UserController@editInfor');
    Route::patch('/user/edit/profile', 'UserController@editProfile');


    Route::get('/user/category', 'UserCategoryController@getCategories');
    Route::post('/user/course', 'UserCourseController@insertCourse');
    Route::get('/user/course', 'UserCourseController@getCourses');
    Route::patch('/user/course', 'UserCourseController@publicOrUnPublicCourse');
    Route::get('/user/course/priceTier', 'UserCourseController@getPriceTier');
    Route::post('/user/courseComment', 'UserCourseController@studentCommentCourse');
    Route::get('/user/storagePack', 'UserStoragePackage@getStorePackgetList');

    Route::get('/user/storageUser', 'UserStorageUser@getStoreUserList');
    Route::get('/user/statistics', 'UserStorageUser@getMyCourse');

    Route::get('/user/lesson', 'UserLessonController@getLessons');
    Route::post('/user/lesson', 'UserLessonController@insertLesson');
    Route::post('/user/lesson/edit', 'UserLessonController@updateLesson');
    Route::delete('/user/lesson', 'UserLessonController@deleteLesson');

    Route::get('/user/courseLike', 'UserCourseLikeController@getLikeList');
    Route::post('/user/courseLike', 'UserCourseLikeController@likeOrUnlike');

    Route::get('/user/cart', 'UserCartController@getCarts');
    Route::post('/user/cart', 'UserCartController@addToCart');
    Route::delete('/user/cart', 'UserCartController@deleteCarts');



    Route::get('/user/payment', 'VNPayController@create');
    Route::get('/user/storagePackage/payment', 'VNPayController@createForStoragePackage');
    Route::get('/user/student/courses', 'UserCourseController@studentGetCourses');
    Route::get('/user/student/lesson', 'UserStudentLessonController@getLesson');
    Route::get('/user/student/lesson/comment', 'UserStudentLessonController@getComments');
    Route::post('/user/student/lesson/comment', 'UserStudentLessonController@insertComment');
    Route::delete('/user/student/lesson/comment', 'UserStudentLessonController@deleteComment');

    ////
    Route::post('/messages', 'UserChatController@message');
    Route::get('/user/message/instructor', 'UserChatController@getMyInstructors');

    Route::post('/user/course/insertcomment','GuestDetailCourseController@insertComment');
    Route::post('/user/addtocart','UserCartController@addToCart');
    Route::post('/user/getcart','UserCartController@getCarts');

    //
    Route::get('/user/history/transaction' , 'UserHistoryTransaction@getHistoryTransaction');


    Route::post('/user/annouce', 'AnnouceController@sendAnnouce');
    Route::get('/user/annouce', 'AnnouceController@insGetAnnouces');
    Route::get('/stu/annouce', 'AnnouceController@studentGetAnnouces');
    Route::get('/stu/annouce/course', 'AnnouceController@studentGetAnnoucesByCourse');
    Route::get('/user/channel', 'AnnouceController@getChannelList');
    Route::get('/user/channel/course', 'AnnouceController@getCourseList');


    Route::post('/user/chapter', 'UserCourseController@addChapter');
    Route::patch('/user/chapter', 'UserCourseController@updateChapter');
    Route::delete('/user/chapter', 'UserCourseController@deleteChapter');



    //hung
    Route::get("/admin/users","AdminUsersController@getListUsers");
    Route::post("/admin/users","AdminUsersController@insertUser");
    Route::delete("/admin/users","AdminUsersController@deleteUser");
    Route::patch('/admin/users','AdminUsersController@activeUser');
    Route::put("/admin/users","AdminUsersController@editUser");

    Route::get('/admin','AdminController@getAdminInfo');
    Route::post('/admin/edit/info','AdminController@editAdminInfo');
    Route::patch('/admin/changepassword','AdminController@adminChangePassword');
});



Route::get('/messages', 'UserChatController@getMessage');


Route::get('/redirect/{social}', 'SocialAuthController@redirect');
Route::get('/callback/{social}', 'SocialAuthController@callback');

Route::get('/callbackVPN', 'VNPayController@callback');

Route::get('/storagePackage/callbackVPN', 'VNPayController@callbackForStoragePackage');

//hung
Route::get('/admin/detailstatistical',"AdminStatisticalController@getDetailInfoStatisticalPer");
Route::get('/admin/statistical',"AdminStatisticalController@getInfoStatistical");

Route::get('/admin/coursestatistical',"AdminStatisticalController@getInfoCourseSatistical");
Route::get('/admin/getlistcourse',"AdminCourseController@getListCourse");
Route::delete('/admin/unactivecourse',"AdminCourseController@unactiveCourse");
Route::get('/admin/activecourse',"AdminCourseController@activeCourse");

Route::get('/admin/getlistpricetier','AdminPriceController@getListPriceTier');
Route::delete('/admin/deletepricetier','AdminPriceController@deletePricetier');
Route::get("/admin/insertpricetier","AdminPriceController@insertPricetier");

Route::get('/admin/getlistcoursebyprice','AdminPriceController@getListCoursebyPrice');

Route::get('/admin/getlistmoneytype','AdminPriceController@getListMoneytype');

Route::get('/admin/getlistcoursebymoneytype','AdminPriceController@getListCoursebyMoneytype');
Route::delete('/admin/deletemoneytype','AdminPriceController@deleteMoneytype');
Route::get('/admin/insertmoneytype','AdminPriceController@insertMoneytype');

//
//
//Route::get('/test', 'Test@store');
//
//Route::get('/test1', function () {
//    $format = new \FFMpeg\Format\Video\X264('libmp3lame', 'libx264');
//    $format->setKiloBitrate(250);
//    $lowBitrate = ($format);
//    $format->setKiloBitrate(500);
//    $midBitrate = $format;
//    $format->setKiloBitrate(1000);
//    $highBitrate = $format;
//    \ProtoneMedia\LaravelFFMpeg\Support\FFMpeg::fromDisk('public_uploads')->open('155.mp4')
//        ->exportForHLS()
//        ->setSegmentLength(60) // optional
//        ->addFormat($lowBitrate)
//        ->save('adaptive_steve.m3u8');
//
//    return 'success';
//});