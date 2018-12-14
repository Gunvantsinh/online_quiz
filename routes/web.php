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

Route::get('/', function () 
{
    return view('welcome');
});

Auth::routes();
//Backend routes
Route::get('/home', 'HomeController@index')->name('home');
Route::delete('delete/{id}', 'HomeController@delete')->name('delete');
Route::get('question/add', 'HomeController@add')->name('add');
Route::POST('question/insert', 'questionController@insert')->name('insert');
Route::get('question/show', 'HomeController@question_list')->name('show');
Route::get('question_data', 'HomeController@question_data')->name('question_data');
Route::get('question/candidate_data', 'HomeController@candidate_data')->name('candidate_data');
Route::get('question/edit/{id}', 'questionController@edit')->name('question/edit');
Route::PUT('question/update/{id}', 'questionController@update')->name('question/update');
Route::delete('question/delete/{id}', 'questionController@delete')->name('question/delete');
Route::get('question/result', 'questionController@result')->name('result');
Route::get('candidate/result/{id}','HomeController@show')->name('candidate/result');
Route::get('table/candidate_result/{id}','HomeController@candidate_result')->name('candidate_result');
Route::get('result/display','HomeController@result_display')->name('result_display');
Route::get('result_datatable_display','HomeController@result_datatable_display')->name('result_datatable_display');
//Frontend routes
Route::get('question/success','questionController@question_success')->name('question/success');
Route::get('question/{id}','questionController@question_show')->name('question_show');
Route::POST('question/{id}','questionController@question_submit')->name('question_submit');
Route::POST('candidate/add','questionController@candidate_add')->name('candidate/add');
