<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProjectCategory extends Model
{
    protected $fillable = ['name', 'sort_order', 'active'];

    protected $casts = ['active' => 'boolean'];

    public function projects()
    {
        return $this->hasMany(Project::class);
    }
}
