<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class EventPartner extends Model
{
    use HasFactory;

    protected $fillable = [
        'event_id', 'name', 'image', 'sort_order',
    ];

    public function event()
    {
        return $this->belongsTo(Event::class);
    }

    public function imageUrl(): ?string
    {
        return $this->image ? asset('storage/' . $this->image) : null;
    }
}
