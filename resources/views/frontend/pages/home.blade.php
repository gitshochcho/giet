@extends('frontend.layout.app')

@section('content')

{{-- ===== 1. HERO SLIDER ===== --}}
<header id="hero-slider" class="w-full h-auto md:h-[682.85px] min-h-[400px] md:min-h-[600px] relative flex flex-col justify-between items-center text-center text-white overflow-hidden bg-[#00223D] select-none">

  <div id="hero-slides" class="absolute inset-0 w-full h-full">

    @forelse($sliderItems as $i => $slide)
    @php
      $bgImg = $slide->imageUrl();
      $bgStyle = $bgImg
        ? "background-image:linear-gradient(rgba(0,24,43,0.58),rgba(0,24,43,0.58)),url('{$bgImg}');background-size:cover;background-position:center;"
        : "background-color:#00223D;";

      $title = $slide->title ?? '';
      $dw    = $slide->design_word ?? '';
      $titleHtml = $dw
        ? str_replace($dw, '<span style="color:#18909C;">'.$dw.'</span>', e($title))
        : e($title);
    @endphp
    <div class="hero-slide absolute inset-0 w-full h-full transition-opacity duration-700 {{ $i === 0 ? 'opacity-100' : 'opacity-0' }}" style="{{ $i !== 0 ? 'pointer-events:none;' : '' }}">
      <div class="absolute inset-0" style="{{ $bgStyle }}"></div>
      <div class="relative z-10 flex flex-col items-center justify-center h-full max-w-[1204px] mx-auto px-4 pt-[45px]">
        @if($slide->tagline)
        <span class="text-[10px] font-bold uppercase tracking-[2.5px] text-gray-300 mb-5">— {{ $slide->tagline }} —</span>
        @endif
        <h1 style="font-family:'Merriweather',serif;font-weight:700;font-size:clamp(28px,5vw,56px);line-height:1.2;letter-spacing:-0.5px;" class="text-white text-center mb-5 drop-shadow-md">
          {!! $titleHtml !!}
        </h1>
        @if($slide->description)
        <p class="font-['Newsreader'] text-[15px] leading-[26px] text-white/85 max-w-[640px] text-center mb-8">
          {{ strip_tags($slide->description) }}
        </p>
        @endif
        <a href="{{ route('services') }}" class="font-['Inter'] font-semibold text-[13px] bg-[#BA0C1B] text-white px-[26px] py-[11px] rounded-[4px] flex items-center gap-2 hover:bg-[#960A14] transition-all duration-150 shadow-[0px_4px_4px_0px_rgba(0,0,0,0.25)]">
          Explore ➔
        </a>
      </div>
    </div>
    @empty
    {{-- Fallback slide if no slides added --}}
    <div class="hero-slide absolute inset-0 w-full h-full opacity-100">
      <div class="absolute inset-0" style="background-color:#00223D;"></div>
      <div class="relative z-10 flex flex-col items-center justify-center h-full max-w-[1204px] mx-auto px-4 pt-[45px]">
        <h1 style="font-family:'Merriweather',serif;font-weight:700;font-size:clamp(28px,5vw,56px);line-height:1.2;" class="text-white text-center mb-5">
          Welcome to <span style="color:#18909C;">GIET</span>
        </h1>
        <a href="{{ route('services') }}" class="font-['Inter'] font-semibold text-[13px] bg-[#BA0C1B] text-white px-[26px] py-[11px] rounded-[4px] flex items-center gap-2 hover:bg-[#960A14] transition-all duration-150">
          Explore ➔
        </a>
      </div>
    </div>
    @endforelse

  </div>

  <!-- CONTROLS BAR -->
  <div style="background-color:#001F36;" class="w-full h-[82px] relative z-20 flex items-center justify-center gap-[24px] border-t border-white/5 mt-auto">
    <button id="hero-prev" class="w-[32px] h-[32px] rounded-full border border-white/15 bg-white/5 flex items-center justify-center text-white/60 hover:text-white hover:bg-white/10 transition-all cursor-pointer">
      <svg width="10" height="10" viewBox="0 0 16 16" fill="none"><path d="M10 13L5 8L10 3" stroke="currentColor" stroke-width="1.75" stroke-linecap="round" stroke-linejoin="round"/></svg>
    </button>
    <div id="hero-dots" class="flex items-center gap-[8px]">
      @forelse($sliderItems as $i => $slide)
      <button class="hero-dot transition-all duration-300 rounded-full {{ $i === 0 ? 'h-[3px] w-[32px] bg-[#18909C]' : 'h-[2px] w-[20px] bg-white/20' }}" data-index="{{ $i }}"></button>
      @empty
      <button class="hero-dot h-[3px] w-[32px] bg-[#18909C] rounded-full" data-index="0"></button>
      @endforelse
    </div>
    <button id="hero-next" class="w-[32px] h-[32px] rounded-full border border-white/15 bg-white/5 flex items-center justify-center text-white/60 hover:text-white hover:bg-white/10 transition-all cursor-pointer">
      <svg width="10" height="10" viewBox="0 0 16 16" fill="none"><path d="M6 3L11 8L6 13" stroke="currentColor" stroke-width="1.75" stroke-linecap="round" stroke-linejoin="round"/></svg>
    </button>
  </div>

