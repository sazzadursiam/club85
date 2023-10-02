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
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->uuid('uuid');
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password')->nullable();
            $table->string('member_id')->nullable();
            $table->string('name_bangla')->nullable();
            $table->string('id_card_name')->nullable();
            $table->string('nid_passport')->nullable();
            $table->string('phone')->nullable();
            $table->string('secondary_phone')->nullable();
            $table->string('emergency_contact')->nullable();
            $table->string('photo')->nullable();
            $table->string('blood_group')->nullable();
            $table->date('dob')->nullable();

            $table->text('school')->nullable();
            $table->text('college')->nullable();

            $table->text('present_address')->nullable();
            $table->text('present_address_line_2')->nullable();
            $table->string('present_district_city')->nullable();
            $table->string('present_country')->nullable();
            $table->string('address_area')->nullable();
            $table->text('parmanent_address')->nullable();
            $table->text('parmanent_district_city')->nullable();
            $table->text('parmanent_country')->nullable();

            $table->string('spouse_name')->nullable();
            $table->string('spouse_phone')->nullable();
            $table->string('spouse_email')->nullable();

            $table->string('occupation')->nullable();
            $table->text('additional_info_profession')->nullable();
            $table->text('office_location')->nullable();

            $table->tinyInteger('want_visa_prepaid_card')->default(0)->comment('0: No, 1: Yes');
            $table->string('facebook_id')->nullable();

            $table->tinyInteger('user_type')->default(0)->comment('0: App User, 1: Admin');

            $table->rememberToken();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
