@extends('frontend.layout.app')

@push('custome-css')
<style>
/*
 * style.css  : a{color:white}  h1-h6{font-family:Poppins}  — unlayered, beats Tailwind @layer
 * Bootstrap  : h2{font-weight:500} — unlayered
 * Scoped rules below use class+element specificity (0,1,1) which beats bare element (0,0,1).
 */
.proj-hero h1 {
    font-family: 'Newsreader', serif;
    font-weight: 800;
    color: #ffffff;
}
.proj-portfolio h2 {
    font-family: 'Merriweather', serif;
    font-weight: 800;
    font-size: 38px;
    line-height: 44.84px;
    letter-spacing: -0.38px;
    color: #0F172A;
}
.proj-impact h2 {
    font-family: 'Newsreader', serif;
    font-weight: 800;
    font-size: 38px;
    line-height: 44.84px;
    letter-spacing: -0.38px;
    color: #0F172A;
}
.proj-wwu h2 {
    font-family: 'Newsreader', serif;
    font-weight: 800;
    font-size: 38px;
    line-height: 45.6px;
    color: #003054;
}
.proj-card h3 {
    font-family: 'Merriweather', serif;
    font-weight: 800;
    font-size: 24px;
    line-height: 31.2px;
    color: #0F172A;
}
.proj-card h4 {
    font-family: 'Merriweather', serif;
    font-weight: 800;
    font-size: 15.5px;
    line-height: 21.7px;
    color: #0F172A;
}
.proj-card a {
    color: #A80C18;
    text-decoration: none;
}
.proj-card a:hover {
    color: #8e0a14;
}
.proj-wwu a {
    text-decoration: none;
}
.proj-wwu a.btn-primary-wwu {
    color: #ffffff;
}
.proj-wwu a.btn-primary-wwu:hover {
    color: #ffffff;
}
.proj-wwu a.btn-outline-wwu {
    color: #003054;
}
.proj-wwu a.btn-outline-wwu:hover {
    color: #003054;
}
</style>
@endpush

@section('content')
<!-- PAGE HERO SECTION -->
<section class="proj-hero w-full h-auto md:h-[342.2px] bg-[#003054] overflow-hidden relative pt-[72px] pb-[72px] px-4 md:px-8">

  <!-- BACKGROUND DECORATION SHAPE -->
  <div class="absolute -top-[100px] -right-[100px] pointer-events-none bg-[rgba(24,144,156,0.07)] w-[400px] h-[400px] rounded-full"></div>

  <!-- INNER CONTAINER (1200px Layout Engine) -->
  <div class="w-full max-w-[1204px] mx-auto h-auto px-4 md:px-0 flex flex-col justify-center items-start z-10 relative" style="gap: 15.2px;">

    <!-- BREADCRUMBS -->
    <div class="flex items-center gap-1.5 text-[12px] text-white/45 font-['Newsreader'] leading-[19.8px]">
      <a href="{{ url('/') }}" class="hover:text-white transition-colors" style="color:rgba(255,255,255,0.45);">Home</a>
      <span>/</span>
      <span class="text-white/45">Projects</span>
    </div>

    <!-- ACCENT LINE -->
    <div class="bg-[#18909C] w-[40px] h-[3px] rounded-[2px]"></div>

    <!-- MAIN TITLE -->
    <h1 class="text-white font-['Newsreader'] font-extrabold leading-tight drop-shadow-sm m-0" style="font-size:clamp(28px,5vw,52px);">
      {{ $projectsHero?->heading }}
    </h1>

  </div>
</section>


