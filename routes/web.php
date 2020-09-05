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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes(['verify' => true]);


Route::get('/article', 'WebController@article');
Route::get('/transaksi', 'TransaksiController@transaksi');
Route::get('/transaksi/tambah','TransaksiController@tambah');
Route::post('/transaksi/create','TransaksiController@create');
Route::get('/transaksi/{id}/edit','TransaksiController@edit');
Route::post('/transaksi/{id}/update','TransaksiController@update');
Route::get('/transaksi/{id}/delete','TransaksiController@delete');
Route::get('/transaksi/{id}/detail','TransaksiController@detail');
Route::get('/transaksi/cari','TransaksiController@cari');
Route::get('/pelanggan', 'PelangganController@pelanggan');
Route::get('/pelanggan/tambah','PelangganController@tambah');
Route::post('/pelanggan/create','PelangganController@create');
Route::get('/pelanggan/{id}/edit','PelangganController@edit');
Route::post('/pelanggan/{id}/update','PelangganController@update');
Route::get('/pelanggan/{id}/delete','PelangganController@delete');
Route::get('/pelanggan/{id}/detail','PelangganController@detail');
Route::get('/tarif', 'TarifController@tarif');
Route::get('/tarif/tambah','TarifController@tambah');
Route::post('/tarif/create','TarifController@create');
Route::get('/tarif/{id}/edit','TarifController@edit');
Route::post('/tarif/{id}/update','TarifController@update');
Route::get('/tarif/{id}/delete','TarifController@delete');
Route::get('/tarif/{id}/detail','TarifController@detail');
Route::get('/sopir', 'SopirController@sopir');
Route::get('/sopir/tambah','SopirController@tambah');
Route::post('/sopir/create','SopirController@create');
Route::get('/sopir/{id}/edit','SopirController@edit');
Route::post('/sopir/{id}/update','SopirController@update');
Route::get('/sopir/{id}/delete','SopirController@delete');
Route::get('/sopir/{id}/detail','SopirController@detail');
Route::get('/kendaraan', 'KendaraanController@kendaraan');
Route::get('/kendaraan/tambah','KendaraanController@tambah');
Route::post('/kendaraan/create','KendaraanController@create');
Route::get('/kendaraan/{id}/edit','KendaraanController@edit');
Route::get('/kendaraan/{id}/detail','KendaraanController@detail');
Route::post('/kendaraan/{id}/update','KendaraanController@update');
Route::get('/kendaraan/{id}/delete','KendaraanController@delete');
Route::get('/kendaraan/cari','KendaraanController@cari');


Route::get('/dashboard', 'DashboardController@dashboard');

Route::get('/', 'HomeAwalController@homeawal');
Route::get('/menu', 'HomeAwalController@menu');
Route::get('/about', 'HomeAwalController@about');
Route::get('/profile', 'HomeAwalController@profile');
Route::get('/homeawal/{id}/detail', 'HomeAwalController@detail');
Route::get('/halamansopir', 'HalamanSopirController@halamansopir');
Route::get('/home', 'HomeController@index')->name('home');
Route::get('change-password', 'ChangePasswordController@index');
Route::post('change-password', 'ChangePasswordController@store')->name('change.password');
// Route::get('/admin', function(){
//     return view('admin');
// })->name('adminpage');
// Route::get('admin-login','Auth\AdminLoginController@showLoginForm');
// Route::post('admin-login', ['as' => 'admin-login', 'uses' => 'Auth\AdminLoginController@login']);
// Route::get('admin-register','Auth\AdminLoginController@showRegisterPage');
// Route::post('admin-register', 'Auth\AdminLoginController@register')->name('admin.register');
Route::get('auth/{provider}', 'Auth\SocialiteController@redirectToProvider');
Route::get('auth/{provider}/callback', 'Auth\SocialiteController@handleProviderCallback');

Route::get('change-password', 'ChangePasswordController@index');
Route::post('change-password', 'ChangePasswordController@store')->name('change.password');

