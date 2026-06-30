<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;

class ContactInfo extends Model implements HasMedia
{
    use InteractsWithMedia;

    protected $fillable = [
        'type',
        'icon_class',
        'title',
        'primary_text',
        'secondary_text',
        'name',
        'address',
        'map_location',
        'office_hours',
        'link_value',
        'order',
        'is_active',
    ];

    protected $casts = [
        'is_active' => 'boolean',
        'order' => 'integer',
    ];

    public function scopeActive($query)
    {
        return $query->where('is_active', true);
    }

    public function scopeOrdered($query)
    {
        return $query->orderBy('order')->orderBy('id');
    }

    public function iconUrl(): ?string
    {
        $url = $this->getFirstMediaUrl('icon');
        return $url !== '' ? $url : null;
    }
}
