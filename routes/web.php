<?php

use App\Http\Controllers\AppUser\MasterController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('club-members/{uuid}', [MasterController::class, 'showInfo']);
// Route::get('get-my-id', [MasterController::class, 'index']);
