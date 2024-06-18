<?php

use App\Livewire\Dashboard;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;

Route::get('/fish-calculator', function () {
    return view('fish-calculator');
})->name('fish-calculator');

Route::get('/fish-farm-sampling-calculator', function () {
    return view('fish-farm-sampling-calculator');
})->name('fish-farm-sampling-calculator');

Route::get('/dashboard', Dashboard::class);
Route::get('/', [HomeController::class, 'index'])->name('home');
