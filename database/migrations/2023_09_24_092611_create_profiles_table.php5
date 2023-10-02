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
        Schema::create('profiles', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->nullable();
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->text('present_address')->nullable();
            $table->text('present_address_line_2')->nullable();
            $table->string('present_district_city')->nullable();
            $table->string('present_country')->nullable();
            $table->string('address_area')->nullable();
            $table->text('parmanent_address')->nullable();
            $table->text('parmanent_district_city')->nullable();
            $table->text('parmanent_country')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('profiles');
    }
};