</header>

<script>
(function () {
  const slides = document.querySelectorAll('.hero-slide');
  const dots   = document.querySelectorAll('.hero-dot');
  if (!slides.length) return;
  let current = 0;
  let timer;

  function goTo(index) {
    slides[current].style.opacity = '0';
    slides[current].style.pointerEvents = 'none';
    dots[current].style.height  = '2px';
    dots[current].style.width   = '20px';
    dots[current].style.backgroundColor = 'rgba(255,255,255,0.2)';

    current = (index + slides.length) % slides.length;

    slides[current].style.opacity = '1';
    slides[current].style.pointerEvents = '';
    dots[current].style.height  = '3px';
    dots[current].style.width   = '32px';
    dots[current].style.backgroundColor = '#18909C';
  }

  function startAuto() { timer = setInterval(function () { goTo(current + 1); }, 5000); }
  function resetAuto()  { clearInterval(timer); startAuto(); }

  document.getElementById('hero-next').addEventListener('click', function () { goTo(current + 1); resetAuto(); });
  document.getElementById('hero-prev').addEventListener('click', function () { goTo(current - 1); resetAuto(); });
  dots.forEach(function (dot) {
    dot.addEventListener('click', function () { goTo(+dot.dataset.index); resetAuto(); });
  });
  startAuto();
})();
</script>