<!-- PROJECT PORTFOLIO SECTION -->
<section class="proj-portfolio w-full pt-[48px] pb-[48px] md:pt-[80px] md:pb-[80px] bg-white select-none flex flex-col items-center justify-center">
    <div class="w-full max-w-[1204px] mx-auto px-4 md:px-0 flex flex-col gap-[44px]">

        <!-- HEADER ROW -->
        <div class="w-full text-left">
            @if($projectsPortfolio?->section)
            <span style="font-family:'Inter',sans-serif;font-weight:600;font-size:11px;line-height:18.15px;letter-spacing:1.54px;text-transform:uppercase;"
                  class="text-[#0E606B] uppercase block mb-2">
                {{ $projectsPortfolio->section }}
            </span>
            @endif
            <h2 style="font-family:'Merriweather',serif;font-weight:800;font-size:38px;line-height:44.84px;letter-spacing:-0.38px;"
                class="text-[#0F172A]">
                {{ $projectsPortfolio?->heading }}
            </h2>
        </div>

        <!-- FILTER NAVIGATION TABS -->
        @if($categories->isNotEmpty())
        <div class="w-full max-w-[1204px] mx-auto h-auto flex flex-wrap items-center border-b-2 border-[#EEF3F8] gap-y-2">
            <a href="{{ route('projects') }}"
               style="font-family:'Inter',sans-serif;font-weight:{{ !$selectedCategory ? '600' : '500' }};font-size:13px;text-decoration:none;color:{{ !$selectedCategory ? '#0F172A' : '#6B7280' }};"
               class="pt-[13px] pb-[14.44px] px-[28px] border-b-[3px] {{ !$selectedCategory ? 'border-[#A80C18]' : 'border-transparent' }} text-center transition-all">
                All Projects
            </a>
            @foreach($categories as $category)
            <a href="{{ route('projects', ['category' => $category->id]) }}"
               style="font-family:'Inter',sans-serif;font-weight:{{ $selectedCategory == $category->id ? '600' : '500' }};font-size:13px;text-decoration:none;color:{{ $selectedCategory == $category->id ? '#0F172A' : '#6B7280' }};"
               class="pt-[13px] pb-[14.44px] px-[28px] border-b-[3px] {{ $selectedCategory == $category->id ? 'border-[#A80C18]' : 'border-transparent' }} text-center transition-all">
                {{ $category->name }}
            </a>
            @endforeach
        </div>
        @endif

        @php $featuredProject = $projects->first(); $gridProjects = $projects->skip(1); @endphp

        @if($featuredProject)
        <!-- FEATURED PROJECT CARD -->
        <div class="proj-card w-full border border-[#EEF3F8] rounded-[20px] overflow-hidden flex flex-col md:flex-row bg-white hover:shadow-md transition-all text-left">
            <!-- Left Side Image -->
            <div class="w-full md:w-[560px] md:h-[403.81px] overflow-hidden bg-[#EEF3F8] md:shrink-0 relative">
                @if($featuredProject->heroImageUrl())
                <img src="{{ $featuredProject->heroImageUrl() }}" alt="{{ $featuredProject->project_title }}" class="w-full h-full object-cover" loading="lazy" decoding="async">
                @else
                <div class="w-full h-full bg-[#EEF3F8] flex items-center justify-center">
                    <svg width="64" height="64" viewBox="0 0 64 64" fill="none"><rect width="64" height="64" rx="8" fill="#CBD5E1"/><path d="M20 44L28 32L34 40L40 28L50 44H20Z" fill="#94A3B8"/></svg>
                </div>
                @endif
                <div class="absolute left-4 top-4 bg-[#003054] w-[144px] h-[29px] flex items-center justify-center rounded-[2px] px-[14px] py-[6px]">
                    <span class="text-white text-[9.5px] font-bold uppercase tracking-[1px] whitespace-nowrap">Featured Project</span>
                </div>
            </div>
            <!-- Right Side Content -->
            <div class="w-full pt-[28px] pr-[24px] pb-[28px] pl-[24px] md:pt-[44px] md:pr-[40px] md:pb-[44px] md:pl-[40px] flex flex-col justify-between">
                <div class="flex flex-col gap-2.5">
                    <span style="font-family: 'Inter', sans-serif; font-weight: 600; font-size: 11px; line-height: 18.15px; letter-spacing: 1.1px;" class="text-[#0E606B] uppercase">
                        @php
                            $fMeta = array_filter([
                                cleanText($featuredProject->client),
                                $featuredProject->durationLabel(),
                                
                            ]);
                        @endphp
                        {{ implode(' · ', $fMeta) }}
                    </span>
                    <h3 style="font-family: 'Merriweather', serif; font-weight: 800; font-size: 24px; line-height: 31.2px;" class="text-[#0F172A]">
                        {{ $featuredProject->project_title }}
                    </h3>
                    @if($featuredProject->overview)
                    <p class="font-['Newsreader'] text-[#1A1A1A] mt-[20px]" style="font-family: 'Newsreader',serif; font-weight: 400; font-size: 14.5px; line-height: 25.38px;">
                        {{ Str::limit(cleanText($featuredProject->overview), 300) }}
                    </p>
                    @endif
                </div>
                <div class="flex flex-col gap-4">
                    <div class="flex flex-wrap items-center gap-[10px]" style="font-family:'Inter',sans-serif;font-size:12px;line-height:19.8px;color:#6B7280;">
                        @foreach($featuredProject->services->take(2) as $svc)
                            <span>{{ $svc->service_name }}</span>@if(!$loop->last)<span>·</span>@endif
                        @endforeach
                        @if($featuredProject->locations->isNotEmpty())
                            <span>·</span>
                            <span>{{ cleanText($featuredProject->locations->pluck('location')->implode(', ')) }}</span>
                        @endif
                    </div>
                    <a href="{{ route('projectdetails', $featuredProject->id) }}" style="font-family: 'Inter', sans-serif; font-weight: 600; font-size: 12.5px; line-height: 20.63px;" class="text-[#A80C18] hover:text-[#8e0a14] transition-colors flex items-center gap-1">
                        Read Project Brief <span class="text-[11px]">→</span>
                    </a>
                </div>
            </div>
        </div>
        @endif

        @if($gridProjects->isNotEmpty())
        <!-- PROJECT CARDS GRID -->
        <div class="proj-card w-full max-w-[1204px] mx-auto grid grid-cols-1 md:grid-cols-3 gap-[20px]">
            @foreach($gridProjects as $project)
            <div class="w-full border border-[#EEF3F8] rounded-[14px] overflow-hidden bg-white hover:shadow-md transition-all flex flex-col text-left pb-[21.68px]">
                <div class="w-full h-[180px] bg-[#EEF3F8] relative overflow-hidden shrink-0">
                    @if($project->heroImageUrl())
                    <img src="{{ $project->heroImageUrl() }}" alt="{{ $project->project_title }}" class="w-full h-full object-cover" loading="lazy" decoding="async">
                    @else
                    <div class="w-full h-full bg-[#EEF3F8] flex items-center justify-center">
                        <svg width="48" height="48" viewBox="0 0 48 48" fill="none"><rect width="48" height="48" rx="6" fill="#CBD5E1"/><path d="M12 36L20 24L26 32L32 20L40 36H12Z" fill="#94A3B8"/></svg>
                    </div>
                    @endif
                    @if($project->services->isNotEmpty())
                    <div class="absolute left-0 bottom-0 bg-[#003054] w-[145px] h-[26px] flex items-center justify-center rounded-[2px] px-[12px] py-[5px]">
                        <span class="text-white text-[9.5px] font-bold uppercase tracking-[0.5px] whitespace-nowrap truncate px-1">
                            {{ $project->services->first()->service_name }}
                        </span>
                    </div>
                    @endif
                </div>
                <div class="p-[20px] flex flex-col justify-between flex-grow">
                    <div class="flex flex-col gap-2">
                        <span style="font-family: 'Inter', sans-serif; font-weight: 600; font-size: 10.5px; line-height: 17.33px; letter-spacing: 1.05px;" class="text-[#0E606B] uppercase">
                            @php
                                $gMeta = array_filter([
                                    cleanText($project->client),
                                    $project->durationLabel(),
                                    
                                ]);
                            @endphp
                            {{ implode(' · ', $gMeta) }}
                        </span>
                        <h4 style="font-family: 'Merriweather', serif; font-weight: 800; font-size: 15.5px; line-height: 21.7px;" class="text-[#0F172A] line-clamp-2">
                            {{ $project->project_title }}
                        </h4>
                        @if($project->overview)
                        <p class="font-['Newsreader'] text-[#1A1A1A] line-clamp-3 mt-0.5" style="font-family: 'Newsreader',serif; font-weight: 400; font-size: 13px; line-height: 21.45px;">
                            {{ cleanText($project->overview) }}
                        </p>
                        @endif
                    </div>
                    <div class="flex items-center justify-between mt-4 border-t border-gray-50 pt-3">
                        <span style="font-family: 'Inter', sans-serif; font-weight: 400; font-size: 11.5px; line-height: 18.98px;" class="text-[#6B7280]">
                            {{ $project->project_status }}{{ $project->end_date ? ' · ' . $project->end_date->format('M Y') : '' }}
                        </span>
                        <a href="{{ route('projectdetails', $project->id) }}" style="font-family: 'Inter', sans-serif; font-weight: 600; font-size: 11.5px; line-height: 18.98px;" class="text-[#A80C18] hover:underline flex items-center gap-0.5">
                            View <span class="text-[10px]">→</span>
                        </a>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
        @elseif(!$featuredProject)
        <div class="w-full text-center py-16">
            <p style="font-family:'Newsreader',serif;font-size:18px;" class="text-[#64748B]">No projects found.</p>
        </div>
        @endif

    </div>
