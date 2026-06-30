<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;
use App\Models\Event;
use App\Models\EventSpeaker;

class Team extends Model implements HasMedia
{
    use HasFactory, InteractsWithMedia;

    protected $fillable = [
        'first_name',
        'last_name',
        'designation',
        'short_description',
        'description',
        'sort_order',
        'type',
        'advisor_category',
        'headtitle',
        'expertise_label',
        'education',
        'experience',
        'languages',
        'location',
    ];

    public function experties()
    {
        return $this->hasMany(TeamExpertise::class)->orderBy('sort_order');
    }

    public function socialMedia()
    {
        return $this->hasMany(TeamSocialMedia::class)->orderBy('sort_order');
    }

    public function projects()
    {
        return $this->belongsToMany(Project::class, 'team_project_table');
    }

    public function insightArticles()
    {
        return $this->hasMany(InsightArticle::class, 'author_team_id')->orderBy('sort_order');
    }

    public function speakingEvents()
    {
        return $this->hasManyThrough(
            Event::class,
            EventSpeaker::class,
            'team_id',
            'id',
            'id',
            'event_id'
        );
    }

    public function imageUrl(): ?string
    {
        $url = $this->getFirstMediaUrl('image');

        return $url !== '' ? $url : null;
    }

    public function fullName(): string
    {
        return trim(($this->first_name ?? '') . ' ' . ($this->last_name ?? ''));
    }
}
