<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;

class Setting extends Model implements HasMedia
{
    use HasFactory, InteractsWithMedia;

    protected $fillable = [
        'logo_text',
        'logo_tagline',
        'social_links',
        'footer_contact_mobile',
        'footer_contact_email',
        'footer_contact_location',
        'footer_description',
        'show_about_story',
    ];

    protected $casts = [
        'social_links'     => 'array',
        'show_about_story' => 'boolean',
    ];

    public function logoImageUrl(): ?string
    {
        $url = $this->getFirstMediaUrl('logo_image');
        return $url !== '' ? $url : null;
    }

    public function faviconUrl(): ?string
    {
        $url = $this->getFirstMediaUrl('favicon');
        return $url !== '' ? $url : null;
    }

    public function footerIconUrl(): ?string
    {
        $url = $this->getFirstMediaUrl('footer_icon');
        return $url !== '' ? $url : null;
    }

    public function projectClientIconUrl(): ?string
    {
        $url = $this->getFirstMediaUrl('project_client_icon');
        return $url !== '' ? $url : null;
    }

    public function projectDurationIconUrl(): ?string
    {
        $url = $this->getFirstMediaUrl('project_duration_icon');
        return $url !== '' ? $url : null;
    }

    public function projectLocationIconUrl(): ?string
    {
        $url = $this->getFirstMediaUrl('project_location_icon');
        return $url !== '' ? $url : null;
    }

    public function projectSectorIconUrl(): ?string
    {
        $url = $this->getFirstMediaUrl('project_sector_icon');
        return $url !== '' ? $url : null;
    }

    public function projectStatusIconUrl(): ?string
    {
        $url = $this->getFirstMediaUrl('project_status_icon');
        return $url !== '' ? $url : null;
    }

    public function socialLinksWithIcons(): array
    {
        $links = is_array($this->social_links) ? $this->social_links : [];

        return collect($links)->map(function (array $item) {
            $mediaKey = $item['media_key'] ?? null;
            $iconUrl = null;

            if ($mediaKey) {
                $iconUrl = $this->getFirstMediaUrl('social_icon_' . $mediaKey);
                if ($iconUrl === '') {
                    $iconUrl = null;
                }
            }

            return [
                'title'      => $item['title'] ?? null,
                'link'       => $item['link'] ?? null,
                'media_key'  => $mediaKey,
                'icon_url'   => $iconUrl,
                'icon_class' => $item['icon_class'] ?? null,
            ];
        })->all();
    }
}