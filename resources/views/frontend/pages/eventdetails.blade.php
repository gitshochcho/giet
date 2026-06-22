@extends('frontend.layout.app')

@push('custome-css')
<style>
.ed-hero a        { color: rgba(255,255,255,0.45); text-decoration: none; }
.ed-hero a:hover  { color: #ffffff; }
.ed-body h2       { font-family: 'Newsreader', serif; font-weight: 800; font-size: 26px; line-height: 32.5px; color: #0F172A; }
.ed-related h2    { font-family: 'Newsreader', serif; font-weight: 800; font-size: 30px; line-height: 36px; color: #0F172A; }
.ed-related a     { color: #003054; text-decoration: none; }
.ed-related a:hover { text-decoration: underline; }
</style>
@endpush

@section('content')

@php
  $regStatusColor = match($event->registration_status) {
    'Open'        => '#10B981',
    'Full'        => '#F59E0B',
    'Closed'      => '#EF4444',
    'Coming Soon' => '#6B7280',
    default       => '#6B7280',
  };
  $fmtBadgeCls = match($event->event_format) {
    'Online'    => 'bg-white/20 text-white',
    'Hybrid'    => 'bg-white/20 text-white',
    'In-Person' => 'bg-white/20 text-white',
    default     => 'bg-white/20 text-white',
  };
@endphp

{{-- ============================================================
     1. HERO + METADATA STRIP
     ============================================================ --}}
<section class="ed-hero w-full">

  {{-- Hero Image --}}
  <div class="relative w-full h-[520px] flex items-end">
    @if($event->heroImageUrl())
    <img src="{{ $event->heroImageUrl() }}" alt="{{ $event->title }}" class="absolute inset-0 w-full h-full object-cover">
    @else
    <div class="absolute inset-0 bg-[#003054]"></div>
    @endif

    <div class="absolute inset-0" style="background:linear-gradient(0deg,rgba(0,20,48,0.96) 0%,rgba(0,20,48,0.6) 55%,rgba(0,20,48,0.2) 100%);"></div>

    <div class="relative max-w-[1204px] w-full mx-auto px-4 md:px-0 pb-[48px] flex flex-col gap-[14px]">

      {{-- Floating Date Badge --}}
      <div class="absolute bg-white rounded-[14px] shadow-[0px_8px_36px_0px_rgba(0,48,84,0.15)] p-[14px_18px] flex flex-col items-center gap-[2px] w-[77px] h-[97px]"
           style="top:-200px;right:8px;">
        <span class="text-[12px] font-bold text-[#A80C18] uppercase">{{ $event->monthLabel() }}</span>
        <span class="text-[24px] font-extrabold text-[#0F172A]">{{ $event->dayLabel() }}</span>
        <span class="text-[11px] text-[#64748B]">{{ $event->yearLabel() }}</span>
      </div>

      {{-- Breadcrumbs --}}
      <div class="flex gap-2 items-center">
        <a href="{{ url('/') }}" class="text-[12px] text-[#FFFFFF66] hover:text-white transition-colors duration-150">Home</a>
        <span class="text-[#FFFFFF66]">/</span>
        <a href="{{ route('events') }}" class="text-[12px] text-[#FFFFFF66] hover:text-white transition-colors duration-150">Events</a>
        <span class="text-[#FFFFFF66]">/</span>
        <span class="text-[12px] text-[#FFFFFF66]">{{ Str::limit($event->title, 50) }}</span>
      </div>

      {{-- Status + Format Tags --}}
      <div class="flex gap-2 flex-wrap">
        <span class="px-3 py-1 text-white text-[11.5px] font-semibold rounded-[4px]"
              style="background-color:{{ $regStatusColor }};">● {{ $event->registration_status === 'Open' ? 'Registration Open' : $event->registration_status }}</span>
        <span class="px-3 py-1 bg-white/20 text-white text-[11.5px] font-semibold rounded-[4px]">{{ $event->event_type }}</span>
        <span class="px-3 py-1 bg-white/20 text-white text-[11.5px] font-semibold rounded-[4px]">{{ $event->event_format }}</span>
      </div>

      {{-- Title --}}
      <h1 class="font-['Newsreader'] font-extrabold text-[42px] leading-[46.2px] tracking-[-0.84px] text-white max-w-[820px] pt-[2px]">
        {{ $event->title }}
      </h1>

      {{-- Organizer --}}
      @if($event->organizer || $event->co_host)
      <div class="text-[14px]">
        @if($event->organizer)
        <span class="text-[#FFFFFF66]">Organised by</span> <span class="font-bold text-white">{{ $event->organizer }}</span>
        @endif
        @if($event->co_host)
        <span class="text-[#FFFFFF66]"> · Co-hosted with</span> <span class="font-bold text-white">{{ $event->co_host }}</span>
        @endif
      </div>
      @endif

    </div>
  </div>

  {{-- Metadata Strip --}}
  <div class="w-full bg-[#003054] py-4 md:h-[115px] md:py-0 flex items-center justify-center border-b border-[#FFFFFF14] px-4 md:px-0">
    <div class="w-full max-w-[1204px] mx-auto grid grid-cols-2 md:grid-cols-{{ ($event->venue || $event->registration_deadline) ? '3' : '2' }} gap-y-4 md:gap-y-0 items-start md:items-center">

      {{-- Date & Time --}}
      <div class="flex-1 flex items-start gap-3 px-3 md:px-6 border-r border-[#FFFFFF14] py-2 md:py-0">
        <div class="w-[30px] h-[30px] md:w-[36px] md:h-[36px] rounded-[8px] bg-[#FFFFFF14] flex items-center justify-center shrink-0">
          <img src="{{ asset('icons/SVG (51).png') }}" alt="Date" class="w-4 h-4 md:w-6 md:h-6 object-contain">
        </div>
        <div class="flex flex-col">
          <span class="text-[9px] md:text-[11px] font-semibold text-[#8FB2C9] uppercase tracking-[0.5px]">Date & Time</span>
          <span class="text-[12px] md:text-[15px] font-bold text-white leading-snug">
            {{ $event->fullDateLabel() }}
            @if($event->event_time)<br>{{ $event->event_time }}@endif
          </span>
        </div>
      </div>

      {{-- Venue --}}
      @if($event->venue || $event->venue_address)
      <div class="flex-1 flex items-start gap-3 px-3 md:px-6 border-r border-[#FFFFFF14] py-2 md:py-0">
        <div class="w-[30px] h-[30px] md:w-[36px] md:h-[36px] rounded-[8px] bg-[#FFFFFF14] flex items-center justify-center shrink-0">
          <img src="{{ asset('icons/SVG (52).png') }}" alt="Venue" class="w-4 h-4 md:w-6 md:h-6 object-contain">
        </div>
        <div class="flex flex-col">
          <span class="text-[9px] md:text-[11px] font-semibold text-[#8FB2C9] uppercase tracking-[0.5px]">Venue</span>
          <span class="text-[12px] md:text-[15px] font-bold text-white leading-snug">
            {{ $event->venue }}
            @if($event->venue_address)<br>{{ $event->venue_address }}@endif
          </span>
        </div>
      </div>
      @endif

      {{-- Registration --}}
      <div class="flex-1 flex items-start gap-3 px-3 md:px-6 py-2 md:py-0">
        <div class="w-[30px] h-[30px] md:w-[36px] md:h-[36px] rounded-[8px] bg-[#FFFFFF14] flex items-center justify-center shrink-0">
          <img src="{{ asset('icons/SVG (59).png') }}" alt="Registration" class="w-4 h-4 md:w-6 md:h-6 object-contain">
        </div>
        <div class="flex flex-col">
          <span class="text-[9px] md:text-[11px] font-semibold text-[#8FB2C9] uppercase tracking-[0.5px]">Registration</span>
          <span class="text-[12px] md:text-[15px] font-bold text-white leading-snug">
            @if($event->registration_deadline)
              Deadline: {{ $event->registration_deadline->format('d M Y') }}<br>
            @endif
            {{ $event->registration_fee ?: 'Free to attend' }}
          </span>
        </div>
      </div>

    </div>
  </div>
</section>

{{-- ============================================================
     2. MAIN CONTENT + SIDEBAR
     ============================================================ --}}
<section class="ed-body w-full bg-white py-[72px] px-4 md:px-8">
  <div class="max-w-[1204px] mx-auto grid grid-cols-1 md:grid-cols-[1fr_340px] gap-y-[56px] gap-x-[80px] items-start">

    {{-- LEFT: PROSE + SPEAKERS + PARTNERS --}}
    <div class="flex flex-col gap-[24px]">

      {{-- About This Event --}}
      @if($event->about)
      <div class="flex flex-col gap-4">
        <h2>About This Event</h2>
        @foreach(array_filter(explode("\n", $event->about)) as $para)
        <p class="font-['Newsreader'] text-[15px] text-[#475569] leading-[1.6]">{{ trim($para) }}</p>
        @endforeach
      </div>
      @endif

      {{-- Who Should Attend --}}
      @if($event->who_should_attend)
      <div class="flex flex-col gap-4">
        <h2>Who Should Attend</h2>
        <ul class="space-y-3 text-[15px] text-[#475569]">
          @foreach(array_filter(explode("\n", $event->who_should_attend)) as $item)
          <li class="flex items-start gap-3">
            <img src="{{ asset('icons/SVG (59).png') }}" class="w-[18px] h-[18px] mt-0.5 opacity-80" alt="icon">
            <span class="font-['Newsreader']">{{ trim($item) }}</span>
          </li>
          @endforeach
        </ul>
      </div>
      @endif

      {{-- Featured Speakers --}}
      @if($event->speakers->isNotEmpty())
      <div>
        <h2 class="mt-[22px] mb-6">Featured Speakers</h2>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-[16px]">
          @foreach($event->speakers as $speaker)
          <div class="bg-[#F7F9FB] border border-[#E4EAF0] rounded-[14px] p-[18px] flex flex-col gap-[12px]">
            <div class="flex items-center gap-[12px]">
              @if($speaker->imageUrl())
              <img src="{{ $speaker->imageUrl() }}" class="w-[52px] h-[52px] rounded-full object-cover shrink-0 border-2 border-white shadow-sm"
                   alt="{{ $speaker->name }}"
                   onerror="this.style.display='none';this.nextElementSibling.style.display='flex'">
              @endif
              <div class="{{ $speaker->imageUrl() ? 'hidden' : 'flex' }} w-[52px] h-[52px] rounded-full bg-[#E8F0F6] shrink-0 items-center justify-center border-2 border-white shadow-sm">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none"><circle cx="12" cy="8" r="4" fill="#CBD5E1"/><ellipse cx="12" cy="18" rx="7" ry="4" fill="#CBD5E1"/></svg>
              </div>
              <div class="flex flex-col gap-[2px] min-w-0">
                <p class="font-['Newsreader'] font-extrabold text-[14px] leading-snug text-[#0F172A]">{{ $speaker->name }}</p>
                @if($speaker->designation)
                <p class="font-['Newsreader'] text-[11.5px] text-[#64748B] leading-tight">{{ $speaker->designation }}</p>
                @endif
              </div>
            </div>
            <div class="flex items-center justify-between">
              @if($speaker->session_role)
              <span class="text-[10px] bg-[#E6F3F5] text-[#0E606B] px-[8px] py-[3px] rounded font-semibold">{{ $speaker->session_role }}</span>
              @endif
              <span class="text-[10px] px-[8px] py-[3px] rounded font-semibold {{ $speaker->speaker_type === 'GIET' ? 'bg-[#EEF3F8] text-[#003054]' : 'bg-[#FFF4E5] text-[#B45309]' }}">{{ $speaker->speaker_type }}</span>
            </div>
          </div>
          @endforeach
        </div>
      </div>
      @endif

      {{-- Co-Organisers & Partners --}}
      @if($event->eventPartners->isNotEmpty())
      <div class="bg-[#F7F9FB] border border-[#E4EAF0] rounded-[14px] p-[28px] flex flex-col gap-[20px]">
        <p class="font-['Newsreader'] text-[12px] font-bold text-[#64748B] uppercase tracking-wider">Co-Organisers & Partners</p>
        <div class="flex flex-wrap gap-[16px]">
          @foreach($event->eventPartners as $ep)
          <div class="flex flex-col items-center gap-[8px]">
            <div class="w-[100px] h-[60px] bg-white border border-[#E4EAF0] rounded-[10px] flex items-center justify-center overflow-hidden">
              @if($ep->imageUrl())
              <img src="{{ $ep->imageUrl() }}" alt="{{ $ep->name }}" class="max-w-[80px] max-h-[44px] object-contain">
              @else
              <span style="font-family:'Inter',sans-serif;font-weight:600;font-size:11px;color:#64748B;text-align:center;padding:4px;">{{ $ep->name }}</span>
              @endif
            </div>
            <span style="font-family:'Inter',sans-serif;font-weight:600;font-size:11px;line-height:1;color:#64748B;text-align:center;">{{ $ep->name }}</span>
          </div>
          @endforeach
        </div>
      </div>
      @endif

    </div>

    {{-- RIGHT: STICKY SIDEBAR --}}
    <div style="position:sticky;top:112px;align-self:start;" class="flex flex-col gap-[16px] w-full md:w-[340px]">

      {{-- Registration Card --}}
      @if($event->registration_status === 'Open')
      <div class="bg-[#003054] rounded-[14px] p-[28px] flex flex-col gap-[6px] text-white">
        @if($event->registration_deadline)
        <p class="font-['Newsreader'] text-[12px] uppercase tracking-wide text-[#18909C] font-semibold mb-1">
          Registration Closes {{ $event->registration_deadline->format('d M') }}
        </p>
        @endif
        <h3 class="font-['Newsreader'] font-extrabold text-[18px] leading-none text-white">Secure Your Place</h3>
        <p class="font-['Newsreader'] text-[13px] text-[#FFFFFFCC] mb-4 leading-relaxed">
          {{ $event->registration_fee && strtolower($event->registration_fee) !== 'free' ? 'Registration fee: ' . $event->registration_fee . '.' : 'This event is free to attend.' }}
          @if($event->registration_capacity) Seats are limited to {{ $event->registration_capacity }} participants.@endif
        </p>
        <a href="{{ route('contact') }}" class="bg-[#A80C18] text-white font-bold py-3 rounded-[8px] w-full hover:bg-[#8e0a14] transition-colors flex items-center justify-center gap-2" style="text-decoration:none;">
          <img src="{{ asset('icons/SVG (29).png') }}" alt="Register" class="w-[18px] h-[18px] brightness-0 invert"> Register Now
        </a>
      </div>
      @elseif($event->registration_status === 'Coming Soon')
      <div class="bg-[#003054] rounded-[14px] p-[28px] flex flex-col gap-[6px] text-white">
        <h3 class="font-['Newsreader'] font-extrabold text-[18px] leading-none text-white">Registration Coming Soon</h3>
        <p class="font-['Newsreader'] text-[13px] text-[#FFFFFFCC] leading-relaxed">Registration will open shortly. Check back soon or contact us for more information.</p>
      </div>
      @elseif($event->registration_status === 'Full')
      <div class="bg-[#F59E0B] rounded-[14px] p-[28px] flex flex-col gap-[6px]">
        <h3 class="font-['Newsreader'] font-extrabold text-[18px] leading-none text-[#003054]">Event is Full</h3>
        <p class="font-['Newsreader'] text-[13px] text-[#003054CC] leading-relaxed">All seats have been filled. Contact us to be added to the waitlist.</p>
        <a href="{{ route('contact') }}" class="bg-[#003054] text-white font-bold py-3 rounded-[8px] w-full hover:bg-[#002040] transition-colors flex items-center justify-center gap-2 mt-2" style="text-decoration:none;">Join Waitlist</a>
      </div>
      @endif

      {{-- Event Enquiries --}}
      <div class="bg-white border border-[#E4EAF0] rounded-[14px] p-[22px] flex flex-col gap-2">
        <h4 class="text-[12px] font-bold text-[#6B7280] uppercase tracking-wider pb-[10px] border-b border-[#E4EAF0] block">Event Enquiries</h4>
        <p class="font-['Newsreader'] text-[14px] text-[#0F172A] leading-relaxed">For registration support, speaker enquiries, or media accreditation:</p>
        <a href="mailto:{{ $event->enquiry_email ?: 'events@giet.org.bd' }}" class="text-[14px] font-bold text-[#003054] hover:underline">{{ $event->enquiry_email ?: 'events@giet.org.bd' }}</a>
        <p class="font-['Newsreader'] text-[12px] text-[#64748B] -mt-2">We reply within 1 business day</p>
      </div>

    </div>
  </div>
</section>

{{-- ============================================================
     3. RELATED EVENTS
     ============================================================ --}}
@if($relatedEvents->isNotEmpty())
<section class="ed-related w-full bg-[#F7F9FB] py-[72px] px-4 md:px-8">
  <div class="max-w-[1204px] mx-auto flex flex-col gap-[40px]">

    <div class="w-full flex justify-between items-center">
      <div>
        <p class="font-['Newsreader'] text-[14px] font-semibold text-[#0E606B] uppercase tracking-[0.5px]">More Events</p>
        <h2 class="font-['Newsreader'] font-extrabold text-[30px] leading-none text-[#0F172A] flex items-center">Other Events</h2>
      </div>
      <div class="flex flex-col items-start gap-[4px]">
        <a href="{{ route('events') }}" class="text-[14px] font-semibold text-[#0F172A] flex items-center gap-2 hover:opacity-70" style="text-decoration:none;">
          All Events →
        </a>
        <div class="w-full h-[2px] bg-[#0F172A]"></div>
      </div>
    </div>

    <div class="w-full grid grid-cols-1 md:grid-cols-3 gap-[20px]">
      @foreach($relatedEvents as $rel)
      <div class="bg-white border border-[#E4EAF0] rounded-[14px] p-[22px] flex flex-col gap-[6px]">
        <span class="text-[12px] font-semibold text-[#A80C18]">{{ $rel->event_date->format('d M Y') }}</span>
        <span class="text-[10px] font-bold text-[#0E606B] bg-[#E6F3F5] px-2 py-0.5 rounded w-fit uppercase tracking-[0.4px]">{{ $rel->event_type }}</span>
        <h3 class="font-['Newsreader'] font-bold text-[14.5px] leading-[20.3px] text-[#0F172A]">{{ Str::limit($rel->title, 80) }}</h3>
        <p class="font-['Newsreader'] text-[12px] text-[#64748B] flex items-center gap-1.5 mt-auto">
          <img src="{{ asset('icons/SVG (52).png') }}" alt="Location" class="w-3.5 h-3.5 object-contain opacity-70">
          {{ $rel->venue ?: $rel->event_format }}@if($rel->venue_address), {{ $rel->venue_address }}@endif
        </p>
        <div class="flex justify-between items-center mt-2 border-t pt-3">
          <span class="text-[12px] text-[#64748B]">{{ $rel->registration_fee ?: 'Free' }} · {{ $rel->registration_status }}</span>
          <a href="{{ route('eventdetails', $rel->id) }}" class="text-[14px] font-bold text-[#003054] flex items-center gap-1" style="text-decoration:none;">View Event →</a>
        </div>
      </div>
      @endforeach
    </div>

  </div>
</section>
@endif

@endsection
