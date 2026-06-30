<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;

class ResearchIdea extends Model implements HasMedia
{
    use InteractsWithMedia;

    protected $fillable = ['name', 'email', 'organisation', 'message', 'is_read'];

    protected $casts = ['is_read' => 'boolean'];

    public function attachmentUrl(): ?string
    {
        return $this->getFirstMediaUrl('attachment') ?: null;
    }

    public function attachmentName(): ?string
    {
        return $this->getFirstMedia('attachment')?->file_name;
    }
}
