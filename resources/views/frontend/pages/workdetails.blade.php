@extends('frontend.layout.app')

@section('content')

@php
  $bgImg = $service->imageUrl();
  $bgStyle = $bgImg
    ? "background-image:linear-gradient(rgba(0,48,84,0.82),rgba(0,48,84,0.93)),url('{$bgImg}');background-size:cover;background-position:center;"
    : "background-color:#003054;";
@endphp

{{-- ===== 1. HERO ===== --}}
<section style="width:100%;position:relative;overflow:hidden;{{ $bgStyle }}">

  {{-- Hero top: breadcrumb + title --}}
  <div style="width:100%;padding:50px 32px 40px;display:flex;align-items:flex-end;">
    <div style="width:100%;max-width:1204px;margin:0 auto;display:flex;flex-direction:column;gap:11px;">

      <div style="font-family:'Newsreader',Georgia,serif;font-size:12px;line-height:1;color:rgba(255,255,255,0.56);">
        <a href="{{ route('home') }}" style="color:inherit;text-decoration:none;">Home</a>
        / <a href="{{ route('services') }}" style="color:inherit;text-decoration:none;">Areas of Work</a>
        / <span style="color:rgba(255,255,255,0.38);">{{ $service->service_name }}</span>
      </div>

      <h1 style="font-family:'Newsreader',Georgia,serif;font-weight:800;font-size:clamp(28px,5vw,58px);line-height:1.1;letter-spacing:-1.16px;color:#fff;margin:4px 0 0 0;">
        {{ $service->heading ?: $service->service_name }}
        @if($service->design_word)
        <br><span style="color:#18909C;">{{ $service->design_word }}</span>
        @endif
      </h1>

    </div>
  </div>

  {{-- CAT STRIP: solutions as focus areas --}}
  @if($service->solutions->count())
  <div style="width:100%;background:rgba(0,0,0,0.25);border-top:1px solid rgba(255,255,255,0.08);padding:0 32px;">
    <div style="width:100%;max-width:1204px;margin:0 auto;display:grid;grid-template-columns:repeat({{ min($service->solutions->count(), 4) }},1fr);">
      @foreach($service->solutions->take(4) as $i => $sol)
      <div style="display:flex;align-items:flex-start;gap:12px;padding:20px 24px;{{ $i < $service->solutions->take(4)->count()-1 ? 'border-right:1px solid rgba(255,255,255,0.08);' : '' }}">
        <div style="width:36px;height:36px;min-width:36px;border-radius:8px;background:rgba(255,255,255,0.08);display:flex;align-items:center;justify-content:center;">
          <svg width="18" height="18" fill="none" stroke="#8FB2C9" stroke-width="1.5" viewBox="0 0 24 24"><path d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"/></svg>
        </div>
        <div style="display:flex;flex-direction:column;gap:2px;">
          <span style="font-family:'Newsreader',Georgia,serif;font-size:10px;font-weight:600;color:#8FB2C9;text-transform:uppercase;letter-spacing:0.5px;">Focus Area</span>
          <span style="font-family:'Newsreader',Georgia,serif;font-size:14px;font-weight:700;color:#fff;line-height:1.3;">{{ $sol->heading }}</span>
          @if($sol->sub_heading)
          <span style="font-family:'Newsreader',Georgia,serif;font-size:11px;color:rgba(255,255,255,0.5);">{{ $sol->sub_heading }}</span>
          @endif
        </div>
      </div>
      @endforeach
    </div>
  </div>
  @endif

</section>

