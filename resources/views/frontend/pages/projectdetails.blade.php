@extends('frontend.layout.app')

@push('custome-css')
<style>
/*
 * style.css  : a{color:white}  h1-h6{font-family:Poppins}  — unlayered, beats Tailwind @layer
 * Bootstrap  : h2{font-weight:500; margin-bottom:.5rem; line-height:1.2} — unlayered, beats Tailwind @layer
 *
 * Scoped rules below use class+element specificity (0,1,1) which beats
 * bare element rules (0,0,1) from both style.css and Bootstrap, without !important.
 */

/* ── Main content section ── */
.pd-body h2 {
    font-family: 'Newsreader', serif;
    font-weight: 800;
    font-size: 26px;
    line-height: 36px;
    color: #0F172A;
}
.pd-body h2.mb-\[18px\] { margin-bottom: 18px; }
.pd-body h2.mb-\[16px\] { margin-bottom: 16px; }
.pd-body h2.mb-\[20px\] { margin-bottom: 20px; }

/* ── Team section ── */
.pd-team h2 {
    font-family: 'Merriweather', serif;
    font-weight: 800;
    font-size: 32px;
    line-height: 38px;
    color: #0F172A;
    margin: 0;
}
/* "All Experts →" link — style.css a{color:white} makes it invisible on light bg */
.pd-team a.pd-experts-link {
    color: #003054;
    text-decoration: none;
}
.pd-team a.pd-experts-link:hover {
    color: #003054;
    opacity: 0.7;
}
/* Team card <a> wrappers */
.pd-team a.pd-team-card {
    text-decoration: none;
}
</style>
@endpush

@section('content')
<!-- ========================================================================= -->
<!-- 1. HERO SECTION -->
<!-- ========================================================================= -->
<section class="w-full min-h-[400px] md:h-[342.78px] relative select-none flex flex-col justify-between overflow-hidden text-white px-4 md:px-8 bg-cover bg-center"
         style="background-image: linear-gradient(0deg, rgba(0,20,48,0.96) 0%, rgba(0,20,48,0.65) 55%, rgba(0,20,48,0.15) 100%), url('{{ $project->heroImageUrl() ?? asset('images/Governance Innovation.png') }}');">

  <div class="absolute -top-[100px] -right-[100px] pointer-events-none bg-[rgba(24,144,156,0.07)] w-[400px] h-[400px] rounded-full z-0"></div>

  <div class="w-full max-w-[1204px] mx-auto pt-[100px] pb-[32px] md:pt-0 md:pb-[48px] mt-auto flex flex-col justify-end items-start text-left gap-[14px] z-10 relative">

    <div class="w-full flex justify-between items-start">
        <div style="font-family:'Inter',sans-serif;font-size:12px;line-height:19.8px;"
             class="text-[#FFFFFF]/[0.45] tracking-normal flex items-center gap-1.5">
            <a href="{{ url('/') }}" class="hover:text-white transition-colors duration-150" style="color:rgba(255,255,255,0.45);">Home</a>
            <span class="text-white/20">/</span>
            <a href="{{ route('projects') }}" class="hover:text-white transition-colors duration-150" style="color:rgba(255,255,255,0.45);">Projects</a>
            <span class="text-white/20">/</span>
            <span class="text-[#FFFFFF]/[0.30]">{{ Str::limit($project->project_title, 50) }}</span>
        </div>
    </div>

    <!-- STATUS BADGE -->
    <div class="flex items-center">
        @php
            $statusColor = match(strtolower($project->project_status)) {
                'completed'  => ['bg' => '#0E606B', 'border' => '#00A896', 'text' => '#00A896', 'dot' => '#00C49F'],
                'ongoing'    => ['bg' => '#1d4ed8', 'border' => '#60a5fa', 'text' => '#93c5fd', 'dot' => '#60a5fa'],
                'planned'    => ['bg' => '#92400e', 'border' => '#fbbf24', 'text' => '#fcd34d', 'dot' => '#fbbf24'],
                'on hold'    => ['bg' => '#7f1d1d', 'border' => '#f87171', 'text' => '#fca5a5', 'dot' => '#f87171'],
                default      => ['bg' => '#0E606B', 'border' => '#00A896', 'text' => '#00A896', 'dot' => '#00C49F'],
            };
        @endphp
        <span style="font-family: 'Inter', sans-serif; font-weight: 500; font-size: 11px; line-height: 100%; background-color: {{ $statusColor['bg'] }}1a; border-color: {{ $statusColor['border'] }}; color: {{ $statusColor['text'] }};"
              class="inline-flex items-center gap-1.5 px-[12px] py-[6px] rounded-full border">
            <span class="w-1.5 h-1.5 rounded-full" style="background-color: {{ $statusColor['dot'] }};"></span>
            {{ $project->project_status }}
        </span>
    </div>

    <!-- MAIN TITLE -->
    <h1 style="font-family: 'Merriweather', serif; font-weight: 800; font-size: clamp(26px,4vw,42px); line-height: 1.2; letter-spacing: -0.5px;"
        class="text-white max-w-[920px] drop-shadow-sm m-0">
        {{ $project->project_title }}
    </h1>

    <!-- FOOTER META ROW -->
    @if($project->client || $project->partner)
    <div style="font-family: 'Inter', sans-serif; font-weight: 400; font-size: 13px; line-height: 22px;"
         class="text-[#FFFFFF]/[0.60] flex flex-wrap items-center gap-1.5">
        @if($project->client)
        <span>Client: <strong class="text-white font-semibold">{{ cleanText($project->client) }}</strong></span>
        @endif
        @if($project->client && $project->partner)
        <span class="text-white/30 mx-1">·</span>
        @endif
        @if($project->partner)
        <span>Partner: <strong class="text-white font-semibold">{{ cleanText($project->partner) }}</strong></span>
        @endif
    </div>
    @endif

  </div>