{{-- ===== 2. ABOUT GIET SECTION ===== --}}
<section class="w-full bg-white pt-[48px] pb-[48px] md:pt-[88px] md:pb-[88px] px-4 md:px-8 flex items-start justify-center select-none">
  <div class="w-full max-w-[1204px] mx-auto flex flex-col md:flex-row gap-[40px] md:gap-[80px] items-start">

    {{-- Left: Heading + Description + Button --}}
    <div class="w-full md:w-[512px] mt-0 md:mt-[55.85px] flex flex-col gap-[12.8px] items-start text-left">
      <span class="text-[11px] font-bold uppercase tracking-[2px] text-[#0E606B] block">
        {{ $homeAboutTrace?->section ?? 'About GIET' }}
      </span>
      @php
        $aboutHeading = $homeAboutTrace?->heading ?? 'Transforming Challenges Into Strategic Opportunities';
        $aboutDw = $homeAboutTrace?->design_word ?? '';
        $aboutHeadingHtml = $aboutDw
          ? str_replace($aboutDw, '<span style="color:#18909C;">'.$aboutDw.'</span>', e($aboutHeading))
          : e($aboutHeading);
      @endphp
      <h2 class="font-['Newsreader'] font-bold text-[36px] leading-[43.2px] tracking-[0] text-[#0F172A]">
        {!! $aboutHeadingHtml !!}
      </h2>
      @if($homeAboutTrace?->description)
      <p class="font-['Newsreader'] font-normal text-[17px] leading-[28.9px] text-[#1A1A1A] mb-[3.2px]">
        {{ strip_tags($homeAboutTrace->description) }}
      </p>
      @endif
      <a href="{{ route('about') }}" class="w-[159px] h-[43.44px] pt-[9px] pr-[22px] pb-[10.44px] pl-[22px] border border-[#003054] text-[#003054] font-['Newsreader'] font-semibold text-[13px] leading-[21.45px] rounded-[6px] bg-transparent flex items-center justify-center gap-2 hover:bg-[#003054]/5 transition-all duration-150 whitespace-nowrap" style="text-decoration:none;">
        <span>Learn About Us</span>
        <span class="text-[15px] font-normal">→</span>
      </a>
    </div>

    {{-- Right: 3 numbered items --}}
    <div class="w-full md:w-[512px] flex flex-col">

      @foreach([$homeAboutTraceOne, $homeAboutTraceTwo, $homeAboutTraceThree] as $idx => $item)
      @if($item)
      <div class="w-full pt-[28px] pb-[28px] flex gap-[24px] items-start {{ $idx < 2 ? 'border-b border-[#EEF3F8]' : '' }}">
        <span style="font-family:'Merriweather',serif;font-weight:800;font-size:36px;line-height:36px;" class="text-[#BBCDDE] shrink-0">
          {{ str_pad($idx + 1, 2, '0', STR_PAD_LEFT) }}
        </span>
        <div class="flex flex-col gap-1 text-left">
          <h4 style="font-family:'Merriweather',serif;font-weight:700;font-size:17px;line-height:22.95px;" class="text-[#0F172A]">
            {{ $item->heading }}
          </h4>
          @if($item->description)
          <p class="font-['Newsreader'] text-gray-500 text-xs leading-relaxed">
            {{ strip_tags($item->description) }}
          </p>
          @endif
        </div>
      </div>
      @endif
      @endforeach

    </div>
  </div>
</section>


