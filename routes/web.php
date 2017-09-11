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

Route::get('/uploads/create', function () {
    return 'Hello World';
});

Route::get('/', 'PagesController@index');
Route::get('/index', 'PagesController@index');
Route::get('/raports', 'PagesController@raports');

Route::get('/uploads','UploadsController@index');
//Route::get('/uploads/create','UploadsController@create');
//Route::resource('/uploads', 'UploadsController');


//Route::get('/companie', 'PagesController@companie');
//Route::get('/contact', 'PagesController@contact');

Route::get('importExport', 'ImportController@importExport');
Route::post('downloadExcel', 'CompareController@downloadExcel');
Route::post('importExcelmol', 'ImportController@importExcelmol');
Route::post('importExcelviab', 'ImportController@importExcelviab');
Route::post('importExcelcopyofviab', 'ImportController@importExcelcopyofviab');
Route::post('importExcelshell', 'ImportController@importExcelshell');

//these routes have to be added manually - no resource used
Route::get('/compare', 'CompareController@index');
Route::post('/view', 'CompareController@compare');
Route::post('/result', 'CompareController@result');
Route::post('/final', 'CompareController@final');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
