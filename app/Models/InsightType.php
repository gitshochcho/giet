<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class InsightType extends Model
{
        use HasFactory;

        protected $fillable = [
            'type',
            'type_category',
            'status',
            'show_featured',
        ];

        protected $casts = [
            'show_featured' => 'boolean',
        ];

        public function insights()
        {
            return $this->hasMany(Insight::class, 'type', 'id');
        }

}