{{-- ===== 3. FOCUS AREAS / OUR WORK ===== --}}
<section class="w-full bg-[#F7F9FB] pt-[48px] pb-[48px] md:pt-[88px] md:pb-[88px] px-4 md:px-8 flex flex-col items-center select-none">

  <div class="w-full max-w-[1204px] flex justify-between items-end mb-10">
    <div class="text-left">
      <span class="font-['Newsreader'] font-semibold text-[11px] leading-[18.15px] tracking-[1.54px] uppercase text-[#0E606B] block mb-2">
        Our Focus Areas
      </span>
      <h2 class="font-['Newsreader'] font-bold text-[36px] leading-[43.2px] text-[#0F172A]">
        Where We Direct Our Work
      </h2>
    </div>
    <a href="{{ route('services') }}" class="font-['Newsreader'] font-semibold text-[13px] w-[135px] h-[43.44px] pt-[9px] pr-[22px] pb-[10.44px] pl-[22px] border border-[#003054] text-[#003054] bg-white rounded-[6px] flex items-center justify-center hover:bg-[#003054]/5 transition-all duration-150 shadow-sm whitespace-nowrap" style="text-decoration:none;">
      See All
    </a>
  </div>

  <div class="w-full max-w-[1204px] grid grid-cols-1 md:grid-cols-3 gap-[22px]">
    @forelse($homeServices as $svc)
    <div class="w-full bg-white border border-[#E4EAF0] rounded-[10px] overflow-hidden flex flex-col transition-all duration-200 hover:shadow-md">
      @if($svc->imageUrl())
      <img class="w-full h-48 object-cover" src="{{ $svc->imageUrl() }}" alt="{{ $svc->service_name }}">
      @else
      <div class="w-full h-48 bg-[#EEF3F8] flex items-center justify-center">
        <svg width="48" height="48" fill="none" stroke="#CBD5E1" stroke-width="1" viewBox="0 0 24 24"><rect x="3" y="3" width="18" height="18" rx="2"/></svg>
      </div>
      @endif
      <div class="p-6 flex flex-col flex-grow text-left">
        <span class="font-['Newsreader'] font-semibold text-[10.5px] leading-none tracking-[1.47px] text-[#0E606B] uppercase mb-2 block">
          {{ $svc->section ?: $svc->service_name }}
        </span>
        <h3 style="font-family:'Merriweather',serif;font-weight:800;font-size:18px;line-height:24.3px;" class="text-[#0F172A] mb-3">
          {{ $svc->service_name }}
        </h3>
        @if($svc->description)
        <p class="font-['Newsreader'] font-normal text-[13.5px] leading-[23.22px] text-[#1A1A1A] mb-6 flex-grow">
          {{ Str::limit(strip_tags($svc->description), 140) }}
        </p>
        @endif
        <a href="{{ route('serviceDetails', $svc->id) }}" class="font-['Newsreader'] font-semibold text-[12px] leading-[19.8px] tracking-[0.48px] text-[#18909C] hover:text-[#0E606B] flex items-center gap-1 mt-auto" style="text-decoration:none;">
          Explore area &rarr;
        </a>
      </div>
    </div>
    @empty
    <p class="col-span-3 text-center text-gray-400 py-12">No focus areas added yet.</p>
    @endforelse
  </div>

  <div class="w-full flex justify-center mt-12">
    <a href="{{ route('services') }}" class="w-[204px] h-[43.44px] pt-[9px] pr-[22px] pb-[10.44px] pl-[22px] border border-[#003054] text-[#003054] bg-white font-['Newsreader'] font-semibold text-[13px] rounded-[6px] flex items-center justify-center gap-1 hover:bg-[#003054]/5 transition-all duration-150 shadow-sm whitespace-nowrap cursor-pointer" style="text-decoration:none;">
      <span>See All Focus Areas</span>
      <span class="text-[14px] font-normal font-sans">→</span>
    </a>
  </div>

</section>


{{-- ===== 4. MISSION SECTION ===== --}}
@php
  $homeMission = contentBlock('home_mission');