{{-- ===== 2. OVERVIEW + DETAILS ===== --}}
<section class="w-full py-[48px] md:py-[72px] px-4 md:px-8 bg-white select-none flex items-center justify-center">
  <div class="w-full max-w-[1204px] mx-auto grid grid-cols-1 md:grid-cols-2 gap-[40px] md:gap-[72px]">

    {{-- Overview --}}
    <div class="w-full flex flex-col text-left">
      <h3 style="font-family:'Newsreader',Georgia,serif;font-weight:800;font-size:22px;letter-spacing:0.88px;color:#003054;text-transform:uppercase;margin:0 0 12px 0;">
        Overview
      </h3>
      <div style="background:#18909C;width:100%;height:2px;margin-bottom:24px;"></div>

      @if($service->overview)
      <div class="overview-content" style="font-family:'Newsreader',Georgia,serif;font-size:15px;line-height:27.3px;color:#4B5563;">
        {!! $service->overview !!}
      </div>
      @elseif($service->description)
      <div class="overview-content" style="font-family:'Newsreader',Georgia,serif;font-size:15px;line-height:27.3px;color:#4B5563;">
        {!! $service->description !!}
      </div>
      @endif
      <style>
        .overview-content p { margin: 0 0 8px 0; }
        .overview-content p:last-child { margin-bottom: 0; }
        .overview-content br { line-height: 1; }
      </style>
    </div>

    {{-- Details (Our Services Include) --}}
    <div class="w-full flex flex-col text-left">
      <h3 style="font-family:'Newsreader',Georgia,serif;font-weight:800;font-size:22px;letter-spacing:0.88px;color:#003054;text-transform:uppercase;margin:0 0 12px 0;">
        Our Services Include
      </h3>
      <div style="background:#18909C;width:100%;height:2px;margin-bottom:24px;"></div>

      <div class="flex flex-col">
        @forelse($service->details as $index => $detail)
        <div style="width:100%;display:flex;align-items:center;gap:14px;padding:{{ $index === 0 ? '0 0 13px' : '13px 0' }};border-bottom:1px solid #E4EAF0;">
          <div style="background:#003054;width:36px;height:36px;border-radius:50%;display:flex;align-items:center;justify-content:center;flex-shrink:0;overflow:hidden;">
            @if($detail->iconUrl())
              <img src="{{ $detail->iconUrl() }}" alt="" style="width:16px;height:16px;object-fit:contain;filter:brightness(0) invert(1);" loading="lazy" decoding="async">
            @else
              <svg width="16" height="16" fill="none" stroke="white" stroke-width="2" viewBox="0 0 24 24"><path d="M5 13l4 4L19 7"/></svg>
            @endif
          </div>
          <p style="font-family:'Newsreader',Georgia,serif;font-size:15px;line-height:23px;color:#4B5563;margin:0;">
            {{ strip_tags($detail->text) }}
          </p>
        </div>
        @empty
        <p style="font-family:'Newsreader',Georgia,serif;font-size:14px;color:#94A3B8;">No details added yet.</p>
        @endforelse
      </div>
    </div>

  </div>
</section>

{{-- ===== 3. PRODUCTS & SOLUTIONS ===== --}}
@if($service->solutions->count())
<section style="border-top:1px solid #E4EAF0;background:#F7F9FB;"
  class="w-full py-[48px] md:py-[72px] select-none flex flex-col items-center justify-center px-4 md:px-8">
  <div class="w-full max-w-[1204px] mx-auto flex flex-col gap-[44px] items-center">

    {{-- Title with lines --}}
    <div style="display:flex;align-items:center;justify-content:center;gap:18px;width:100%;">
      <div style="background:#18909C;flex:1;height:2px;border-radius:2px;"></div>
      <h2 style="font-family:'Newsreader',Georgia,serif;font-weight:800;font-size:13px;letter-spacing:2px;color:#003054;text-transform:uppercase;white-space:nowrap;margin:0;">
        Products &amp; Solutions
      </h2>
      <div style="background:#18909C;flex:1;height:2px;border-radius:2px;"></div>
    </div>

    {{-- Cards grid — inline style so count is truly dynamic --}}
    @php $solCount = $service->solutions->count(); @endphp
    <div style="display:grid;grid-template-columns:repeat({{ min($solCount, 7) }},1fr);gap:8px 16px;width:100%;">
      @foreach($service->solutions as $solution)
      <div style="display:flex;flex-direction:column;align-items:center;text-align:center;gap:10px;padding:4px 8px 8px;">

        {{-- Icon box --}}
        <div style="width:72px;height:72px;border-radius:14px;background:#003054;display:flex;align-items:center;justify-content:center;flex-shrink:0;">
          <svg width="28" height="28" fill="none" stroke="white" stroke-width="1.5" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2"/>
          </svg>
        </div>

        {{-- Title --}}
        <h4 style="font-family:'Newsreader',Georgia,serif;font-weight:800;font-size:10.5px;letter-spacing:0.84px;color:#003054;text-transform:uppercase;margin:0;line-height:1.4;">
          {{ $solution->heading }}
        </h4>

        {{-- Description --}}
        @if($solution->sub_heading)
        <p style="font-family:'Newsreader',Georgia,serif;font-size:11.5px;line-height:17px;color:#6B7280;margin:0;">
          {{ $solution->sub_heading }}
        </p>
        @endif

      </div>
      @endforeach
    </div>

  </div>
</section>
@endif