</section>


<!-- IMPACT STATS SECTION -->
<section class="proj-impact w-full py-[48px] md:py-[88px] px-4 bg-[#F7F9FB] select-none flex items-center justify-center">
    <div class="w-full max-w-[1204px] mx-auto px-4 md:px-0 flex flex-col gap-[40px] md:gap-[52px]">

        <!-- HEADER -->
        <div class="w-full text-left">
            @if($projectsImpact?->section)
            <span class="font-['Newsreader'] font-semibold text-[11px] leading-[18.15px] tracking-[1.54px] uppercase text-[#0E606B] block mb-2">
                {{ $projectsImpact->section }}
            </span>
            @endif
            <h2 class="font-['Newsreader'] font-extrabold text-[38px] leading-[44.84px] tracking-[-0.38px] text-[#0F172A]">
                {{ $projectsImpact?->heading }}
            </h2>
        </div>

        <!-- 4-COLUMN STATS GRID -->
        @if($projectsStats->isNotEmpty())
        <div class="w-full max-w-[1204px] mx-auto grid grid-cols-2 md:grid-cols-4 gap-[1px] border border-[#EEF3F8] overflow-hidden rounded-[4px] bg-[#EEF3F8]">
            @foreach($projectsStats as $stat)
            <div class="bg-white pt-[36px] pr-[28px] pb-[36px] pl-[28px] flex flex-col gap-[16px] text-left">
                <div class="flex flex-col gap-[10px]">
                    <div class="font-['Newsreader'] font-extrabold text-[44px] leading-none flex items-baseline">
                        <span class="text-[#A80C18]">{{ $stat->heading }}</span>
                    </div>
                    <div class="w-[36px] h-[3px] rounded-sm bg-[#18909C]"></div>
                </div>
                <span class="font-['Newsreader'] font-medium text-[13px] leading-[21.45px] tracking-[0.78px] uppercase text-[#6B7280]">
                    {{ $stat->section }}
                </span>
            </div>
            @endforeach
        </div>
        @endif
    </div>