@endphp
<section class="w-full bg-[#003054] pt-[48px] pb-[48px] md:pt-[88px] md:pb-[88px] px-4 md:px-8 flex items-center justify-center relative select-none">
  <div class="w-full max-w-[1204px] flex flex-col md:flex-row justify-between items-start gap-10 md:gap-0">

    {{-- Left: Quote --}}
    <div class="w-full md:w-[520px] flex flex-col items-start text-left relative pt-[24px]">
      <div class="w-[44px] h-[3.5px] bg-[#D12630] absolute top-0 left-0"></div>
      <h2 style="font-family:'Merriweather',serif;font-weight:600;font-size:32px;line-height:46.4px;letter-spacing:-0.01em;" class="text-white">
        "{{ $homeMission?->heading ?? 'Evidence-based reform is not optional — it is the only path to governance that truly serves citizens.' }}"
      </h2>
      @if($homeMission?->sub_heading)
      <div class="mt-[16px] flex items-center gap-[10px]">
        <div class="w-[28px] h-[1px] bg-white/40"></div>
        <p style="font-family:'Newsreader',serif;font-weight:400;font-size:13px;font-style:italic;color:rgba(255,255,255,0.6);">
          {{ $homeMission->sub_heading }}
        </p>
      </div>
      @else
      <div class="mt-[16px] flex items-center gap-[10px]">
        <div class="w-[28px] h-[1px] bg-white/40"></div>
        <p style="font-family:'Newsreader',serif;font-weight:400;font-size:13px;font-style:italic;color:rgba(255,255,255,0.6);">
          Dr. Rafiqul Islam, Founding Director, GIET
        </p>
      </div>
      @endif
    </div>

    {{-- Right: Mission text + pillars --}}
    <div class="w-full md:w-[520px] flex flex-col justify-between text-left gap-6 md:gap-0">
      <div class="flex flex-col gap-[16px]">
        <span class="font-['Newsreader'] font-semibold text-[11px] tracking-[0.15em] text-[#18909C] uppercase block mb-1">
          {{ $homeMission?->section ?? 'Our Mission' }}
        </span>
        <p class="font-['Newsreader'] font-normal text-[15px] leading-[27.75px] text-white/60">
          {{ $homeMission?->description ? strip_tags($homeMission->description) : 'GIET is a non-political, non-profit organization dedicated to promoting transparent, accountable governance and sustainable economic transformation in Bangladesh. We perform in-depth research, encourage multi-stakeholder dialogue, and convert evidence into practical policy recommendations.' }}
        </p>
      </div>

      @if($homeMission?->design_word)
      {{-- If design_word has pipe-separated pillar list: "Transparent Governance|Economic Competitiveness|..." --}}
      @php $pillars = array_filter(explode('|', $homeMission->design_word)); @endphp
      @if(count($pillars))
      <ul class="grid grid-cols-2 gap-x-[32px] gap-y-[16px] pt-[24px]">
        @foreach($pillars as $pillar)
        <li class="flex items-center gap-[10px] whitespace-nowrap">
          <svg width="16" height="16" fill="none" viewBox="0 0 16 16"><circle cx="8" cy="8" r="7" stroke="rgba(255,255,255,0.3)" stroke-width="1"/><path d="M5 8l2 2 4-4" stroke="#18909C" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg>
          <span class="font-medium text-[13px] leading-none text-white/55">{{ trim($pillar) }}</span>
        </li>
        @endforeach
      </ul>
      @endif
      @else
      <ul class="grid grid-cols-2 gap-x-[32px] gap-y-[16px] pt-[24px]">
        @foreach(['Transparent Governance','Economic Competitiveness','Institutional Reform','Digital Transformation','Social Inclusion','Evidence-Based Policy'] as $pillar)
        <li class="flex items-center gap-[10px] whitespace-nowrap">
          <svg width="16" height="16" fill="none" viewBox="0 0 16 16"><circle cx="8" cy="8" r="7" stroke="rgba(255,255,255,0.3)" stroke-width="1"/><path d="M5 8l2 2 4-4" stroke="#18909C" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg>
          <span class="font-medium text-[13px] leading-none text-white/55">{{ $pillar }}</span>
        </li>
        @endforeach
      </ul>
      @endif
    </div>

  </div>
</section>


