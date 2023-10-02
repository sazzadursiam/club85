<?php

use App\Http\Controllers\AppUser\ProfileController;
use App\Http\Controllers\Auth\UsereAuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('registration', [UsereAuthController::class, 'registration'])->name('user.registration.store');
Route::post('login', [UsereAuthController::class, 'login'])->name('user.login');
Route::group(['middleware' => ['auth:sanctum', 'user_auth']], function () {
    Route::get('profile', [ProfileController::class, 'index']);
    Route::post('profile/update', [ProfileController::class, 'update']);
    Route::get('logout', [UsereAuthController::class, 'logout']);
});