</section>


<!-- WORK WITH US SECTION -->
<section class="proj-wwu w-full h-auto md:h-[421px] bg-[#F1F5F9] relative overflow-hidden border-b border-[#CBD5E1] flex items-center justify-center py-[48px] md:py-0">

    <div class="hidden md:block absolute pointer-events-none" style="width:320px;height:320px;top:-60px;right:-60px;border-radius:160px;background:rgba(0,48,84,0.05);"></div>

    <div class="w-full max-w-[1204px] mx-auto px-4 mt-10 md:px-0 flex flex-col items-center justify-center text-center relative z-10 gap-[13px]">

        @if($projectsWorkWithUs?->section)
        <span class="text-[#0E606B] font-['Newsreader'] font-semibold text-[11px] uppercase tracking-[1.54px]">
            {{ $projectsWorkWithUs->section }}
        </span>
        @endif

        <h2 class="text-[#003054] font-['Newsreader'] font-extrabold text-[38px] leading-[45.6px] max-w-[800px] m-0">
            {{ $projectsWorkWithUs?->heading }}
        </h2>

        @if($projectsWorkWithUs?->description)
        <p class="text-[#475569] font-['Newsreader'] text-[16px] leading-[28px] max-w-[620px] m-0">
            {{ cleanText($projectsWorkWithUs->description) }}
        </p>
        @endif

        <div class="flex items-center gap-4 mt-[15px] mb-10">
            @if($projectsWorkWithUs?->sub_heading)
            <a href="{{ route('contact') }}"
               class="btn-primary-wwu bg-[#003054] px-[32px] py-[14px] rounded-[6px] inline-flex items-center justify-center gap-1 text-white text-[14px] font-bold transition-all duration-200 hover:bg-[#002040] shadow-sm">
                <span>{{ $projectsWorkWithUs->sub_heading }}</span>
                <span class="inline-block translate-y-[-1px]">→</span>
            </a>
            @endif

            @if($projectsWorkWithUs?->design_word)
            <a href="{{ route('about') }}"
               class="btn-outline-wwu border-[2px] border-[#003054]/30 px-[32px] py-[14px] rounded-[6px] inline-flex items-center justify-center text-[#003054] text-[14px] font-bold transition-all duration-200 hover:bg-[#003054]/10">
                <span>{{ $projectsWorkWithUs->design_word }}</span>
            </a>
            @endif
        </div>
    </div>
</section>
@endsection
