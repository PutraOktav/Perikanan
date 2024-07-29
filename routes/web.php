<?php

// routes/web.php
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\TransaksiController;
use App\Http\Controllers\ProfileController;
use App\Livewire\Dashboard;

require __DIR__ . '/auth.php';

Route::middleware('auth')->group(function () {
    Route::post('/logout', function () {
        Auth::logout();
        return redirect('/');
    })->name('logout');
});


Route::prefix('fish-calculator')->group(function () {
    Route::get('/', function () {
        return view('fish-calculator');
    })->name('fish-calculator');
});

Route::prefix('fish-sampling')->group(function () {
    Route::get('/', function () {
        return view('fish-farm-sampling-calculator');
    })->name('fish-farm-sampling-calculator');
});

Route::get('/dashboard', Dashboard::class)->name('dashboard');
Route::get('/', [HomeController::class, 'index'])->name('home');

Route::prefix('transaksi')->group(function () {
    Route::get('/', function () {
        return view('transaksi');
    })->name('transaksi');

    Route::get('/pdf', [TransaksiController::class, 'generatePDF'])->name('transaksi.pdf');

    Route::prefix('feed')->group(function () {
        Route::get('/', function () {
            return view('feed-transactions');
        })->name('feed-transactions');

        Route::get('/create', function () {
            return view('feed-transactions/create');
        })->name('feed-transactions.create');

        Route::get('/{id}/edit', function () {
            return view('feed-transactions/{id}/edit');
        })->name('feed-transactions.edit');
    });

    Route::prefix('fish')->group(function () {
        Route::get('/', function () {
            return view('fish-transactions');
        })->name('fish-transactions');

        Route::get('/create', function () {
            return view('fish-transactions/create');
        })->name('fish-transactions.create');

        Route::get('/{id}/edit', function () {
            return view('fish-transactions/{id}/edit');
        })->name('fish-transactions.edit');
    });

    Route::prefix('medicine')->group(function () {
        Route::get('/', function () {
            return view('medicine-transactions');
        })->name('medicine-transactions');

        Route::get('/create', function () {
            return view('medicine-transactions/create');
        })->name('medicine-transactions.create');

        Route::get('/{id}/edit', function () {
            return view('medicine-transactions/{id}/edit');
        })->name('medicine-transactions.edit');
    });

    Route::prefix('other')->group(function () {
        Route::get('/', function () {
            return view('other-need-transactions');
        })->name('other-need-transactions');

        Route::get('/create', function () {
            return view('other-need-transactions/create');
        })->name('other-need-transactions.create');

        Route::get('/{id}/edit', function () {
            return view('other-need-transactions/{id}/edit');
        })->name('other-need-transactions.edit');
    });
});

Route::view('hpp', 'hpp')->name('hpp');