</section>

<!-- PROJECT META BAR SECTION -->
<section class="w-full bg-[#003054] border-b border-[#FFFFFF14] py-8 md:h-[115px] md:py-0 flex items-center justify-center px-4 md:px-8 select-none">

    <div class="w-full max-w-[1204px] mx-auto grid grid-cols-2 md:grid-cols-5 h-full items-center gap-y-4 md:gap-y-0">

        <!-- ITEM 1: CLIENT -->
        <div class="h-full pt-[32px] pb-[32px] pl-[20px] pr-[16px] flex items-start gap-[14px] border-r border-white/[0.08]">
            <div class="bg-[rgba(24,144,156,0.12)] w-[44px] h-[44px] rounded-[8px] flex items-center justify-center shrink-0 border border-white/[0.05] overflow-hidden mt-[12px]">
                <img src="{{ asset('icons/SVG (50).png') }}" alt="Client Icon" class="w-[20px] h-[20px] object-contain" loading="lazy" decoding="async">
            </div>
            <div class="text-left flex flex-col gap-[4px]">
                <span style="font-family: 'Inter', sans-serif; font-weight: 600; font-size: 11px; line-height: 100%; letter-spacing: 0.8px;" class="text-white/45 uppercase">
                    Client
                </span>
                <div class="flex flex-wrap gap-[5px]">
                    @if($project->client)
                    <span style="font-family:'Inter',sans-serif;font-weight:600;font-size:11.5px;" class="bg-white/10 text-white px-[8px] py-[3px] rounded-[4px]">{{ cleanText($project->client) }}</span>
                    @else
                    <span style="font-family:'Inter',sans-serif;font-weight:600;font-size:11.5px;" class="text-white/40">—</span>
                    @endif
                </div>
            </div>
        </div>

        <!-- ITEM 2: DURATION -->
        <div class="h-full pt-[32px] pb-[32px] pl-[20px] pr-[16px] flex items-start gap-[14px] border-r border-white/[0.08]">
            <div class="bg-[rgba(24,144,156,0.12)] w-[44px] h-[44px] rounded-[8px] flex items-center justify-center shrink-0 border border-white/[0.05] overflow-hidden mt-[12px]">
                <img src="{{ asset('icons/SVG (51).png') }}" alt="Duration Icon" class="w-[20px] h-[20px] object-contain" loading="lazy" decoding="async">
            </div>
            <div class="text-left flex flex-col gap-[4px]">
                <span style="font-family: 'Inter', sans-serif; font-weight: 600; font-size: 11px; line-height: 100%; letter-spacing: 0.8px;" class="text-white/45 uppercase">
                    Duration
                </span>
                <span style="font-family: 'Inter', sans-serif; font-weight: 700; font-size: 14px; line-height: 130%;" class="text-white">
                    @if($project->durationLabel())
                        {{ $project->durationLabel() }}
                    @else
                        <span class="text-white/40">—</span>
                    @endif
                </span>
            </div>
        </div>

        <!-- ITEM 3: LOCATION -->
        <div class="h-full pt-[32px] pb-[32px] pl-[20px] pr-[16px] flex items-start gap-[14px] border-r border-white/[0.08]">
            <div class="bg-[rgba(24,144,156,0.12)] w-[44px] h-[44px] rounded-[8px] flex items-center justify-center shrink-0 border border-white/[0.05] overflow-hidden mt-[12px]">
                <img src="{{ asset('icons/SVG (52).png') }}" alt="Location Icon" class="w-[20px] h-[20px] object-contain" loading="lazy" decoding="async">
            </div>
            <div class="text-left flex flex-col gap-[4px]">
                <span style="font-family: 'Inter', sans-serif; font-weight: 600; font-size: 11px; line-height: 100%; letter-spacing: 0.8px;" class="text-white/45 uppercase">
                    Location
                </span>
                <span style="font-family: 'Inter', sans-serif; font-weight: 700; font-size: 14px; line-height: 130%;" class="text-white">
                    @if($project->locations->isNotEmpty())
                        {{ cleanText($project->locations->first()->location) }}
                        @if($project->locations->count() > 1)
                        <br><span style="font-weight: 500;" class="text-white/70 text-[13px]">+ {{ $project->locations->count() - 1 }} more</span>
                        @endif
                    @else
                        <span class="text-white/40">—</span>
                    @endif
                </span>
            </div>
        </div>

        <!-- ITEM 4: SECTOR -->
        <div class="h-full pt-[32px] pb-[32px] pl-[20px] pr-[16px] flex items-start gap-[14px] border-r border-white/[0.08]">
            <div class="bg-[rgba(24,144,156,0.12)] w-[44px] h-[44px] rounded-[8px] flex items-center justify-center shrink-0 border border-white/[0.05] overflow-hidden mt-[12px]">
                <img src="{{ asset('icons/SVG (53).png') }}" alt="Sector Icon" class="w-[20px] h-[20px] object-contain" loading="lazy" decoding="async">
            </div>
            <div class="text-left flex flex-col gap-[4px]">
                <span style="font-family: 'Inter', sans-serif; font-weight: 600; font-size: 11px; line-height: 100%; letter-spacing: 0.8px;" class="text-white/45 uppercase">
                    Sector
                </span>
                <div class="flex flex-wrap gap-[5px]">
                    @forelse($project->services->take(2) as $svc)
                    <span style="font-family:'Inter',sans-serif;font-weight:600;font-size:11.5px;" class="bg-white/10 text-white px-[8px] py-[3px] rounded-[4px]">{{ $svc->service_name }}</span>
                    @empty
                    <span style="font-family:'Inter',sans-serif;font-weight:600;font-size:11.5px;" class="text-white/40">—</span>
                    @endforelse
                </div>
            </div>
        </div>

        <!-- ITEM 5: STATUS -->
        <div class="h-full pt-[32px] pb-[32px] pl-[20px] pr-[16px] flex items-start gap-[14px]">
            <div class="bg-[rgba(24,144,156,0.12)] w-[44px] h-[44px] rounded-[8px] flex items-center justify-center shrink-0 border border-white/[0.05] overflow-hidden mt-[12px]">
                <img src="{{ asset('icons/SVG (54).png') }}" alt="Status Icon" class="w-[20px] h-[20px] object-contain" loading="lazy" decoding="async">
            </div>
            <div class="text-left flex flex-col gap-[4px]">
                <span style="font-family: 'Inter', sans-serif; font-weight: 600; font-size: 11px; line-height: 100%; letter-spacing: 0.8px;" class="text-white/45 uppercase">
                    Status
                </span>
                <span style="font-family: 'Inter', sans-serif; font-weight: 700; font-size: 14px; line-height: 130%;" class="text-[#00C49F] flex flex-col gap-0.5">
                    <span class="flex items-center gap-1.5">
                        <span class="w-2 h-2 rounded-full bg-[#00C49F]"></span> {{ $project->project_status }}
                    </span>
                    @if($project->end_date)
                    <span style="font-weight: 500;" class="text-white/70 text-[13px] pl-3.5">{{ $project->end_date->format('F Y') }}</span>
                    @endif
                </span>
            </div>
        </div>

    </div>
