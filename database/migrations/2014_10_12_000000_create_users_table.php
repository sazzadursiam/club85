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
            $table->uuid('uuid');
            $table->string('member_id')->nullable();
            $table->string('name');
            $table->string('name_bangla')->nullable();
            $table->string('id_card_name')->nullable();
            $table->string('email')->unique()->nullable();
            $table->string('phone')->nullable();
            $table->string('secondary_phone')->nullable();
            $table->string('nid_passport')->nullable();

            $table->text('present_address')->nullable();
            $table->string('present_district_city')->nullable();
            $table->string('present_country')->nullable();

            $table->text('parmanent_address')->nullable();
            $table->text('parmanent_district_city')->nullable();
            $table->text('parmanent_country')->nullable();

            $table->date('dob')->nullable();
            $table->string('blood_group')->nullable();

            $table->string('spouse_name')->nullable();
            $table->string('spouse_phone')->nullable();
            $table->string('spouse_email')->nullable();

            $table->string('children_1_name')->nullable();
            $table->string('children_2_name')->nullable();
            $table->string('children_3_name')->nullable();
            $table->string('children_4_name')->nullable();

            $table->string('school')->nullable();
            $table->string('school_district')->nullable();
            $table->string('college')->nullable();
            $table->string('college_district')->nullable();

            $table->string('occupation')->nullable();
            $table->text('additional_info_profession')->nullable();
            $table->string('office_name')->nullable();
            $table->text('office_location')->nullable();

            $table->string('facebook_id')->nullable();
            $table->string('instagram_id')->nullable();

            $table->string('bkash_payment_ref')->nullable();
            $table->string('photo')->nullable();

            $table->string('qr_code')->nullable();
            $table->string('id_card_file')->nullable();

            $table->tinyInteger('user_type')->default(0)->comment('0: App User, 1: Admin');

            $table->timestamp('email_verified_at')->nullable();
            $table->string('password')->nullable();

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
