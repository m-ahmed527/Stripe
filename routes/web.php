<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\ProductController;
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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');


    Route::get('index',[ProductController::class, 'index'])->name('index');
    Route::post('checkout', [ProductController::class, 'checkout'])->name('checkout');
    Route::get('success', [ProductController::class, 'success'])->name('checkout.success');
    Route::get('cancel', [ProductController::class, 'cancel'])->name('checkout.cancel');
    // Route::post('webhook', [ProductController::class, 'webhook'])->name('checkout.webhook');

});

require __DIR__.'/auth.php';
