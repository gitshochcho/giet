<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('insights', function (Blueprint $table) {
            $table->json('topics')->nullable()->after('publish_links');
            $table->unsignedInteger('page_count')->nullable()->after('topics');
            $table->unsignedInteger('read_minutes')->nullable()->after('page_count');
            $table->string('language', 50)->default('English')->after('read_minutes');
            $table->boolean('is_featured')->default(false)->after('language');
            $table->string('duration', 20)->nullable()->after('is_featured');
            $table->unsignedInteger('attendee_count')->nullable()->after('duration');
        });
    }

    public function down(): void
    {
        Schema::table('insights', function (Blueprint $table) {
            $table->dropColumn(['topics', 'page_count', 'read_minutes', 'language', 'is_featured', 'duration', 'attendee_count']);
        });
    }
};
