<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class EventSpeaker extends Model
{
    use HasFactory;

    protected $fillable = [
        'event_id', 'team_id', 'name', 'designation', 'session_role', 'speaker_type', 'image', 'sort_order',
    ];

    public function event()
    {
        return $this->belongsTo(Event::class);
    }

    public function team()
    {
        return $this->belongsTo(\App\Models\Team::class);
    }

    public function imageUrl(): ?string
    {
        return $this->image ? asset('storage/' . $this->image) : null;
    }
}
