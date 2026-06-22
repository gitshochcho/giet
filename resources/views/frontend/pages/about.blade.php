@extends('frontend.layout.app')

@push('custome-css')
<style>
/*
 * style.css has unlayered a{color:white} and h1-h6{font-family:Poppins} that beat Tailwind @layer.
 * Scoped class+element rules (0,1,1) beat bare element rules (0,0,1).
 */
.ab-hero h1       { font-family: 'Merriweather', serif; font-weight: 800; color: #ffffff; }
.ab-hero a        { color: rgba(255,255,255,0.45); text-decoration: none; }
.ab-hero a:hover  { color: #ffffff; }

.ab-mvg h2        { font-family: 'Newsreader', serif; font-weight: 800; font-size: 38px; line-height: 44.84px; color: #0F172A; }
.ab-story h2      { font-family: 'Newsreader', serif; font-weight: 800; font-size: 38px; line-height: 44.84px; color: #003054; }
.ab-partners h2   { font-family: 'Lora', serif; font-weight: 700; font-size: 42px; line-height: 50.4px; color: #0F172A; }
</style>
@endpush

@section('content')

{{-- =====================================================================
     1. HERO BANNER
     slug: about_us_header  |  fields: heading, description
     ===================================================================== --}}
<section class="ab-hero bg-[#003054] w-full h-auto md:h-[372.2px] relative flex flex-col justify-center items-center text-white overflow-hidden pt-[72px] pb-[72px] px-4 md:px-8 select-none">

  <div class="w-full max-w-[1204px] mx-auto h-auto md:h-[228.2px] flex flex-col items-start text-left gap-[15.2px]">

    <div style="font-family:'Inter',sans-serif;font-size:12px;line-height:19.8px;"
         class="text-white/45 flex items-center gap-1.5 tracking-normal">
      <a href="{{ url('/') }}" class="hover:text-white transition-colors">Home</a>
      <span class="text-white/30">/</span>
      <span class="text-white">About Us</span>
    </div>

    <div class="bg-[#18909C] w-[40px] h-[3px] rounded-[2px] my-[6px]"></div>

    <h1 style="font-family:'Merriweather',serif;font-weight:800;font-size:clamp(28px,5vw,52px);line-height:1.1;letter-spacing:-0.5px;"
        class="text-white tracking-tight drop-shadow-sm">
      {{ $aboutHeader?->heading ?: 'About GIET' }}
    </h1>

    @if($aboutHeader?->description)
    <p class="font-['Newsreader'] text-white/60 max-w-[780px] font-normal tracking-normal drop-shadow-sm" style="font-family:'Newsreader',serif;font-size:17px;line-height:29.75px;">
      {{ $aboutHeader->description }}
    </p>
    @else
    <p class="font-['Newsreader'] text-white/60 max-w-[780px] font-normal tracking-normal drop-shadow-sm" style="font-family:'Newsreader',serif;font-size:17px;line-height:29.75px;">
      A non-partisan, non-profit think tank dedicated to advancing transparent governance, institutional reform, and economic transformation across Bangladesh.
    </p>
    @endif

  </div>
</section>

{{-- =====================================================================
     2. WHO WE ARE
     slug: about_us_who_we_are  |  fields: section, heading, description, sub_heading, image
     ===================================================================== --}}
<section class="w-full bg-white flex justify-center items-center select-none pt-[48px] pb-[48px] md:pt-[100px] md:pb-[90px] px-4 md:px-8">

    <div class="w-full max-w-[1204px] mx-auto flex flex-col md:flex-row justify-between items-center gap-10 md:gap-[80px]">

        <div class="w-full md:w-[512px] h-[280px] md:h-[440px] rounded-[20px] overflow-hidden shrink-0 shadow-sm md:relative md:top-[10px]">
            <img src="{{ $whoWeAre?->imageUrl() ?? asset('images/Image.png') }}" alt="About GIET" class="w-full h-full object-cover">
        </div>

        <div class="w-full md:w-[512px] flex flex-col text-left items-start justify-center gap-[13px]">

            <span style="font-family:'Inter',sans-serif;font-weight:600;font-size:11px;line-height:18.15px;letter-spacing:1.54px;text-transform:uppercase;"
                  class="text-[#0E606B] uppercase block">
                {{ $whoWeAre?->section ?: 'Who We Are' }}
            </span>

            <h2 style="font-family:'Merriweather',serif;font-weight:800;font-size:38px;line-height:44.84px;letter-spacing:-0.38px;"
                class="text-[#0F172A]">
                {!! nl2br(e($whoWeAre?->heading ?: "Transforming Challenges\ninto Strategic\nOpportunities")) !!}
            </h2>

            @if($whoWeAre?->description)
                @foreach(array_filter(explode("\n", $whoWeAre->description)) as $para)
                <p class="text-[#1A1A1A] text-[16px] leading-[28.8px] font-normal tracking-normal font-['Newsreader']">
                    {{ trim($para) }}
                </p>
                @endforeach
            @else
            <p class="text-[#1A1A1A] text-[16px] leading-[28.8px] font-normal tracking-normal font-['Newsreader']">
                GIET works at the intersection of research, policy, and implementation — delivering evidence-based solutions to complex governance and economic challenges across Bangladesh.
            </p>
            @endif

            <a href="{{ route('services') }}" class="mt-6 w-[197px] h-[49.09px] pt-[12px] pr-[28px] pb-[13.09px] pl-[28px] rounded-[6px] bg-[#A80C18] hover:bg-[#8F0A14] text-white font-['Newsreader'] font-semibold text-[13px] flex items-center justify-center gap-1.5 transition-colors cursor-pointer" style="text-decoration:none;color:#ffffff;">
                <span>{{ $whoWeAre?->sub_heading ?: 'Our Areas of Work' }}</span>
                <span class="text-[13px] font-normal pt-[0.5px]">↗</span>
            </a>

        </div>
    </div>
</section>

{{-- =====================================================================
     3. MISSION, VISION & GOALS
     slug: about_us_our_mission (header)
     slug: about_us_mission, about_us_vision, about_us_goals (cards)
     fields: heading, description
     ===================================================================== --}}
<section class="ab-mvg" style="background-color: #F8FAFC;">
<div class="w-full pt-[90px] pb-[100px] px-4 md:px-8 text-center select-none flex flex-col items-center">

    <div class="w-full max-w-[1204px] mx-auto md:px-0 flex flex-col items-center text-center gap-[52px]">

        <div class="flex flex-col items-center justify-center gap-3">
            <span class="text-[#0E606B] font-['Newsreader'] font-semibold text-[11px] leading-[18.15px] tracking-[1.54px] uppercase block">
                {{ $ourMission?->section ?: 'Our Institution' }}
            </span>
            <h2 class="text-[#0F172A] font-['Newsreader'] font-extrabold text-[38px] leading-[44.84px] tracking-[-0.38px]">
                {{ $ourMission?->heading ?: 'Mission, Vision & Goals' }}
            </h2>
        </div>

        <div class="w-full max-w-[1204px] mx-auto grid grid-cols-1 md:grid-cols-3 gap-[20px] text-left">

            {{-- MISSION CARD --}}
            <div class="group bg-white rounded-[20px] pt-[40px] pr-[32px] pb-[42px] pl-[32px] min-h-[298px] flex flex-col justify-start items-start gap-[14px] border border-gray-100 shadow-sm hover:bg-[#F1F5F9] transition-colors duration-300 cursor-default">
                <div class="w-[42px] h-[42px] bg-[#EEF9FA] group-hover:bg-white rounded-[8px] flex items-center justify-center transition-colors duration-300">
                    <svg class="w-5 h-5 text-[#18909C]" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                    </svg>
                </div>
                <span class="text-[#18909C] font-['Newsreader'] font-bold text-[10px] leading-[14px] tracking-[1.54px] uppercase block">
                    {{ $missionContent?->section ?: 'Mission' }}
                </span>
                <p class="text-[#0F172A] group-hover:text-[#0F172A] font-['Newsreader'] font-bold text-[15px] leading-[24px] transition-colors duration-300">
                    {{ $missionContent?->description ?: 'To advance transparent, accountable governance and sustainable economic transformation through rigorous research, policy advocacy, and implementation support.' }}
                </p>
            </div>

            {{-- VISION CARD --}}
            <div class="group bg-white rounded-[20px] pt-[40px] pr-[32px] pb-[42px] pl-[32px] min-h-[298px] flex flex-col justify-start items-start gap-[14px] border border-gray-100 shadow-sm hover:bg-[#F1F5F9] transition-colors duration-300 cursor-default">
                <div class="w-[42px] h-[42px] bg-[#EEF9FA] group-hover:bg-white rounded-[8px] flex items-center justify-center transition-colors duration-300">
                    <svg class="w-5 h-5 text-[#0E606B]" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
                        <path stroke-linecap="round" stroke-linejoin="round" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"></path>
                    </svg>
                </div>
                <span class="text-[#0E606B] font-['Newsreader'] font-bold text-[10px] leading-[14px] tracking-[1.54px] uppercase block">
                    {{ $visionContent?->section ?: 'Vision' }}
                </span>
                <p class="text-[#0F172A] group-hover:text-[#0F172A] font-['Newsreader'] font-bold text-[15px] leading-[24px] transition-colors duration-300">
                    {{ $visionContent?->description ?: 'A Bangladesh where institutions are transparent, economies are competitive, and citizens are empowered through evidence-based policy and good governance.' }}
                </p>
            </div>

            {{-- GOALS CARD --}}
            <div class="group bg-white rounded-[20px] pt-[40px] pr-[32px] pb-[42px] pl-[32px] min-h-[298px] flex flex-col justify-start items-start gap-[14px] border border-gray-100 shadow-sm hover:bg-[#F1F5F9] transition-colors duration-300 cursor-default">
                <div class="w-[42px] h-[42px] bg-[#FFF5F5] group-hover:bg-white rounded-[8px] flex items-center justify-center transition-colors duration-300">
                    <svg class="w-5 h-5 text-[#A80C18]" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-6 9l2 2 4-4"></path>
                    </svg>
                </div>
                <span class="text-[#A80C18] font-['Newsreader'] font-bold text-[10px] leading-[14px] tracking-[1.54px] uppercase block">
                    {{ $goalsContent?->section ?: 'Goals' }}
                </span>
                <p class="text-[#0F172A] group-hover:text-[#0F172A] font-['Newsreader'] font-bold text-[15px] leading-[24px] transition-colors duration-300">
                    {{ $goalsContent?->description ?: 'To produce actionable research, influence policy, build institutional capacity, and foster partnerships that drive lasting governance and economic reform in Bangladesh.' }}
                </p>
            </div>

        </div>
    </div>
</div>
</section>

{{-- =====================================================================
     4. OUR STORY / HISTORY
     slug: about_trace (left panel)  |  fields: section, heading, description
     slug: about_story_1 … about_story_10 (timeline rows)
           section = year, heading = event title, description = event body
     ===================================================================== --}}
<section class="ab-story" style="background-color: #FFFFFF;">
<div class="w-full pt-[48px] pb-[48px] md:pt-[100px] md:pb-[100px] px-4 md:px-8 select-none flex flex-col items-center">

    <div class="w-full max-w-[1204px] mx-auto flex flex-col md:flex-row justify-between items-start gap-10 md:gap-[80px]">

        {{-- LEFT PANEL --}}
        <div class="w-full md:w-[360px] text-left md:shrink-0">
            <span style="font-family:'Inter',sans-serif;font-weight:700;font-size:11px;line-height:14px;letter-spacing:2px;"
                  class="text-[#18909C] uppercase block mb-3">
                {{ $aboutTrace?->section ?: 'Our Story' }}
            </span>
            <h2 class="text-[#003054] font-['Newsreader'] font-extrabold text-[38px] leading-[44.84px] tracking-[-0.38px] mb-5"
                style="font-family:'Newsreader',serif;font-weight:800;font-size:38px;line-height:44.84px;">
                {{ $aboutTrace?->heading ?: 'Built on a Belief that Better Governance is Possible' }}
            </h2>
            @if($aboutTrace?->description)
            <p class="font-['Newsreader'] text-[#1A1A1A]" style="font-family:'Newsreader',serif;font-weight:400;font-size:14px;line-height:24px;">
                {{ $aboutTrace->description }}
            </p>
            @else
            <p class="font-['Newsreader'] text-[#1A1A1A]" style="font-family:'Newsreader',serif;font-weight:400;font-size:14px;line-height:24px;">
                GIET was established by a group of policy practitioners, academics, and development professionals who witnessed firsthand the gap between policy design and real-world implementation in Bangladesh.
            </p>
            @endif
        </div>

        {{-- TIMELINE --}}
        <div class="w-full md:w-[664px] flex flex-col">
            @if($storyItems->isNotEmpty())
                @foreach($storyItems as $item)
                <div class="w-full pt-[28px] pb-[28px] flex items-start justify-start gap-[32px] text-left border-b border-[#EEF3F8]">
                    <span class="{{ $loop->last ? 'text-[#18909C]' : 'text-[#EEF3F8]' }} font-['Newsreader'] font-extrabold text-[28px] leading-[28px] w-[70px] shrink-0 block"
                          style="font-family:'Newsreader',serif;font-weight:800;">
                        {{ $item->section }}
                    </span>
                    <div class="flex flex-col gap-2">
                        <h4 class="text-[#0F172A] font-['Newsreader'] font-bold text-[17px] leading-[28px]"
                            style="font-family:'Newsreader',serif;font-weight:700;">
                            {{ $item->heading }}
                        </h4>
                        <p class="text-[#1A1A1A] font-['Newsreader'] font-normal text-[14px] leading-[23.8px]">
                            {{ $item->description }}
                        </p>
                    </div>
                </div>
                @endforeach
            @else
            {{-- Static fallback if no story items created yet --}}
            <div class="w-full pt-[28px] pb-[28px] flex items-start justify-start gap-[32px] text-left border-b border-[#EEF3F8]">
                <span class="text-[#EEF3F8] font-['Newsreader'] font-extrabold text-[28px] leading-[28px] w-[70px] shrink-0 block" style="font-family:'Newsreader',serif;font-weight:800;">2021</span>
                <div class="flex flex-col gap-2">
                    <h4 class="text-[#0F172A] font-['Newsreader'] font-bold text-[17px] leading-[28px]" style="font-family:'Newsreader',serif;">Foundation Established</h4>
                    <p class="text-[#1A1A1A] font-['Newsreader'] font-normal text-[14px] leading-[23.8px]">GIET was incorporated in Dhaka as a non-profit, non-governmental organization by founding members drawn from government, academia, and the development sector. The founding mandate focused on governance innovation and economic reform advisory.</p>
                </div>
            </div>
            <div class="w-full pt-[28px] pb-[28px] flex items-start justify-start gap-[32px] text-left border-b border-[#EEF3F8]">
                <span class="text-[#18909C] font-['Newsreader'] font-extrabold text-[28px] leading-[28px] w-[70px] shrink-0 block" style="font-family:'Newsreader',serif;font-weight:800;">2022</span>
                <div class="flex flex-col gap-2">
                    <h4 class="text-[#0F172A] font-['Newsreader'] font-bold text-[17px] leading-[28px]" style="font-family:'Newsreader',serif;">First Research Programme Launched</h4>
                    <p class="text-[#1A1A1A] font-['Newsreader'] font-normal text-[14px] leading-[23.8px]">GIET published its inaugural set of policy briefs on trade facilitation and regulatory modernization, establishing its credentials as an evidence-based research institution. The organization convened its first national policy dialogue in Dhaka with 80+ participants from government and civil society.</p>
                </div>
            </div>
            <div class="w-full pt-[28px] pb-[28px] flex items-start justify-start gap-[32px] text-left border-b border-[#EEF3F8]">
                <span class="text-[#EEF3F8] font-['Newsreader'] font-extrabold text-[28px] leading-[28px] w-[70px] shrink-0 block" style="font-family:'Newsreader',serif;font-weight:800;">2023</span>
                <div class="flex flex-col gap-2">
                    <h4 class="text-[#0F172A] font-['Newsreader'] font-bold text-[17px] leading-[28px]" style="font-family:'Newsreader',serif;">Expanded to 15 Focus Areas</h4>
                    <p class="text-[#1A1A1A] font-['Newsreader'] font-normal text-[14px] leading-[23.8px]">The organization's mandate was broadened to encompass 15 thematic areas spanning governance, economic transformation, digital development, social inclusion, and climate sustainability — reflecting the complexity of Bangladesh's reform agenda.</p>
                </div>
            </div>
            <div class="w-full pt-[28px] pb-[28px] flex items-start justify-start gap-[32px] text-left border-b border-[#EEF3F8]">
                <span class="text-[#EEF3F8] font-['Newsreader'] font-extrabold text-[28px] leading-[28px] w-[70px] shrink-0 block" style="font-family:'Newsreader',serif;font-weight:800;">2024</span>
                <div class="flex flex-col gap-2">
                    <h4 class="text-[#0F172A] font-['Newsreader'] font-bold text-[17px] leading-[28px]" style="font-family:'Newsreader',serif;">International Partnership Network</h4>
                    <p class="text-[#1A1A1A] font-['Newsreader'] font-normal text-[14px] leading-[23.8px]">GIET formalized partnerships with international development organizations, bilateral agencies, and academic institutions — enabling joint research, technical advisory, and capacity-building programmes across South Asia.</p>
                </div>
            </div>
            @endif
        </div>

    </div>
</div>
</section>

{{-- =====================================================================
     5. WHAT SETS GIET APART (OUR APPROACH) — 3 cards
     slug: about_us_we_make_trace_different (header)
     slugs: about_us_insight, about_us_strategy, about_us_impact (cards)
     fields: section, heading, description, icon (image)
     ===================================================================== --}}
<section style="background-color: #F7F9FB;"
         class="w-full mx-auto pt-[88px] pb-[88px] px-4 md:px-8 text-center select-none flex flex-col items-center">

    <div class="w-full max-w-[1204px] mx-auto px-0 flex flex-col items-start text-left gap-[52px]">

        <div class="flex flex-col items-start justify-start gap-3">
            <span style="font-family:'Inter',sans-serif;font-weight:600;font-size:11px;line-height:18.15px;letter-spacing:1.54px;text-transform:uppercase;"
                  class="text-[#0E606B] uppercase block">
                {{ $aboutUniqueFeaturesContent?->section ?: 'Our Approach' }}
            </span>
            <h2 style="font-family:'Merriweather',serif;font-weight:800;font-size:38px;line-height:44.84px;letter-spacing:-0.38px;"
                class="text-[#0F172A]">
                {{ $aboutUniqueFeaturesContent?->heading ?: 'What Sets GIET Apart' }}
            </h2>
        </div>

        <div class="w-full max-w-[1204px] mx-auto grid grid-cols-1 md:grid-cols-3 gap-[24px] text-left">

            @if($frameworkItems->isNotEmpty())
                @foreach($frameworkItems as $item)
                <div class="bg-white rounded-[16px] border border-[#E8EEF4] p-[32px] flex flex-col gap-[16px] hover:shadow-md transition-shadow duration-300">
                    <div class="flex flex-col gap-[4px]">
                        <h4 style="font-family:'Merriweather',serif;font-weight:800;font-size:18px;line-height:26px;" class="text-[#003054]">
                            {{ $item->heading }}
                        </h4>
                    </div>
                    <div class="w-[40px] h-[2px] bg-[#18909C] rounded-full"></div>
                    <p class="font-['Newsreader'] text-[#475569]" style="font-family:'Newsreader',serif;font-weight:400;font-size:14px;line-height:24px;">
                        {{ $item->description }}
                    </p>
                </div>
                @endforeach
            @else
            {{-- Static fallback --}}
            @foreach([['Evidence-Based Research','We integrate rigorous field research with institutional knowledge to produce policy recommendations grounded in real-world evidence and measurable data.'],['Multi-Stakeholder Dialogue','We convene governments, civil society, development partners, and the private sector to build consensus and co-design solutions that reflect diverse perspectives.'],['Integrated Implementation Support','We go beyond advisory — providing on-the-ground implementation support, monitoring, and adaptive management to ensure reforms deliver tangible results.']] as [$title, $body])
            <div class="bg-white rounded-[16px] border border-[#E8EEF4] p-[32px] flex flex-col gap-[16px] hover:shadow-md transition-shadow duration-300">
                <div class="flex flex-col gap-[4px]">
                    <h4 style="font-family:'Merriweather',serif;font-weight:800;font-size:18px;line-height:26px;" class="text-[#003054]">{{ $title }}</h4>
                </div>
                <div class="w-[40px] h-[2px] bg-[#18909C] rounded-full"></div>
                <p class="font-['Newsreader'] text-[#475569]" style="font-family:'Newsreader',serif;font-weight:400;font-size:14px;line-height:24px;">{{ $body }}</p>
            </div>
            @endforeach
            @endif

        </div>
    </div>
</section>

{{-- =====================================================================
     6. OUR VALUES (OPERATING FRAMEWORK) — 4 cards
     slug: about_us_how_we_work (header)
     slugs: about_us_industry_wide_network, about_us_sustainable_approach,
            about_us_tailored_innovation, about_us_end_to_end_integrated_solutions
     fields: heading, description, icon (image)
     ===================================================================== --}}
<section style="background-color: #FFFFFF;"
         class="w-full mx-auto pt-[88px] pb-[88px] px-4 md:px-8 text-center select-none flex flex-col items-center">

    <div class="w-full max-w-[1204px] mx-auto px-0 flex flex-col items-start text-left gap-[52px]">

        <div class="flex flex-col items-start justify-start gap-3">
            <span style="font-family:'Inter',sans-serif;font-weight:600;font-size:11px;line-height:18.15px;letter-spacing:1.54px;text-transform:uppercase;"
                  class="text-[#0E606B] uppercase block">
                {{ $aboutFrameworkContent?->section ?: 'Our Values' }}
            </span>
            <h2 style="font-family:'Merriweather',serif;font-weight:800;font-size:38px;line-height:44.84px;letter-spacing:-0.38px;"
                class="text-[#0F172A]">
                {{ $aboutFrameworkContent?->heading ?: 'The Principles That Guide Our Work' }}
            </h2>
        </div>

        @php
            $valueIcons = [
                asset('icons/SVG (29).png'),
                asset('icons/SVG (59).png'),
                asset('icons/SVG (30).png'),
                asset('icons/SVG (31).png'),
            ];
        @endphp

        <div class="w-full max-w-[1204px] mx-auto grid grid-cols-1 md:grid-cols-2 gap-[20px] text-left">

            @if($uniqueFeatureCards->isNotEmpty())
                @foreach($uniqueFeatureCards as $i => $item)
                <div style="border: 1px solid #EEF3F8;"
                     class="w-full p-[28px] rounded-[14px] flex gap-[18px] items-start hover:shadow-sm transition-all bg-[#FFFFFF]">
                    <div class="w-[42px] h-[42px] bg-[#EEF9FA] rounded-[8px] flex items-center justify-center shrink-0 text-[#18909C] overflow-hidden">
                        @if($item->iconUrl())
                        <img src="{{ $item->iconUrl() }}" alt="{{ $item->heading }}" class="w-5 h-5 object-contain">
                        @else
                        <img src="{{ $valueIcons[$i] ?? $valueIcons[0] }}" alt="{{ $item->heading }}" class="w-5 h-5 object-contain"
                             onerror="this.style.display='none'">
                        @endif
                    </div>
                    <div class="flex flex-col gap-1.5">
                        <h4 style="font-family:'Merriweather',serif;font-weight:800;font-size:18px;line-height:23.4px;" class="text-[#0E606B]">
                            {{ $item->heading }}
                        </h4>
                        <p class="font-['Newsreader'] text-[#1A1A1A]" style="font-family:'Newsreader',serif;font-weight:400;font-size:14px;line-height:23.8px;">
                            {{ $item->description }}
                        </p>
                    </div>
                </div>
                @endforeach
            @else
            {{-- Static fallback --}}
            @foreach([
                ['Integrity','icons/SVG (29).png','We uphold the highest standards of professional and intellectual honesty. Our research processes, partnerships, and governance practices reflect a commitment to transparency and accountability that we promote in others.'],
                ['Independence','icons/SVG (59).png','Our analysis is free from political influence, donor pressure, or institutional bias. We are funded by a diverse base of organizations and structured to protect the independence of our research conclusions at all times.'],
                ['Inclusion','icons/SVG (30).png','We believe that sustainable reform must include the voices of women, youth, persons with disabilities, and marginalized communities. Our programmes are designed to be equitable in both process and outcome.'],
                ['Impact','icons/SVG (31).png','We are a results-oriented organization. We define success not by publications produced or events held, but by measurable changes in policy, institutional practice, and the lives of citizens we ultimately serve.'],
            ] as [$title, $icon, $body])
            <div style="border: 1px solid #EEF3F8;"
                 class="w-full p-[28px] rounded-[14px] flex gap-[18px] items-start hover:shadow-sm transition-all bg-[#FFFFFF]">
                <div class="w-[42px] h-[42px] bg-[#EEF9FA] rounded-[8px] flex items-center justify-center shrink-0 text-[#18909C] overflow-hidden">
                    <img src="{{ asset($icon) }}" alt="{{ $title }}" class="w-5 h-5 object-contain" onerror="this.style.display='none'">
                </div>
                <div class="flex flex-col gap-1.5">
                    <h4 style="font-family:'Merriweather',serif;font-weight:800;font-size:18px;line-height:23.4px;" class="text-[#0E606B]">{{ $title }}</h4>
                    <p class="font-['Newsreader'] text-[#1A1A1A]" style="font-family:'Newsreader',serif;font-weight:400;font-size:14px;line-height:23.8px;">{{ $body }}</p>
                </div>
            </div>
            @endforeach
            @endif

        </div>
    </div>
</section>

{{-- =====================================================================
     7. PARTNERS — data from Admin Panel > Partners (Partner model)
     Scrollable carousel using Swiper
     ===================================================================== --}}
@if($partners->isNotEmpty())
<section class="ab-partners w-full bg-white border-t border-[#F0F0F0] select-none py-[60px] overflow-hidden">

    <div class="w-full max-w-[1204px] mx-auto px-4 md:px-0 flex flex-col items-center gap-[36px]">

        <h2 style="font-family:'Lora',serif;font-weight:700;font-size:38px;line-height:46px;color:#0F172A;"
            class="text-center">
            {{ $partnersContent?->heading ?: 'Our Partners' }}
        </h2>

        <div class="w-full relative">
            {{-- Prev button --}}
            <button id="ab-partner-prev"
                    class="w-[36px] h-[36px] rounded-full bg-[#F4F4F4] hover:bg-[#E2E8F0] flex items-center justify-center absolute left-0 top-1/2 -translate-y-1/2 z-10 transition-colors cursor-pointer shadow-sm"
                    style="left:-18px;">
                <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="#475569" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><polyline points="15 18 9 12 15 6"></polyline></svg>
            </button>

            <div class="swiper ab-partners-swiper overflow-hidden" style="padding:4px 2px;">
                <div class="swiper-wrapper items-center">
                    @foreach($partners as $partner)
                    <div class="swiper-slide">
                        <div class="h-[80px] bg-white border border-[#EEF3F8] rounded-[10px] flex items-center justify-center p-4 hover:shadow-md transition-all duration-200 cursor-default">
                            @if($partner->imageUrl())
                            <img class="max-h-[38px] max-w-full object-contain opacity-85 hover:opacity-100 transition-opacity"
                                 src="{{ $partner->imageUrl() }}"
                                 alt="{{ $partner->name ?? 'Partner' }}">
                            @else
                            <span class="font-sans font-bold text-[14px] text-[#003054] tracking-tight text-center leading-snug">
                                {{ $partner->name ?? 'Partner' }}
                            </span>
                            @endif
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>

            {{-- Next button --}}
            <button id="ab-partner-next"
                    class="w-[36px] h-[36px] rounded-full bg-[#F4F4F4] hover:bg-[#E2E8F0] flex items-center justify-center absolute right-0 top-1/2 -translate-y-1/2 z-10 transition-colors cursor-pointer shadow-sm"
                    style="right:-18px;">
                <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="#475569" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><polyline points="9 18 15 12 9 6"></polyline></svg>
            </button>
        </div>

    </div>
</section>

@push('custome-js')
<script>
document.addEventListener('DOMContentLoaded', function () {
    if (typeof Swiper !== 'undefined') {
        new Swiper('.ab-partners-swiper', {
            slidesPerView: 5,
            spaceBetween: 12,
            loop: true,
            autoplay: {
                delay: 2800,
                disableOnInteraction: false,
                pauseOnMouseEnter: true,
            },
            navigation: {
                prevEl: '#ab-partner-prev',
                nextEl: '#ab-partner-next',
            },
            breakpoints: {
                480:  { slidesPerView: 3, spaceBetween: 12 },
                768:  { slidesPerView: 4, spaceBetween: 12 },
                1024: { slidesPerView: 5, spaceBetween: 12 },
            },
        });
    }
});
</script>
@endpush
@endif

@endsection
