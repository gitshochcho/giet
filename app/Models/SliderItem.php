<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\MediaLibrary\MediaCollections\Models\Media;

class SliderItem extends Model implements HasMedia
{
    use HasFactory, InteractsWithMedia;

    protected $fillable = [
        'title',
        'tagline',
        'description',
        'design_word',
        'url',
        'sort_order',
        'active',
    ];

    protected $casts = [
        'active' => 'boolean',
    ];

    public function registerMediaConversions(?Media $media = null): void
    {
        $this->addMediaConversion('webp')
            ->format('webp')
            ->quality(82)
            ->performOnCollections('image')
            ->nonQueued();
    }

    public function imageUrl(): ?string
    {
        return $this->getFirstMediaUrl('image') ?: null;
    }

    public function webpUrl(): ?string
    {
        $url = $this->getFirstMediaUrl('image', 'webp');
        return $url ?: null;
    }
}