{{-- ===== 5. PROJECTS SECTION ===== --}}
<section class="w-full bg-[#FFFFFF] pt-[48px] pb-[48px] md:pt-[88px] md:pb-[88px] px-4 md:px-8 flex justify-center items-center select-none">
  <div class="w-full max-w-[1204px] md:px-0 flex flex-col justify-between items-center gap-8">

    <div class="w-full max-w-[1204px] text-left flex flex-col gap-2">
      <span class="font-['Newsreader'] font-semibold text-[11px] leading-[18.15px] tracking-[1.54px] uppercase text-[#0E606B] block">
        Our Projects
      </span>
      <h2 class="font-['Newsreader'] font-bold text-[36px] leading-[43.2px] text-[#0F172A] mt-1">
        Work That Creates Impact
      </h2>
      <p class="font-['Newsreader'] font-normal text-[17px] leading-[28.9px] text-[#1A1A1A] max-w-[560px] mt-2 pb-[0.77px]">
        GIET delivers governance reform, policy advisory, digital transformation, and research projects across Bangladesh for governments, development institutions, and regulatory bodies.
      </p>
    </div>

    <div class="w-full max-w-[1204px] grid grid-cols-1 md:grid-cols-3 gap-[20px] mt-10">
      @forelse($homeProjects as $project)
      <div class="w-full bg-white border border-[#EEF3F8] rounded-[16px] overflow-hidden flex flex-col shadow-[0px_8px_36px_0px_#00305421] hover:shadow-[0px_8px_36px_0px_#00305421] transition-shadow duration-300">
        <div class="w-full h-[160px] overflow-hidden">
          @if($project->imageUrl())
          <img class="w-full h-full object-cover" src="{{ $project->imageUrl() }}" alt="{{ $project->project_title }}">
          @else
          <div class="w-full h-full bg-[#EEF3F8] flex items-center justify-center">
            <svg width="40" height="40" fill="none" stroke="#CBD5E1" stroke-width="1" viewBox="0 0 24 24"><rect x="3" y="3" width="18" height="18" rx="2"/><path d="M3 9h18M9 21V9"/></svg>
          </div>
          @endif
        </div>
        <div class="p-[22px] flex flex-col flex-grow text-left gap-[10px]">
          @if($project->services->first())
          <span style="font-family:'Inter',sans-serif;font-weight:700;font-size:10px;letter-spacing:1px;text-transform:uppercase;" class="text-[#0E606B]">
            {{ $project->services->first()->section ?: $project->services->first()->service_name }}
          </span>
          @endif
          <h4 style="font-family:'Merriweather',serif;font-weight:700;font-size:15px;line-height:22px;" class="text-[#0F172A]">
            {{ $project->project_title }}
          </h4>
          @if($project->short_description)
          <p style="font-family:'Newsreader',serif;font-weight:400;font-size:13px;line-height:21px;" class="text-[#475569] line-clamp-3">
            {{ strip_tags($project->short_description) }}
          </p>
          @endif
          <div class="mt-auto pt-[14px] border-t border-[#EEF3F8] flex justify-between items-center">
            <span style="font-family:'Inter',sans-serif;font-weight:400;font-size:12px;" class="text-[#94A3B8]">
              {{ $project->services->pluck('service_name')->implode(', ') }}
            </span>
            <a href="{{ route('projectdetails', $project->id) }}" style="font-family:'Inter',sans-serif;font-weight:600;font-size:13px;text-decoration:none;" class="text-[#A80C18] hover:opacity-75 flex items-center gap-1">
              View Project →
            </a>
          </div>
        </div>
      </div>
      @empty
      <p class="col-span-3 text-center text-gray-400 py-12">No projects added yet.</p>
      @endforelse
    </div>

    <div class="w-full flex justify-center mt-6">
      <a href="{{ route('projects') }}" class="w-[180px] h-[44px] border border-slate-300 text-[#0F172A] font-['Newsreader'] font-semibold text-[13px] rounded-[6px] flex items-center justify-center gap-2 hover:bg-slate-50 transition-all duration-150 shadow-sm whitespace-nowrap cursor-pointer" style="text-decoration:none;">
        <span>View All Projects</span>
        <span class="text-[14px] font-sans font-normal">&rarr;</span>
      </a>
    </div>

  </div>
</section>


{{-- ===== 6. PARTNERS SECTION ===== --}}
@if($partners->count())
<section class="w-full bg-[#F4F6F8] border-t border-[#E4EAF0] flex items-center justify-center relative select-none py-12">
  <div class="w-full max-w-[1204px] mx-auto px-4 md:px-0 flex flex-col justify-between items-center relative gap-8">

    <h2 style="font-family:'Lora',serif;font-weight:700;font-size:42px;line-height:50.4px;" class="text-[#0F172A] text-center">
      Our Partners
    </h2>

    <div class="w-full max-w-[1204px] grid grid-cols-2 md:grid-cols-5 gap-[12px] items-center">
      @foreach($partners as $partner)
      <div class="w-full h-[100px] bg-white border border-[#E4EAF0] rounded-[10px] flex items-center justify-center p-5 transition-all duration-200 hover:shadow-md">
        @if($partner->imageUrl())
        <img class="max-h-[56px] object-contain opacity-90" src="{{ $partner->imageUrl() }}" alt="Partner">
        @else
        <span class="text-[#94A3B8] text-[13px] font-semibold text-center">{{ $partner->name ?? 'Partner' }}</span>
        @endif
      </div>
      @endforeach
    </div>

  </div>
</section>
@endif

@endsection