</section>

<!-- MAIN BODY SECTION -->
<section class="pd-body w-full py-[48px] md:py-[72px] px-4 md:px-8 bg-white select-none flex items-start justify-center">

    <div class="w-full max-w-[1204px] mx-auto grid grid-cols-1 md:grid-cols-[1fr_360px] gap-[40px] md:gap-[48px] items-start">

        <div class="w-full flex flex-col text-left">

            <!-- PROJECT OVERVIEW -->
            <h2 class="font-['Newsreader'] font-extrabold text-[26px] leading-[36px] text-[#0F172A] mb-[18px]">
                Project Overview
            </h2>
            <div class="font-['Newsreader'] font-normal text-[14.5px] leading-[24px] text-[#334155] space-y-[16px] mb-[32px]">
                @if($project->overview)
                    {!! $project->overview !!}
                @else
                <p class="font-['Newsreader'] text-[#94A3B8]">No overview available.</p>
                @endif
            </div>

            <!-- OUTCOMES & IMPACT -->
            @if($project->outcomes->isNotEmpty())
            <h2 class="font-['Newsreader'] font-extrabold text-[26px] leading-[36px] text-[#0F172A] mb-[20px]">
                Outcomes & Impact
            </h2>
            <ul class="space-y-[14px] mb-[44px]">
                @foreach($project->outcomes as $outcome)
                <li class="flex items-start gap-[10px]">
                    <span class="w-[6px] h-[6px] rounded-full bg-[#0E606B] mt-[9px] shrink-0"></span>
                    <p class="font-['Newsreader'] font-normal text-[14px] leading-[22px] text-[#334155]">
                        {{ cleanText($outcome->text) }}
                    </p>
                </li>
                @endforeach
            </ul>
            @endif

            <!-- DELIVERABLES -->
            @if($project->phaseDetails->isNotEmpty())
            <h2 class="font-['Newsreader'] font-extrabold text-[26px] leading-[36px] text-[#0F172A] mt-20px mb-[20px]">
                Deliverables
            </h2>
            <div class="w-full grid grid-cols-1 md:grid-cols-2 gap-[12px] mb-[48px]">
                @foreach($project->phaseDetails as $phase)
                <div class="w-full bg-[#F7F9FB] border border-[#E4EAF0] rounded-[10px] p-[14px] flex items-center gap-[10px] hover:bg-slate-50 transition-colors text-left">
                    <div class="w-[32px] h-[32px] bg-[#E8F6F7] rounded-[6px] flex items-center justify-center shrink-0 overflow-hidden">
                        <img src="{{ asset('icons/SVG (55).png') }}" alt="Icon" class="w-[16px] h-[16px] object-contain" loading="lazy" decoding="async">
                    </div>
                    <span style="font-family: 'Inter', sans-serif; font-weight: 500; font-size: 12.5px; line-height: 16px;" class="text-[#1E293B] line-clamp-2">
                        {{ cleanText($phase->phase_description) }}
                    </span>
                </div>
                @endforeach
            </div>
            @endif

            <!-- ACTION BUTTONS -->
            <div class="flex flex-col md:flex-row items-stretch md:items-center gap-[12px] pt-[10px] border-t border-gray-100">
                <a href="{{ route('contact') }}" style="font-family:'Inter',sans-serif;font-weight:600;font-size:13px;text-decoration:none;"
                        class="bg-[#A80C18] text-white pt-[13px] pr-[24px] pb-[16px] pl-[24px] rounded-[6px] hover:bg-[#8e0a13] transition-colors flex items-center justify-center gap-1.5">
                    {{ $pdActions?->heading }} <span class="text-[14px]">→</span>
                </a>

                <a href="{{ route('projects') }}" style="font-family:'Inter',sans-serif;font-weight:600;font-size:13px;text-decoration:none;"
                        class="bg-white text-[#003054] border-2 border-[#003054] pt-[11px] pr-[24px] pb-[14px] pl-[24px] rounded-[6px] hover:bg-slate-50 transition-colors flex items-center justify-center gap-1.5">
                    <span class="text-[14px]">←</span> {{ $pdActions?->sub_heading }}
                </a>
            </div>

        </div>

        <!-- SIDEBAR -->
        <div class="w-full md:w-[360px] flex flex-col gap-[20px] md:sticky md:top-[112px]">

            <div class="w-full bg-[#00203F] text-white p-[24px] text-left flex flex-col gap-[14px]">
                <div class="flex flex-col gap-[6px]">
                    <span class="font-['Newsreader'] font-bold text-[10px] tracking-[1px] uppercase text-[#02D9EF]">
                        {{ $pdSidebar?->section }}
                    </span>
                    <p class="font-['Newsreader'] text-white/85" style="font-family: 'Newsreader',serif; font-weight: 400; font-size: 13px; line-height: 19px;">
                        {{ cleanText($pdSidebar?->description) }}
                    </p>
                </div>
                <a href="{{ route('contact') }}" style="font-family: 'Inter', sans-serif; font-weight: 600; font-size: 12px; text-decoration:none;"
                   class="w-full bg-[#A80C18] text-white py-[11px] rounded-[4px] hover:bg-[#8e0a13] transition-colors flex items-center justify-center gap-1.5">
                    {{ $pdSidebar?->sub_heading }} <span class="text-[12px]">→</span>
                </a>
            </div>

        </div>

    </div>
