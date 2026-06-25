@extends('frontend.layout.app')

@push('custome-css')
<style>
.ev-hero h1       { font-family: 'Merriweather', serif; font-weight: 800; color: #ffffff; }
.ev-hero a        { color: rgba(255,255,255,0.45); text-decoration: none; }
.ev-hero a:hover  { color: #ffffff; }
.ev-upcoming h2   { font-family: 'Newsreader', serif; font-weight: 800; color: #0F172A; }
.ev-past h2       { font-family: 'Newsreader', serif; font-weight: 800; color: #0F172A; }
.ev-cta h2        { font-family: 'Merriweather', serif; font-weight: 700; color: #003054; }
</style>
@endpush

@section('content')

{{-- ============================================================
     1. HERO BANNER
     slug: events_page_header  |  fields: heading, description
     ============================================================ --}}
<section class="ev-hero bg-[#003054] w-full h-auto md:h-[363.3px] relative flex flex-col justify-center items-center text-white overflow-hidden pt-[72px] pb-[72px] px-4 md:px-8 select-none">

  <div class="absolute -top-[100px] -right-[100px] pointer-events-none bg-[rgba(24,144,156,0.07)] w-[400px] h-[400px] rounded-full"></div>

  <div class="w-full max-w-[1204px] mx-auto h-auto flex flex-col items-start text-left z-10 gap-[13.3px]">

    <div style="font-family:'Inter',sans-serif;font-size:12px;line-height:19.8px;"
         class="text-white/45 flex items-center gap-1.5 tracking-normal">
      <a href="{{ url('/') }}" class="hover:text-white transition-colors">Home</a>
      <span class="text-white/30">/</span>
      <span class="text-white">Events</span>
    </div>

    <div class="bg-[#18909C] w-[40px] h-[3px] rounded-[2px] my-[6px]"></div>

    <h1 style="font-family:'Merriweather',serif;font-weight:800;font-size:clamp(28px,5vw,52px);line-height:1.1;letter-spacing:-0.5px;"
        class="text-white tracking-tight drop-shadow-sm">
      {{ $eventsHero?->heading ?: '' }}
    </h1>

    <p class="font-['Newsreader'] text-white/60 max-w-[580px] font-normal tracking-normal drop-shadow-sm"
       style="font-family:'Newsreader',serif;font-size:17px;line-height:29.75px;">
      {{ cleanText($eventsHero?->description) ?: '' }}
    </p>

  </div>
</section>

{{-- ============================================================
     2. UPCOMING EVENTS
     ============================================================ --}}
<section class="ev-upcoming w-full bg-white py-[88px] px-4 md:px-8">
  <div class="w-full max-w-[1204px] mx-auto flex flex-col gap-[40px]">

    <div class="flex flex-col gap-2">
      @if($eventsUpcoming?->section)
      <span class="text-[11px] font-semibold text-[#0E606B] uppercase tracking-[1.5px]">{{ $eventsUpcoming->section }}</span>
      @endif
      <h2 class="font-serif text-[28px] md:text-[42px] font-extrabold text-[#0F172A]">{{ $eventsUpcoming?->heading }}</h2>
    </div>

    <div class="flex flex-col gap-8">
      @forelse($upcomingEvents as $ev)
      <a href="{{ route('eventdetails', $ev->id) }}" class="flex gap-6 items-center group cursor-pointer" style="text-decoration:none;">

        <div class="flex flex-col items-center w-[56px] shrink-0">
          <span class="bg-[#A80C18] text-white text-[10px] font-bold py-1 w-full text-center rounded-t-[4px]">{{ $ev->monthLabel() }}</span>
          <span class="text-[24px] font-bold text-[#0F172A] border border-t-0 border-[#E4EAF0] w-[56px] h-[28px] text-center rounded-b-[4px] flex items-center justify-center">{{ $ev->dayLabel() }}</span>
        </div>

        <div class="flex flex-col gap-1">
          <div class="flex flex-col gap-2 items-start">
            @php
              $fmtBg = match($ev->event_format) {
                'Online'  => 'bg-[#E8F6F7] text-[#0E606B] border border-[#0E606B33]',
                'Hybrid'  => 'bg-[#E8F6F7] text-[#0E606B] border border-[#0E606B33]',
                'In-Person' => 'bg-[#FBE9EB] text-[#A80C18] border border-[#A80C1833]',
                default   => 'bg-[#E8F6F7] text-[#0E606B] border border-[#0E606B33]',
              };
            @endphp
            <span class="px-3 py-0.5 text-[10px] font-semibold uppercase rounded-[12px] {{ $fmtBg }}">{{ $ev->event_format }}</span>
            <a href="{{ route('eventdetails', $ev->id) }}" onclick="event.stopPropagation()"
               class="px-4 py-0.5 bg-[#003054] text-white text-[10px] font-semibold uppercase rounded-[12px] cursor-pointer" style="text-decoration:none;">Register</a>
          </div>

          <div class="mt-1">
            <p class="font-['Newsreader'] text-[11px] font-bold text-[#0E606B] uppercase tracking-[0.5px]">{{ $ev->event_type }}</p>
            <p class="font-['Newsreader'] font-bold text-[15px] leading-[21.3px] text-[#0F172A] max-w-[411px] group-hover:text-[#18909C] transition-colors duration-150">{{ $ev->title }}</p>
            <p class="font-['Newsreader'] text-[13px] text-[#64748B] flex items-center gap-1 mt-1">
              <svg xmlns="http://www.w3.org/2000/svg" class="w-4 h-4 shrink-0" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.5"><path stroke-linecap="round" stroke-linejoin="round" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"/><path stroke-linecap="round" stroke-linejoin="round" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"/></svg>
              <span>
                @if($ev->venue){{ $ev->venue }}@if($ev->venue_address), {{ $ev->venue_address }}@endif
                @else{{ $ev->event_format }}@endif
                @if($ev->registration_status) · {{ $ev->registration_status === 'Open' ? 'Registration Open' : $ev->registration_status }}@endif
              </span>
            </p>
          </div>
        </div>
      </a>
      @empty
      <p class="text-[#64748B] font-['Newsreader'] text-[15px]">No upcoming events at the moment. Check back soon.</p>
      @endforelse
    </div>
  </div>
</section>

{{-- ============================================================
     3. PAST EVENTS
     ============================================================ --}}
@if($pastEvents->isNotEmpty())
<section class="ev-past w-full bg-[#F7F9FB] py-[48px] md:py-[80px] px-4 md:px-8">
  <div class="w-full max-w-[1204px] mx-auto flex flex-col gap-[40px]">

    <div class="flex flex-col md:flex-row justify-between items-start md:items-center gap-4">
      <div class="flex flex-col gap-[8px]">
        @if($eventsPast?->section)
        <span class="text-[11px] font-semibold text-[#0E606B] uppercase tracking-[1.5px]">{{ $eventsPast->section }}</span>
        @endif
        <h2 class="font-serif text-[28px] md:text-[42px] font-extrabold text-[#0F172A]">{{ $eventsPast?->heading }}</h2>
      </div>
    </div>

    <div class="flex flex-col gap-[30px]">
      @foreach($pastEvents as $pe)
      <div class="w-full bg-white border border-[#E4EAF0] rounded-[14px] p-[20px] flex flex-col md:flex-row gap-[24px]">
        <div class="flex flex-col justify-center gap-2 flex-grow">
          <p class="font-['Newsreader'] text-[12px] text-[#64748B]">
            {{ $pe->event_date->format('d M Y') }} · {{ $pe->event_type }}
          </p>
          <h3 class="font-['Newsreader'] font-bold text-[14.5px] leading-[20.3px] text-[#0F172A]">{{ $pe->title }}</h3>
          <p class="font-['Newsreader'] text-[14px] text-[#64748B]">
            @if($pe->venue)
              {{ $pe->venue }}@if($pe->venue_address), {{ $pe->venue_address }}@endif
            @endif
            @if($pe->participant_count) · {{ $pe->participant_count }} Participants @endif
            @if($pe->co_host) · {{ $pe->co_host }} @endif
          </p>
          <a href="{{ route('eventdetails', $pe->id) }}" class="text-[#0E606B] font-semibold text-[14px] mt-1 flex items-center" style="text-decoration:none;">View Summary →</a>
        </div>
        @if($pe->heroImageUrl())
        <div class="w-full md:w-[352px] h-[180px] md:h-[160px] bg-[#EEF3F8] rounded-[8px] overflow-hidden md:flex-shrink-0">
          <img src="{{ $pe->heroImageUrl() }}" class="w-full h-full object-cover" alt="{{ $pe->title }}" loading="lazy" decoding="async">
        </div>
        @else
        <div class="w-full md:w-[352px] h-[180px] md:h-[160px] bg-[#EEF3F8] rounded-[8px] overflow-hidden md:flex-shrink-0"></div>
        @endif
      </div>
      @endforeach
    </div>
  </div>
</section>
@endif

{{-- ============================================================
     4. CO-HOST CTA SECTION (static — proposal form)
     ============================================================ --}}
<section class="ev-cta w-full py-[48px] md:py-[80px] relative flex justify-center items-center overflow-hidden select-none" style="background-color:#F1F5F9;">

  <div class="hidden md:block absolute pointer-events-none" style="background-color:rgba(0,48,84,0.04);width:300px;height:300px;top:-60px;right:-60px;border-radius:150px;"></div>

  <div class="w-full max-w-[1204px] mx-auto grid grid-cols-1 md:grid-cols-2 gap-[40px] md:gap-[60px] items-center relative z-10 px-4 md:px-0">

    <div class="w-full max-w-[522px] flex flex-col gap-[14px] px-4">
      @if($eventsCta?->section)
      <span style="font-family:'Inter',sans-serif;font-weight:700;font-size:11px;" class="text-[#0E606B] uppercase tracking-wider">{{ $eventsCta->section }}</span>
      @endif
      <h2 style="font-family:'Merriweather',serif;font-weight:700;font-size:38px;line-height:46px;" class="text-[#003054] tracking-tight">{{ $eventsCta?->heading }}</h2>
      @if($eventsCta?->description)
      <p class="font-['Newsreader'] text-[#475569]" style="font-size:14px;line-height:23px;">{{ cleanText($eventsCta->description) }}</p>
      @endif
    </div>

    <div style="background-color:#FFFFFF;border:1px solid #E4EAF0;border-radius:20px;" class="p-[36px] flex flex-col justify-between shadow-sm">
      @if(session('proposal_success'))
      <div class="bg-[#E8F6F7] border border-[#0E606B33] rounded-[10px] p-[16px] mb-[16px] text-[#0E606B] text-[13px] font-medium">
        {{ session('proposal_success') }}
      </div>
      @endif
      <h3 style="font-family:'Merriweather',serif;font-weight:700;font-size:18px;" class="text-[#003054] tracking-tight">{{ $eventsCta?->sub_heading ?: 'Submit an Event Proposal' }}</h3>
      <form class="flex flex-col gap-[14px] mt-[10px] w-full" action="{{ route('event-proposal.store') }}" method="POST">
        @csrf
        <input type="text" name="name" value="{{ old('name') }}" placeholder="Your name" required
               style="font-family:'Inter',sans-serif;background-color:#F8FAFC;border-color:#E4EAF0;"
               class="w-full h-[46px] rounded-[8px] px-[16px] text-[13px] text-[#0F172A] placeholder-[#94A3B8] focus:outline-none focus:border-[#18909C] transition-all border @error('name') border-red-400 @enderror">
        <input type="email" name="email" value="{{ old('email') }}" placeholder="Email address" required
               style="font-family:'Inter',sans-serif;background-color:#F8FAFC;border-color:#E4EAF0;"
               class="w-full h-[46px] rounded-[8px] px-[16px] text-[13px] text-[#0F172A] placeholder-[#94A3B8] focus:outline-none focus:border-[#18909C] transition-all border @error('email') border-red-400 @enderror">
        <input type="text" name="organisation" value="{{ old('organisation') }}" placeholder="Organisation"
               style="font-family:'Inter',sans-serif;background-color:#F8FAFC;border-color:#E4EAF0;"
               class="w-full h-[46px] rounded-[8px] px-[16px] text-[13px] text-[#0F172A] placeholder-[#94A3B8] focus:outline-none focus:border-[#18909C] transition-all border">
        <textarea name="message" placeholder="Describe your event proposal..." rows="3" required
                  style="font-family:'Inter',sans-serif;background-color:#F8FAFC;border-color:#E4EAF0;resize:none;"
                  class="w-full h-[88px] rounded-[8px] p-[16px] text-[13px] text-[#0F172A] placeholder-[#94A3B8] focus:outline-none focus:border-[#18909C] transition-all border @error('message') border-red-400 @enderror">{{ old('message') }}</textarea>
        <button type="submit" style="font-family:'Inter',sans-serif;background-color:#003054;"
                class="w-full h-[44px] rounded-[8px] mt-[4px] text-white font-semibold text-[13px] flex items-center justify-center gap-[6px] hover:bg-[#002040] transition-colors shadow-sm cursor-pointer border-0">
          <span>Submit Proposal</span><span class="text-[14px] font-normal">→</span>
        </button>
      </form>
    </div>

  </div>
</section>

@endsection
