<?php

use Illuminate\Support\Facades\Route;

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




Auth::routes();

Route::get('auth/google', 'Auth\GoogleController@redirectToGoogle');
Route::get('auth/google/callback', 'Auth\GoogleController@handleGoogleCallback');

Route::get('/', 'HomeController@index')->name('home');
Route::get('/home', 'HomeController@index')->name('home');
Route::get('/get_all_courses', 'HomeController@getAllCourses');
Route::get('/get_last_phase', 'HomeController@getLastPhase');

Route::get('/course/{course_id}/phase/{phase}/review/{review}', 'CourseController@index');
Route::post('/get_selected_course_info', 'CourseController@getSelectedCourseInfo');

Route::get('/support_docs/{id}', 'SupportDocumentsController@index');
