<?php

use App\Livewire\Dashboard;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\TransaksiController;

Route::get('/transaksi/pdf', [TransaksiController::class, 'generatePDF'])->name('transaksi.pdf');


Route::get('/fish-calculator', function () {
    return view('fish-calculator');
})->name('fish-calculator');

Route::get('/fish-farm-sampling-calculator', function () {
    return view('fish-farm-sampling-calculator');
})->name('fish-farm-sampling-calculator');

Route::get('/dashboard', Dashboard::class);
Route::get('/', [HomeController::class, 'index'])->name('home');

Route::get('/transaksi', function () {
    return view('transaksi');
})->name('transaksi');

Route::get('feed-transactions', function () {
    return view('feed-transactions');
})->name('feed-transactions');

Route::get('feed-transactions/create', function () {
    return view('feed-transactions/create');
})->name('/feed-transactions/create');

Route::get('feed-transactions/{id}/edit', function () {
    return view('feed-transactions/{id}/edit');
})->name('feed-transactions/{id}/edit');

Route::get('fish-transactions', function () {
    return view('fish-transactions');
})->name('fish-transactions');

Route::get('fish-transactions/create', function () {
    return view('fish-transactions/create');
})->name('/fish-transactions/create');

Route::get('fish-transactions/{id}/edit', function () {
    return view('fish-transactions/{id}/edit');
})->name('fish-transactions/{id}/edit');

Route::get('medicine-transactions', function () {
    return view('medicine-transactions');
})->name('medicine-transactions');

Route::get('medicine-transactions/create', function () {
    return view('medicine-transactions/create');
})->name('/medicine-transactions/create');

Route::get('medicine-transactions/{id}/edit', function () {
    return view('medicine-transactions/{id}/edit');
})->name('medicine-transactions/{id}/edit');

Route::get('other-need-transactions', function () {
    return view('other-need-transactions');
})->name('other-need-transactions');

Route::get('other-need-transactions/create', function () {
    return view('other-need-transactions/create');
})->name('/other-need-transactions/create');

Route::get('other-need-transactions/{id}/edit', function () {
    return view('other-need-transactions/{id}/edit');
})->name('other-need-transactions/{id}/edit');

