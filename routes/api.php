<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\MoviesController;
use App\Http\Controllers\FavoriteController;
use App\Models\Favorite;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::prefix('/user')->group(function(){
    Route::post('/login', [UserController::class, 'login']);
    Route::post('/register', [UserController::class, 'register']);
    Route::post('/logout', [UserController::class, 'logout']);
    Route::get('/data', [UserController::class, 'GetAuth']);
});

Route::prefix('/movies')->group(function(){
    Route::post('/add', [MoviesController::class, 'store']);
    Route::post('/add/image/{id}', [MoviesController::class, 'upload_image']);
    Route::put('/update/{id}', [MoviesController::class, 'update']);
    Route::delete('/delete/{id}', [MoviesController::class, 'delete']);
    Route::get('/view/all', [MoviesController::class, 'show']);
    Route::get('/view/title/{title}', [MoviesController::class, 'title']);
    Route::get('/view/detail/{id}', [MoviesController::class, 'detail']);
});

Route::prefix('/favorite')->group(function(){
    Route::get('/view/all', [FavoriteController::class, 'show']);
    Route::get('/view/movies/{id}', [FavoriteController::class, 'by_movies']);
    Route::get('/view/user/{id}', [FavoriteController::class, 'by_users']);
    Route::post('/add', [FavoriteController::class, 'store']);
    Route::post('/update/{id}', [FavoriteController::class, 'update']);
    Route::post('/delete/{id}', [FavoriteController::class, 'delete']);
});
