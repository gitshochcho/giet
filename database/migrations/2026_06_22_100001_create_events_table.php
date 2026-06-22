<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('events', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->string('event_type')->default('Seminar');
            $table->string('event_format')->default('In-Person');
            $table->date('event_date');
            $table->string('event_time')->nullable();
            $table->date('event_end_date')->nullable();
            $table->string('venue')->nullable();
            $table->string('venue_address')->nullable();
            $table->string('registration_status')->default('Open');
            $table->date('registration_deadline')->nullable();
            $table->string('registration_fee')->nullable();
            $table->unsignedInteger('registration_capacity')->nullable();
            $table->string('organizer')->nullable();
            $table->string('co_host')->nullable();
            $table->text('about')->nullable();
            $table->text('who_should_attend')->nullable();
            $table->string('enquiry_email')->nullable();
            $table->unsignedInteger('participant_count')->nullable();
            $table->boolean('is_past')->default(false);
            $table->unsignedInteger('sort_order')->default(0);
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('events');
    }
};
