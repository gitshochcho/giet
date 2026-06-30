<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\InsightArticle;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;

class Insight extends Model implements HasMedia
{
    use HasFactory, InteractsWithMedia;

    protected $fillable = [
        'type',
        'video_link',
        'heading',
        'sub_heading',
        'description',
        'sort_order',
        'active',
        'published_at',
        'source_name',
        'author_team_ids',
        'outside_authors',
        'publish_links',
        'topics',
        'page_count',
        'read_minutes',
        'language',
        'is_featured',
        'duration',
        'attendee_count',
    ];

    protected $casts = [
        'active'         => 'boolean',
        'published_at'   => 'datetime',
        'author_team_ids'=> 'array',
        'outside_authors'=> 'array',
        'publish_links'  => 'array',
        'topics'         => 'array',
        'is_featured'    => 'boolean',
        'page_count'     => 'integer',
        'read_minutes'   => 'integer',
        'attendee_count' => 'integer',
    ];

    public function videoUrl(): ?string
{
    // Priority 1: Direct Video Link (YouTube/Vimeo etc.)
    if (!empty($this->video_link)) {
        return $this->video_link;
    }

    // Priority 2: Uploaded Video File (Attachment)
    return $this->attachmentUrl();
}

    public function articles()
    {
        return $this->hasMany(InsightArticle::class)->orderBy('sort_order')->latest('id');
    }

    public function insightType()
    {
        return $this->belongsTo(InsightType::class, 'type', 'id');
    }   

    public function imageUrl(): ?string
    {
        $media = $this->getFirstMedia('image');
        if (!$media) return null;
        return asset('storage/' . $media->id . '/' . $media->file_name);
    }

    public function attachmentUrl(): ?string
    {
        $media = $this->getFirstMedia('attachment');
        if (!$media) return null;
        return asset('storage/' . $media->id . '/' . $media->file_name);
    }

public function actionLabel(): string
{
    $typeCategory = strtolower(str_replace(' ', '_', $this->insightType?->type_category ?? 'read'));

    if ($typeCategory === 'read_on') {
        $sourceName = $this->source_name 
            ? parse_url($this->source_name, PHP_URL_HOST) 
            : 'Source';
      
        $sourceName = preg_replace('/^www\./', '', $sourceName ?? 'Source');
        return 'Read on ' . ucwords(str_replace(['.com', '.net', '.org', '.bd'], '', $sourceName));
    }

    return match(true) {
        $typeCategory === 'download' => 'Download',
        in_array($typeCategory, ['watch', 'video', 'video_watch']) => 'Watch',
        default => 'Read',
    };
}

public function articleImageUrl(): ?string
{
    $media = $this->getFirstMedia('article_image');
    if (!$media) return null;
    return asset('storage/' . $media->id . '/' . $media->file_name);
}
}