{{-- ===== 4. RELATED PROJECTS ===== --}}
@if($relatedProjects->count())
<section class="w-full py-[48px] md:py-[80px] px-4 md:px-8 bg-white select-none flex items-center justify-center">
  <div class="w-full max-w-[1204px] mx-auto flex flex-col gap-11">

    <div style="width:100%;display:flex;justify-content:space-between;align-items:flex-end;padding-bottom:16px;">
      <div style="text-align:left;">
        <span style="font-family:'Newsreader',Georgia,serif;font-weight:600;font-size:11px;letter-spacing:1.76px;color:#0E606B;text-transform:uppercase;display:inline-block;margin-bottom:8px;">
          Related Projects
        </span>
        <h2 style="font-family:'Newsreader',Georgia,serif;font-weight:800;font-size:36px;line-height:42.48px;letter-spacing:-0.36px;color:#003054;margin:0;">
          Work We Have Delivered
        </h2>
      </div>
      <a href="{{ route('projects') }}" style="font-family:'Newsreader',Georgia,serif;font-weight:600;font-size:13px;color:#003054;text-decoration:none;border-bottom:2px solid #003054;padding-bottom:5px;">
        All Projects →
      </a>
    </div>

    <div class="w-full max-w-[1204px] mx-auto grid grid-cols-1 md:grid-cols-3 gap-[20px]">
      @foreach($relatedProjects as $project)
      <div style="width:100%;border:1px solid #E4EAF0;border-radius:14px;overflow:hidden;display:flex;flex-direction:column;background:#fff;">
        <div style="position:relative;height:180px;background:#0F172A;overflow:hidden;">
          @if($project->imageUrl())
            <img src="{{ $project->imageUrl() }}" alt="{{ $project->project_title }}" style="width:100%;height:100%;object-fit:cover;opacity:0.8;" loading="lazy" decoding="async">
          @else
            <div style="width:100%;height:100%;background:#1E3A5F;"></div>
          @endif
          @if($project->services?->first())
          <span style="background:#003054;position:absolute;bottom:0;left:0;color:#fff;font-size:9px;font-weight:700;text-transform:uppercase;padding:5px 12px;border-radius:0 4px 0 0;">
            {{ $project->services->first()->service_name }}
          </span>
          @endif
        </div>
        <div style="padding:20px;display:flex;flex-direction:column;justify-content:space-between;flex:1;text-align:left;">
          <div>
            <h4 style="font-family:'Newsreader',Georgia,serif;font-weight:800;font-size:15px;line-height:21px;color:#0F172A;margin:0 0 8px 0;">
              {{ $project->project_title }}
            </h4>
            @if($project->overview)
            <p style="font-family:'Newsreader',Georgia,serif;font-size:13px;line-height:21px;color:#1A1A1A;margin:0;">
              {{ Str::limit(cleanText($project->overview), 140) }}
            </p>
            @endif
          </div>
          <div style="display:flex;justify-content:space-between;align-items:center;padding-top:16px;border-top:1px solid #F1F5F9;margin-top:12px;">
            @if($project->project_status)
            <span style="font-family:'Newsreader',Georgia,serif;font-size:11.5px;color:#6B7280;">
              Completed · {{ $project->project_status }}
            </span>
            @else
            <span></span>
            @endif
            <a href="{{ route('projectdetails', $project->id) }}" style="font-family:'Newsreader',Georgia,serif;font-weight:600;font-size:12px;color:#A80C18;text-decoration:none;">
              View →
            </a>
          </div>
        </div>
      </div>
      @endforeach
    </div>

  </div>
</section>
@endif

