<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('insight_types', function (Blueprint $table) {
            $table->boolean('show_featured')->default(false)->after('status');
        });

        // Issue Briefs/Articles (ID=1) is the only type that uses the featured card layout
        DB::table('insight_types')->where('id', 1)->update(['show_featured' => true]);
    }

    public function down(): void
    {
        Schema::table('insight_types', function (Blueprint $table) {
            $table->dropColumn('show_featured');
        });
    }
};