</section>


<!-- TEAM SECTION -->
@if($project->teams->isNotEmpty())
<section class="pd-team w-full py-[56px] md:py-[72px] px-4 md:px-8 bg-[#F7F9FB] select-none flex items-center justify-center">
    <div class="w-full max-w-[1204px] mx-auto px-0 md:px-0 flex flex-col gap-[36px]">

        <div class="w-full flex justify-between items-end">
            <div class="text-left">
                <span style="font-family:'Inter',sans-serif;font-weight:600;font-size:11px;letter-spacing:1.76px;" class="text-[#0E606B] uppercase block mb-[6px]">{{ $pdTeam?->section }}</span>
                <h2 style="font-family:'Merriweather',serif;font-weight:800;font-size:32px;line-height:38px;" class="text-[#0F172A]">{{ $pdTeam?->heading }}</h2>
            </div>
            <a href="{{ route('team') }}" style="font-family:'Inter',sans-serif;font-weight:600;font-size:13px;" class="pd-experts-link text-[#003054] border-b-2 border-[#003054] pb-[3px] hover:opacity-70 transition-opacity">
                {{ $pdTeam?->design_word }} →
            </a>
        </div>

        <div class="w-full grid grid-cols-1 md:grid-cols-4 gap-[16px]">
            @foreach($project->teams as $member)
            <a href="{{ route('teamdetails', $member->id) }}" class="pd-team-card group w-full bg-white border border-[#E8EEF4] rounded-[14px] overflow-hidden flex flex-col hover:shadow-[0px_8px_28px_0px_rgba(0,48,84,0.10)] transition-shadow duration-300">
                <div class="w-full h-[180px] bg-[#E8F0F6] overflow-hidden">
                    @if($member->imageUrl())
                    <img src="{{ $member->imageUrl() }}" alt="{{ $member->fullName() }}" class="w-full h-full object-cover object-top group-hover:scale-[1.03] transition-transform duration-300" onerror="this.style.display='none';this.nextElementSibling.style.display='flex'" loading="lazy" decoding="async" />
                    @endif
                    <div class="{{ $member->imageUrl() ? 'hidden' : '' }} w-full h-full bg-[#E8F0F6] items-center justify-center" style="{{ $member->imageUrl() ? '' : 'display:flex;' }}">
                        <svg width="48" height="48" viewBox="0 0 48 48" fill="none"><circle cx="24" cy="18" r="10" fill="#CBD5E1"/><ellipse cx="24" cy="38" rx="16" ry="9" fill="#CBD5E1"/></svg>
                    </div>
                </div>
                <div class="p-[16px] flex flex-col gap-[4px] flex-grow">
                    @if($member->headtitle)
                    <span style="font-family:'Inter',sans-serif;font-weight:700;font-size:10px;letter-spacing:1px;text-transform:uppercase;" class="text-[#0E606B]">{{ $member->headtitle }}</span>
                    @endif
                    <h4 style="font-family:'Merriweather',serif;font-weight:700;font-size:14px;line-height:20px;color:#0F172A;">{{ $member->fullName() }}</h4>
                    @if($member->designation)
                    <p style="font-family:'Newsreader',serif;font-weight:400;font-size:12px;line-height:18px;color:#64748B;">{{ $member->designation }}</p>
                    @endif
                    <div class="mt-auto pt-[10px] border-t border-[#EEF3F8] flex justify-between items-center">
                        @if($member->expertise_label)
                        <span style="font-family:'Inter',sans-serif;font-weight:500;font-size:11px;color:#94A3B8;">{{ $member->expertise_label }}</span>
                        @else
                        <span></span>
                        @endif
                        <span style="font-family:'Inter',sans-serif;font-weight:600;font-size:12px;color:#A80C18;" class="group-hover:opacity-75">View →</span>
                    </div>
                </div>
            </a>
            @endforeach
        </div>
    </div>
</section>
@endif

@endsection