{{-- ===== 5. OUR PEOPLE ===== --}}
@if($experts->count())
<section class="w-full py-[48px] md:py-[80px] px-4 md:px-8 bg-white select-none flex items-center justify-center">
  <div class="w-full max-w-[1204px] mx-auto flex flex-col gap-[44px]">

    <div style="width:100%;display:flex;justify-content:space-between;align-items:flex-end;padding-bottom:16px;">
      <div style="text-align:left;">
        <span style="font-family:'Newsreader',Georgia,serif;font-weight:600;font-size:11px;letter-spacing:1.76px;color:#0E606B;text-transform:uppercase;display:block;margin-bottom:4px;">
          Our People
        </span>
        <h2 style="font-family:'Newsreader',Georgia,serif;font-weight:800;font-size:36px;line-height:42.48px;letter-spacing:-0.36px;color:#003054;margin:0;">
          Experts in This Area
        </h2>
      </div>
      <a href="{{ route('team') }}" style="font-family:'Newsreader',Georgia,serif;font-weight:600;font-size:13px;color:#003054;text-decoration:none;border-bottom:2px solid #003054;padding-bottom:5px;">
        All Experts →
      </a>
    </div>

    <div class="w-full max-w-[1204px] mx-auto grid grid-cols-2 md:grid-cols-4 gap-[18px]">
      @foreach($experts as $expert)
      <a href="{{ route('teamdetails', $expert->id) }}" class="group w-full border border-[#E4EAF0] rounded-[14px] overflow-hidden bg-white hover:shadow-md transition-all flex flex-col text-left" style="text-decoration:none;">
        <div class="w-full h-[200px] bg-[#EEF3F8] overflow-hidden">
          @if($expert->imageUrl())
            <img src="{{ $expert->imageUrl() }}" alt="{{ $expert->fullName() }}" class="w-full h-full object-cover object-top" loading="lazy" decoding="async">
          @else
            <div class="w-full h-full bg-[#EEF3F8] flex items-center justify-center">
              <svg width="48" height="48" fill="none" stroke="#CBD5E1" stroke-width="1" viewBox="0 0 24 24"><path d="M20 21v-2a4 4 0 00-4-4H8a4 4 0 00-4 4v2"/><circle cx="12" cy="7" r="4"/></svg>
            </div>
          @endif
        </div>
        <div class="h-[4px] w-full overflow-hidden">
          <div class="h-full w-0 group-hover:w-full transition-all duration-500" style="background:linear-gradient(90deg,#003054 0%,#18909C 100%);"></div>
        </div>
        <div class="p-4 flex flex-col gap-1 flex-grow justify-between">
          <div>
            <h4 style="font-family:'Newsreader',Georgia,serif;font-weight:800;font-size:15px;line-height:1;color:#0F172A;margin:0 0 4px 0;">
              {{ $expert->fullName() }}
            </h4>
            <p style="font-family:'Newsreader',Georgia,serif;font-size:12px;line-height:16.8px;color:#6B7280;margin:0;min-height:34px;">
              {{ Str::limit($expert->designation, 60) }}
            </p>
          </div>
          @if($expert->experties && $expert->experties->count())
          <div class="flex gap-1.5 mt-1 flex-wrap">
            @foreach($expert->experties->take(2) as $exp)
            <span style="background:#E8F6F7;border:1px solid rgba(14,96,107,0.2);color:#0E606B;font-size:9px;font-weight:600;padding:2px 9px;border-radius:999px;">
              {{ Str::limit($exp->heading, 15) }}
            </span>
            @endforeach
          </div>
          @endif
        </div>
      </a>
      @endforeach
    </div>

  </div>
</section>
@endif

<!-- {{-- ===== 6. OTHER AREAS OF WORK ===== --}}
@if($otherServices->count())
<section style="width:100%;padding:48px 32px;background:#F7F9FB;display:flex;align-items:center;justify-content:center;">
  <div style="width:100%;max-width:1204px;margin:0 auto;">
    <div style="margin-bottom:32px;">
      <span style="font-family:'Newsreader',Georgia,serif;font-weight:600;font-size:11px;letter-spacing:1.76px;color:#0E606B;text-transform:uppercase;display:block;margin-bottom:4px;">
        Explore More
      </span>
      <h2 style="font-family:'Newsreader',Georgia,serif;font-weight:800;font-size:32px;color:#003054;margin:0;">
        Other Areas of Work
      </h2>
    </div>
    <div style="display:grid;grid-template-columns:repeat(auto-fill,minmax(240px,1fr));gap:18px;">
      @foreach($otherServices->take(4) as $other)
      <a href="{{ route('serviceDetails', $other->id) }}" style="display:flex;align-items:center;gap:14px;padding:20px;background:#fff;border:1px solid #E4EAF0;border-radius:12px;text-decoration:none;transition:box-shadow 0.2s;">
        <div style="width:40px;height:40px;min-width:40px;background:linear-gradient(135deg,#003054,#18909C);border-radius:8px;display:flex;align-items:center;justify-content:center;">
          <svg width="18" height="18" fill="none" stroke="#fff" stroke-width="1.5" viewBox="0 0 24 24"><path d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2"/><rect x="9" y="3" width="6" height="4" rx="1"/></svg>
        </div>
        <div>
          @if($other->section)
          <span style="font-family:'Newsreader',Georgia,serif;font-size:10px;color:#0E606B;font-weight:600;text-transform:uppercase;letter-spacing:1px;display:block;margin-bottom:2px;">
            {{ $other->section }}
          </span>
          @endif
          <span style="font-family:'Newsreader',Georgia,serif;font-weight:700;font-size:14px;color:#003054;line-height:1.3;">
            {{ $other->service_name }}
          </span>
        </div>
      </a>
      @endforeach
    </div>
  </div>
</section>
@endif -->

@endsection
