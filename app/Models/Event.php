<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;

class Event extends Model implements HasMedia
{
    use HasFactory, InteractsWithMedia;

    protected $fillable = [
        'title', 'event_type', 'event_format',
        'event_date', 'event_time', 'event_end_date',
        'venue', 'venue_address',
        'registration_status', 'registration_deadline', 'registration_fee',
        'registration_capacity', 'organizer', 'co_host',
        'about', 'who_should_attend', 'enquiry_email',
        'participant_count', 'is_past', 'sort_order',
    ];

    protected $casts = [
        'event_date'            => 'date',
        'event_end_date'        => 'date',
        'registration_deadline' => 'date',
        'is_past'               => 'boolean',
    ];

    public function speakers()
    {
        return $this->hasMany(EventSpeaker::class)->orderBy('sort_order');
    }

    public function eventPartners()
    {
        return $this->hasMany(EventPartner::class)->orderBy('sort_order');
    }

    public function heroImageUrl(): ?string
    {
        $media = $this->getFirstMedia('hero');
        if (! $media) {
            return null;
        }
        // Use asset() so URL matches the actual request host (not APP_URL which may differ in Laragon)
        return asset('storage/' . $media->id . '/' . $media->file_name);
    }

    public function monthLabel(): string
    {
        return strtoupper($this->event_date->format('M'));
    }

    public function dayLabel(): string
    {
        return $this->event_date->format('d');
    }

    public function yearLabel(): string
    {
        return $this->event_date->format('Y');
    }

    public function fullDateLabel(): string
    {
        return $this->event_date->format('l, d F Y');
    }
}
