  <footer class="w-full relative flex flex-col justify-between pt-[60px] bg-[#003054]">

    <div class="w-full max-w-[1204px] mx-auto pb-[40px] px-4 md:px-0" style="display:grid;grid-template-columns:1fr auto;gap:64px;align-items:start;">

        {{-- Col 1: Logo + Description + Social --}}
        <div class="flex flex-col text-left">
            @php $footerImg = $siteSettings?->footerIconUrl() ?? $siteSettings?->logoImageUrl(); @endphp
            @if($footerImg)
            <div class="w-[76px] h-[50px] bg-white rounded-[5px] p-1 flex items-center justify-center mb-4 overflow-hidden">
                <img src="{{ $footerImg }}" alt="GIET Logo" class="max-h-full max-w-full object-contain" />
            </div>
            @endif

            @if($siteSettings?->logo_text)
            <h3 class="mb-[12px] uppercase" style="font-family:'Newsreader',serif;font-weight:400;font-size:11px;line-height:16.5px;color:#FFFFFFCC;letter-spacing:0;max-width:220px;">
                {{ $siteSettings->logo_text }}
            </h3>
            @endif

            <p class="mb-6" style="font-family:'Newsreader',serif;font-weight:400;font-size:11px;line-height:16.5px;letter-spacing:0;color:#FFFFFFCC;max-width:400px;">
                {{ $siteSettings?->footer_description ?? '' }}
            </p>

            {{-- Social Icons --}}
            @php $socialLinks = $siteSettings?->socialLinksWithIcons() ?? []; @endphp
            @if(count($socialLinks) > 0)
            <div style="padding-top:18px;display:flex;align-items:center;gap:8px;">
                @foreach($socialLinks as $social)
                @if(!empty($social['icon_url']) || !empty($social['title']))
                @php $href = !empty($social['link']) ? $social['link'] : '#'; @endphp
                <a href="{{ $href }}" {{ !empty($social['link']) ? 'target="_blank" rel="noopener"' : '' }}
                   title="{{ $social['title'] ?? '' }}"
                   style="width:34px;height:34px;background:#FFFFFF12;border:1px solid #FFFFFF1A;border-radius:8px;display:flex;align-items:center;justify-content:center;color:rgba(255,255,255,0.7);transition:background 0.15s,color 0.15s;text-decoration:none;flex-shrink:0;"
                   onmouseover="this.style.background='rgba(255,255,255,0.15)';this.style.color='#fff';"
                   onmouseout="this.style.background='#FFFFFF12';this.style.color='rgba(255,255,255,0.7)';">
                    @if(!empty($social['icon_url']))
                        <img src="{{ $social['icon_url'] }}" alt="{{ $social['title'] ?? '' }}" style="width:18px;height:18px;object-fit:contain;filter:brightness(0) invert(1);opacity:0.75;" loading="lazy">
                    @else
                        <span style="font-size:10px;font-weight:700;letter-spacing:0.02em;">{{ strtoupper(substr($social['title'] ?? '?', 0, 2)) }}</span>
                    @endif
                </a>
                @endif
                @endforeach
            </div>
            @endif
        </div>

        {{-- Col 2: Contact --}}
        <div class="flex flex-col text-left" style="padding-top:4px;min-width:220px;">
            <h4 class="uppercase mb-5" style="font-family:'Inter',sans-serif;font-weight:700;font-size:12px;letter-spacing:0.15em;color:rgba(255,255,255,0.5);">Contact</h4>

            <div style="display:flex;flex-direction:column;gap:16px;font-family:'Inter',sans-serif;font-size:14px;">

                {{-- Location --}}
                <div style="display:flex;align-items:flex-start;gap:12px;color:rgba(187,205,222,0.85);">
                    <svg style="width:16px;height:16px;color:#18909C;flex-shrink:0;margin-top:2px;" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"/>
                        <path stroke-linecap="round" stroke-linejoin="round" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"/>
                    </svg>
                    <span>{{ $siteSettings?->footer_contact_location ?? 'Dhaka, Bangladesh' }}</span>
                </div>

                {{-- Email --}}
                <div style="display:flex;align-items:center;gap:12px;">
                    <svg style="width:16px;height:16px;color:#18909C;flex-shrink:0;" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"/>
                    </svg>
                    <a href="mailto:{{ $siteSettings?->footer_contact_email ?? 'contact@giet.org.bd' }}"
                       style="color:rgba(187,205,222,0.85);text-decoration:none;"
                       onmouseover="this.style.color='#fff';this.style.textDecoration='underline';"
                       onmouseout="this.style.color='rgba(187,205,222,0.85)';this.style.textDecoration='none';">
                        {{ $siteSettings?->footer_contact_email ?? 'contact@giet.org.bd' }}
                    </a>
                </div>

                {{-- Phone (only if set) --}}
                @if($siteSettings?->footer_contact_mobile)
                <div style="display:flex;align-items:center;gap:12px;">
                    <svg style="width:16px;height:16px;color:#18909C;flex-shrink:0;" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"/>
                    </svg>
                    <a href="tel:{{ $siteSettings->footer_contact_mobile }}"
                       style="color:rgba(187,205,222,0.85);text-decoration:none;"
                       onmouseover="this.style.color='#fff'" onmouseout="this.style.color='rgba(187,205,222,0.85)'">
                        {{ $siteSettings->footer_contact_mobile }}
                    </a>
                </div>
                @endif

            </div>
        </div>

    </div>

    {{-- Bottom Strip --}}
    <div style="border-top:1px solid rgba(255,255,255,0.1);padding:20px 32px;">
        <div class="w-full max-w-[1204px] mx-auto" style="display:flex;justify-content:space-between;align-items:center;font-family:'Inter',sans-serif;font-size:13px;">

            <span style="color:rgba(187,205,222,0.6);">
                &copy; {{ date('Y') }} {{ $siteSettings?->logo_text ?? 'Foundation for Governance Innovation and Economic Transformation (GIET)' }}. All rights reserved.
            </span>

            <div style="display:flex;align-items:center;gap:24px;">
                <a href="{{ url('/privacy-policy') }}" style="color:rgba(187,205,222,0.65);text-decoration:none;" onmouseover="this.style.color='#fff'" onmouseout="this.style.color='rgba(187,205,222,0.65)'">Privacy Policy</a>
                <a href="{{ url('/terms-of-use') }}"   style="color:rgba(187,205,222,0.65);text-decoration:none;" onmouseover="this.style.color='#fff'" onmouseout="this.style.color='rgba(187,205,222,0.65)'">Terms of Use</a>
            </div>

        </div>
    </div>

</footer>
