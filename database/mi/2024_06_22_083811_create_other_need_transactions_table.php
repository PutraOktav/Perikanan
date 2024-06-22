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
        Schema::create('other_need_transactions', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('other_need_id');
            $table->integer('quantity');
            $table->enum('type', ['in', 'out']);
            $table->timestamps();

            $table->foreign('other_need_id')->references('id')->on('other_needs')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('other_need_transactions');
    }
};
