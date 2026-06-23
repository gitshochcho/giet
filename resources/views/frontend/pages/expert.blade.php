@extends('frontend.layout.app')

@section('content')

<!-- HERO BANNER SUPERSTRUCTURE -->
<section class="w-full bg-[#003054] overflow-hidden relative pt-[72px] pb-[72px] px-4 md:px-8 md:h-[372px]">

  <div class="absolute -top-[100px] -right-[100px] pointer-events-none bg-[rgba(24,144,156,0.07)] w-[400px] h-[400px] rounded-full"></div>

  <div class="w-full max-w-[1204px] mx-auto px-0 md:px-0 flex flex-col justify-center items-start z-10 relative gap-[15.2px]">

    <div class="flex items-center gap-1.5 text-[12px] text-white/45 font-['Newsreader'] leading-[19.8px]">
      <a href="{{ route('home') }}" class="hover:text-white transition-colors">Home</a>
      <span>/</span>
      <span class="text-white/45">Our Experts</span>
    </div>

    <div class="bg-[#18909C] w-[40px] h-[3px] rounded-[2px]"></div>

    <h1 class="text-white tracking-[-1.04px] font-['Newsreader'] font-extrabold text-[52px] leading-[57.2px] drop-shadow-sm m-0">
      @if($teamPageContent && $teamPageContent->heading)
        {{ $teamPageContent->heading }}
        @if($teamPageContent->design_word)
          <span class="text-[#18909C]">{{ $teamPageContent->design_word }}</span>
        @endif
      @else
        Our Experts
      @endif
    </h1>

    @if($teamPageContent && $teamPageContent->sub_heading)
    <p class="text-[17px] text-white/60 font-['Newsreader'] leading-[29.75px] max-w-[780px] m-0">
      {{ $teamPageContent->sub_heading }}
    </p>
    @endif

  </div>
</section>


<!-- LEADERSHIP TEAM SECTION -->
@if($leadership->count())
<section class="w-full bg-white pt-[48px] pb-[48px] md:pt-[88px] md:pb-[80px] px-4 md:px-8 box-border overflow-hidden">

  <div class="w-full max-w-[1204px] flex flex-col mx-auto gap-[52px]">

    <div class="flex flex-col gap-[12px]">
      <h2 style="font-family:'Newsreader',Georgia,serif;font-weight:800;font-size:38px;line-height:1.18;color:#0F172A;margin:0;">
        {{ $leadershipContent?->heading ?? 'Leadership Team' }}
        @if($leadershipContent?->design_word)
          <span style="color:#18909C;">{{ $leadershipContent->design_word }}</span>
        @endif
      </h2>
      @if($leadershipContent?->sub_heading)
      <p style="font-family:'Newsreader',Georgia,serif;font-size:16px;line-height:28px;color:#1A1A1A;max-width:540px;margin:0;">
        {{ $leadershipContent->sub_heading }}
      </p>
      @endif
    </div>

    <div class="grid grid-cols-1 md:grid-cols-3 gap-[24px]">
      @foreach($leadership as $member)
      <div class="group w-full border border-[#EEF3F8] rounded-[20px] flex flex-col bg-white">
        <div class="relative w-full h-[300px] overflow-hidden rounded-t-[20px]">
          @if($member->imageUrl())
            <img src="{{ $member->imageUrl() }}" alt="{{ $member->fullName() }}" class="w-full h-full object-cover" loading="lazy" decoding="async" />
          @else
            <div class="w-full h-full bg-[#EEF3F8] flex items-center justify-center">
              <span class="text-[#6B7280] text-[14px]">No Image</span>
            </div>
          @endif
          @if($member->headtitle)
          <div class="absolute top-4 left-4 bg-[#003054] px-[13px] py-[5px] rounded-full font-sans text-[11px] font-bold text-white uppercase tracking-wider">
            {{ $member->headtitle }}
          </div>
          @endif
        </div>
        <div class="h-[4px] w-full overflow-hidden">
          <div class="h-full w-0 group-hover:w-full transition-all duration-500" style="background:linear-gradient(90deg,#003054 0%,#18909C 100%);"></div>
        </div>
        <div class="p-[26px] flex flex-col flex-grow">
          <h3 class="font-serif text-[20px] font-extrabold text-[#0F172A] mb-1">{{ $member->fullName() }}</h3>
          <p class="font-['Newsreader'] text-[12px] text-[#64748B] mb-4">{{ $member->designation }}</p>
          @if($member->short_description)
          <p class="font-['Newsreader'] text-[14px] leading-[22px] text-[#475569] mb-[16px] flex-grow">
            {{ cleanText($member->short_description) }}
          </p>
          @endif

          @if($member->experties->count())
          <div class="flex flex-wrap gap-2 pb-[18px]">
            @foreach($member->experties as $exp)
              <span class="px-3 py-1 bg-[#F0F7F7] text-[#0E606B] text-[11px] font-semibold rounded-full border border-[#D1E5E5]">{{ $exp->heading }}</span>
            @endforeach
          </div>
          @endif

          <div class="border-t border-[#EEF3F8] pt-[16px] pb-[2px] flex items-center justify-between mt-auto">
            <div class="flex gap-2">
              @foreach($member->socialMedia as $social)
                @if($social->iconUrl())
                <a href="{{ $social->social_link ?: '#' }}" class="w-[34px] h-[34px] border border-[#E2E8F0] rounded-[7px] flex items-center justify-center hover:bg-gray-50 transition-colors" {{ $social->social_link ? 'target="_blank"' : '' }}>
                  <img src="{{ $social->iconUrl() }}" alt="{{ $social->title }}" class="w-[16px] h-[16px]" />
                </a>
                @endif
              @endforeach
            </div>
            <a href="{{ route('teamdetails', $member->id) }}" style="font-size:12px;font-weight:600;color:#003054;text-decoration:none;display:inline-block;" onmouseover="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'">Full Profile →</a>
          </div>
        </div>
      </div>
      @endforeach
    </div>
  </div>
