<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::create('fish_transactions', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('fish_id');
            $table->integer('quantity');
            $table->enum('type', ['in', 'out']);
            $table->timestamps();

            $table->foreign('fish_id')->references('id')->on('fishes')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('fish_transactions');
    }
};
