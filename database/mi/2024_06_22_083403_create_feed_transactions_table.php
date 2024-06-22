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
        Schema::create('feed_transactions', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('feed_id');
            $table->integer('quantity');
            $table->enum('type', ['in', 'out']);
            $table->timestamps();

            $table->foreign('feed_id')->references('id')->on('feeds')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('feed_transactions');
    }
};