</section>
@endif


<!-- CORE TEAM SECTION -->
@if($coreTeams->count())
<section class="w-full bg-white py-[48px] md:py-[88px] px-4 md:px-8 box-border">
  <div class="max-w-[1204px] mx-auto flex flex-col gap-[32px] px-0">

    <div style="display:flex;flex-direction:column;gap:12px;">
      <span style="font-family:'Newsreader',Georgia,serif;font-size:11px;font-weight:700;letter-spacing:1.5px;text-transform:uppercase;color:#18909C;">{{ $coreTeamContent?->heading ?? 'Research Team' }}</span>
      <h2 style="font-family:'Newsreader',Georgia,serif;font-weight:800;font-size:38px;line-height:1.18;color:#0F172A;margin:0;">
        {{ $coreTeamContent?->sub_heading ?? 'Fellows & Analysts' }}
        @if($coreTeamContent?->design_word)
          <span style="color:#18909C;">{{ $coreTeamContent->design_word }}</span>
        @endif
      </h2>
    </div>

    <div class="grid grid-cols-1 md:grid-cols-4 gap-[20px] w-full max-w-[1204px] mx-auto">
      @foreach($coreTeams as $member)
      <a href="{{ route('teamdetails', $member->id) }}" class="group w-full border border-[#EEF3F8] rounded-[14px] bg-white overflow-hidden flex flex-col hover:shadow-md transition-shadow duration-200 cursor-pointer">
        @if($member->imageUrl())
          <img src="{{ $member->imageUrl() }}" alt="{{ $member->fullName() }}" class="w-full h-[200px] object-cover" loading="lazy" decoding="async" />
        @else
          <div class="w-full h-[200px] bg-[#EEF3F8] flex items-center justify-center">
            <span class="text-[#6B7280] text-[13px]">No Image</span>
          </div>
        @endif
        <div class="h-[4px] w-full overflow-hidden">
          <div class="h-full w-0 group-hover:w-full transition-all duration-500" style="background:linear-gradient(90deg,#003054 0%,#18909C 100%);"></div>
        </div>
        <div class="pt-[18px] pr-[16px] pb-[18px] pl-[16px] flex flex-col gap-[12px]">
          <div class="flex flex-col gap-[8px]">
            <h3 style="font-family:'Merriweather',serif;font-weight:800;font-size:16px;line-height:26.4px;color:#0F172A;">{{ $member->fullName() }}</h3>
            <p class="font-['Newsreader'] text-[12px] text-[#64748B] leading-none">{{ $member->designation }}</p>
          </div>
          @if($member->experties->count())
          <div class="flex gap-[5px] flex-wrap">
            @foreach($member->experties->take(2) as $exp)
              <span class="px-2 py-1 bg-[#F0F7F7] text-[#0E606B] text-[10.5px] font-semibold rounded-full border border-[#D1E5E5]">{{ $exp->heading }}</span>
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


