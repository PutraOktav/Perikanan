<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('riwayat_samplings', function (Blueprint $table) {
                $table->id();
                $table->unsignedBigInteger('fish_type_id');
                $table->foreign('fish_type_id')->references('id')->on('fish_types')->onDelete('cascade');
                $table->float('area');
                $table->float('total_fish');
                $table->float('biomassa_panen_kg');
                $table->float('total_feed');
                $table->float('zak');
                $table->integer('waktu_panen');
                $table->float('feed_per_day');
                $table->float('biomassa_kg');
                $table->string('nama_pakan');
                $table->float('feed_cost');
                $table->float('fish_cost');
                $table->float('all_cost');
                $table->integer('sampling');
                $table->timestamps();
            });
        
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('riwayat_samplings');
    }
};
