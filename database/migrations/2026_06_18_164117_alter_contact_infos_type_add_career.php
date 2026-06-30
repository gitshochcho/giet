<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    public function up(): void
    {
        DB::statement("ALTER TABLE contact_infos MODIFY COLUMN type ENUM('phone','email','address','career') NOT NULL");
    }

    public function down(): void
    {
        DB::statement("ALTER TABLE contact_infos MODIFY COLUMN type ENUM('phone','email','address') NOT NULL");
    }
};