<!-- ADVISORY BOARD SECTION -->
@if($nationalAdvisors->count() || $internationalAdvisors->count())
<section class="w-full bg-[#F7F9FB] py-[48px] md:py-[88px] px-4 md:px-8 box-border">

  <div class="w-full max-w-[1204px] mx-auto flex flex-col gap-[56px] px-4 md:px-0">

    <div style="display:flex;flex-direction:column;gap:12px;">
      <h2 style="font-family:'Newsreader',Georgia,serif;font-weight:800;font-size:38px;line-height:1.18;color:#003054;margin:0;">
        {{ $expertsContent?->heading ?? '' }}
        @if($expertsContent?->design_word)
          <span style="color:#18909C;">{{ $expertsContent->design_word }}</span>
        @endif
      </h2>
      <p style="font-family:'Newsreader',Georgia,serif;font-size:16px;line-height:28px;color:#1A1A1A;max-width:600px;margin:0;">
        {{ $expertsContent?->sub_heading ?? '' }}
      </p>
    </div>

    @php
      $advisorCard = function($advisor) { return $advisor; };
    @endphp

    {{-- National Advisors --}}
    @php
      $advisorGroups = [
        'National' => $nationalAdvisors,
        'International' => $internationalAdvisors,
      ];
    @endphp

    @foreach($advisorGroups as $groupLabel => $groupMembers)
    @if($groupMembers->count())
    <div style="display:flex;flex-direction:column;gap:20px;">
      <h3 style="font-family:'Newsreader',Georgia,serif;font-weight:700;font-size:20px;color:#003054;border-bottom:1px solid #E2E8F0;padding-bottom:12px;margin:0;">{{ $groupLabel }}</h3>
      <div class="grid grid-cols-1 md:grid-cols-3 gap-[20px]">
        @foreach($groupMembers as $advisor)
        <a href="{{ route('teamdetails', $advisor->id) }}" style="background:#fff;border:1px solid #EEF3F8;border-radius:14px;padding:24px;display:flex;gap:18px;align-items:center;text-decoration:none;cursor:pointer;transition:box-shadow 0.2s;" onmouseover="this.style.boxShadow='0 4px 16px rgba(0,0,0,0.08)'" onmouseout="this.style.boxShadow='none'">
          @if($advisor->imageUrl())
            <img src="{{ $advisor->imageUrl() }}" alt="{{ $advisor->fullName() }}" style="width:60px;height:60px;border-radius:50%;object-fit:cover;flex-shrink:0;" loading="lazy" decoding="async" />
          @else
            <div style="width:60px;height:60px;border-radius:50%;background:#EEF3F8;display:flex;align-items:center;justify-content:center;flex-shrink:0;">
              <span style="color:#6B7280;font-size:10px;text-align:center;">No<br>Photo</span>
            </div>
          @endif
          <div style="display:flex;flex-direction:column;gap:4px;">
            <h4 style="font-family:'Newsreader',Georgia,serif;font-weight:800;font-size:15px;line-height:1.65;color:#0F172A;margin:0;">{{ $advisor->fullName() }}</h4>
            <p style="font-family:'Newsreader',Georgia,serif;font-size:12px;color:#64748B;margin:0;line-height:1;">{{ $advisor->designation }}</p>
            @if($advisor->experties->count())
            <div style="display:flex;gap:8px;margin-top:4px;flex-wrap:wrap;">
              @foreach($advisor->experties->take(2) as $exp)
                <span style="padding:2px 8px;background:#F0F7F7;color:#0E606B;font-size:10.5px;font-weight:600;border-radius:999px;border:1px solid #D1E5E5;">{{ $exp->heading }}</span>
              @endforeach
            </div>
            @endif
          </div>
        </a>
        @endforeach
      </div>
    </div>
    @endif
    @endforeach

  </div>
</section>
@endif

@endsection
