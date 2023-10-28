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

// Payment Routes for bKash
Route::get('/bkash/payment', [App\Http\Controllers\BkashTokenizePaymentController::class, 'index']);
//first
Route::get('/bkash/create-payment', [App\Http\Controllers\BkashTokenizePaymentController::class, 'createPayment'])->name('bkash-create-payment');
Route::get('/bkash/callback', [App\Http\Controllers\BkashTokenizePaymentController::class, 'callBack'])->name('bkash-callBack');

//search payment
// Route::get('/bkash/search/{trxID}', [App\Http\Controllers\BkashTokenizePaymentController::class, 'searchTnx'])->name('bkash-serach');

// //refund payment routes
// Route::get('/bkash/refund', [App\Http\Controllers\BkashTokenizePaymentController::class, 'refund'])->name('bkash-refund');
// Route::get('/bkash/refund/status', [App\Http\Controllers\BkashTokenizePaymentController::class, 'refundStatus'])->name('bkash-refund-status');
