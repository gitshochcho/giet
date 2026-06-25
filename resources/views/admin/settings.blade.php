@extends('layouts.app')

@section('content')
    @php
        $socialLinks = old('social_links', $setting->social_links ?? []);
        if (! is_array($socialLinks)) {
            $socialLinks = [];
        }
        if (empty($socialLinks)) {
            $socialLinks = [
                ['title' => 'Facebook', 'link' => '', 'media_key' => null],
            ];
        }
    @endphp

    <div class="app-content-header">
        <div class="container-fluid">
            <div class="row align-items-center">
                <div class="col-sm-6">
                    <h3 class="mb-0">Settings</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-end mb-0">
                        <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Settings</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="app-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12 col-xl-10">
                    <div class="card card-primary card-outline">
                        <div class="card-header">
                            <h3 class="card-title">Website Settings</h3>
                        </div>
                        <form action="{{ route('admin.settings.update') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="card-body">
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <label class="form-label">Logo Image</label>
                                        <input type="file" name="logo_image" class="form-control @error('logo_image') is-invalid @enderror" data-max-size="2048" data-max-width="240" data-max-height="80">
                                        @error('logo_image')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                        <small class="text-muted"><i class="fas fa-info-circle"></i> Recommended: 240×80px (transparent PNG preferred, max 2MB) — supports PNG, JPG, WEBP, SVG</small>
                                        @if($setting?->logoImageUrl())
                                            <div class="mt-2">
                                                <img src="{{ $setting->logoImageUrl() }}" alt="Current logo" style="max-height: 70px;">
                                            </div>
                                        @endif
                                    </div>

                                    <div class="col-md-6">
                                        <label class="form-label">Favicon</label>
                                        <input type="file" name="favicon" class="form-control @error('favicon') is-invalid @enderror" accept="image/*,.ico">
                                        @error('favicon')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                        <small class="text-muted"><i class="fas fa-info-circle"></i> Browser tab icon — recommended 32×32px (ICO/PNG, max 512KB)</small>
                                        @if($setting?->faviconUrl())
                                        <div class="mt-2">
                                            <img src="{{ $setting->faviconUrl() }}" alt="Favicon" style="width:32px;height:32px;object-fit:contain;border:1px solid #dee2e6;border-radius:4px;">
                                        </div>
                                        @endif
                                    </div>

                                    <div class="col-md-6">
                                        <label class="form-label">Footer Icon</label>
                                        <input type="file" name="footer_icon" class="form-control @error('footer_icon') is-invalid @enderror" accept="image/*">
                                        @error('footer_icon')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                        <small class="text-muted"><i class="fas fa-info-circle"></i> Icon shown in the website footer — recommended 80×80px (PNG/SVG, max 2MB)</small>
                                        @if($setting?->footerIconUrl())
                                        <div class="mt-2">
                                            <img src="{{ $setting->footerIconUrl() }}" alt="Footer Icon" style="height:50px;object-fit:contain;border:1px solid #dee2e6;border-radius:4px;padding:4px;">
                                        </div>
                                        @endif
                                    </div>

                                    <div class="col-md-6">
                                        <label class="form-label">Logo Text</label>
                                        <input type="text" name="logo_text" value="{{ old('logo_text', $setting->logo_text ?? '') }}" class="form-control @error('logo_text') is-invalid @enderror" placeholder="TRACE">
                                        @error('logo_text')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="form-label">Logo Motto</label>
                                        <input type="text" name="logo_tagline" value="{{ old('logo_tagline', $setting->logo_tagline ?? '') }}" class="form-control @error('logo_tagline') is-invalid @enderror" placeholder="moto">
                                        @error('logo_tagline')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="form-label">Footer Contact Mobile</label>
                                        <input type="text" name="footer_contact_mobile" value="{{ old('footer_contact_mobile', $setting->footer_contact_mobile ?? '') }}" class="form-control @error('footer_contact_mobile') is-invalid @enderror">
                                        @error('footer_contact_mobile')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="form-label">Footer Contact Email</label>
                                        <input type="email" name="footer_contact_email" value="{{ old('footer_contact_email', $setting->footer_contact_email ?? '') }}" class="form-control @error('footer_contact_email') is-invalid @enderror">
                                        @error('footer_contact_email')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="form-label">Footer Contact Location</label>
                                        <textarea name="footer_contact_location" rows="4" class="form-control @error('footer_contact_location') is-invalid @enderror">{{ old('footer_contact_location', $setting->footer_contact_location ?? '') }}</textarea>
                                        @error('footer_contact_location')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                    </div>

                                    <div class="col-12">
                                        <label class="form-label">Footer Description</label>
                                        <textarea name="footer_description" rows="4" class="form-control @error('footer_description') is-invalid @enderror">{{ old('footer_description', $setting->footer_description ?? '') }}</textarea>
                                        @error('footer_description')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                    </div>

                                    <div class="col-12">
                                        <div class="d-flex justify-content-between align-items-center mb-2">
                                            <label class="form-label mb-0">Social Links</label>
                                            <button type="button" class="btn btn-sm btn-outline-primary" id="addSocialLink">Add Row</button>
                                        </div>

                                        <div id="socialLinksWrapper" class="d-grid gap-3">
                                            @foreach($socialLinks as $index => $socialLink)
                                                <div class="row g-2 social-link-row align-items-end">
                                                    <div class="col-md-3">
                                                        <label class="form-label">Title</label>
                                                        <input type="text" name="social_links[{{ $index }}][title]" value="{{ $socialLink['title'] ?? '' }}" class="form-control" placeholder="LinkedIn">
                                                        <input type="hidden" name="social_links[{{ $index }}][media_key]" value="{{ $socialLink['media_key'] ?? '' }}">
                                                    </div>
                                                    <div class="col-md-4">
                                                        <label class="form-label">Link (URL)</label>
                                                        <input type="text" name="social_links[{{ $index }}][link]" value="{{ $socialLink['link'] ?? '' }}" class="form-control" placeholder="https://linkedin.com/...">
                                                    </div>
                                                    <div class="col-md-4">
                                                        <label class="form-label">FontAwesome Icon Class</label>
                                                        <input type="text" name="social_links[{{ $index }}][icon_class]" value="{{ $socialLink['icon_class'] ?? '' }}" class="form-control" placeholder="fab fa-linkedin-in">
                                                        <small class="text-muted">e.g. <code>fab fa-linkedin-in</code>, <code>fab fa-x-twitter</code>, <code>fab fa-facebook-f</code>, <code>fab fa-youtube</code></small>
                                                    </div>
                                                    <div class="col-md-1 d-grid">
                                                        <button type="button" class="btn btn-outline-danger remove-social-link">&times;</button>
                                                    </div>
                                                </div>
                                            @endforeach
                                        </div>
                                        <div class="form-text">FontAwesome class দিলে icon দেখাবে। Image upload করলে image priority পাবে। দুটোই না দিলে title এর প্রথম ২ অক্ষর দেখাবে।</div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-end">
                                <button type="submit" class="btn btn-primary">Save Settings</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <template id="socialLinkTemplate">
        <div class="row g-2 social-link-row align-items-end">
            <div class="col-md-3">
                <label class="form-label">Title</label>
                <input type="text" name="__NAME__[title]" class="form-control" placeholder="LinkedIn">
                <input type="hidden" name="__NAME__[media_key]" value="">
            </div>
            <div class="col-md-4">
                <label class="form-label">Link (URL)</label>
                <input type="text" name="__NAME__[link]" class="form-control" placeholder="https://linkedin.com/...">
            </div>
            <div class="col-md-4">
                <label class="form-label">FontAwesome Icon Class</label>
                <input type="text" name="__NAME__[icon_class]" class="form-control" placeholder="fab fa-linkedin-in">
                <small class="text-muted">e.g. <code>fab fa-linkedin-in</code>, <code>fab fa-x-twitter</code></small>
            </div>
            <div class="col-md-1 d-grid">
                <button type="button" class="btn btn-outline-danger remove-social-link">&times;</button>
            </div>
        </div>
    </template>

@push('custome-js')
<script>
    (function () {
        const wrapper = document.getElementById('socialLinksWrapper');
        const addButton = document.getElementById('addSocialLink');
        const template = document.getElementById('socialLinkTemplate');

        function reindexRows() {
            wrapper.querySelectorAll('.social-link-row').forEach((row, index) => {
                row.querySelectorAll('input').forEach((input) => {
                    input.name = input.name
                        .replace(/social_links\[\d+\]/, `social_links[${index}]`)
                        .replace(/social_links_icons\[\d+\]/, `social_links_icons[${index}]`);
                });
            });
        }

        addButton.addEventListener('click', function () {
            const index = wrapper.querySelectorAll('.social-link-row').length;
            const html = template.innerHTML
                .replaceAll('__NAME__', `social_links[${index}]`)
                .replaceAll('__ICON_NAME__', `social_links_icons[${index}]`);
            wrapper.insertAdjacentHTML('beforeend', html);
        });

        wrapper.addEventListener('click', function (event) {
            if (!event.target.classList.contains('remove-social-link')) {
                return;
            }

            event.target.closest('.social-link-row').remove();
            reindexRows();
        });

        reindexRows();
    })();
</script>
@endpush
@endsection