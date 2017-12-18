<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//route Tempat Makan
Route::get('/tempatmakan', 'tempatmakanCtrl@index');
Route::get('/tempatmakan/editform/{id}','tempatmakanCtrl@editform');
Route::post('/tempatmakan/edit/{id}','tempatmakanCtrl@editform');
Route::get('/tempatmakan/delete/{id}','tempatmakanCtrl@DeleteTempatMakan');
Route::post('/tempatmakan/tambah','tempatmakanCtrl@tambah');

