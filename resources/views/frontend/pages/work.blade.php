@extends('frontend.layout.app')

@section('content')

@php
  $heroImg = $servicesHero ? $servicesHero->imageUrl() : null;
  $heroBgStyle = $heroImg
    ? "background-image:url('{$heroImg}');background-size:cover;background-position:center;"
    : '';
@endphp
<section class="w-full h-auto md:h-[342.2px] relative flex flex-col justify-center items-center text-white overflow-hidden pt-[72px] pb-[72px] px-4 md:px-8 select-none"
  style="background-color:#003054;{{ $heroBgStyle }}">

  {{-- dark overlay when bg image is set --}}
  @if($heroImg)
  <div style="position:absolute;inset:0;background:rgba(0,30,60,0.65);pointer-events:none;z-index:1;"></div>
  @endif

  {{-- teal circle decoration --}}
  <div style="background-color:rgba(24,144,156,0.07);width:400px;height:400px;border-radius:200px;position:absolute;top:-100px;right:-100px;pointer-events:none;z-index:1;"></div>

  <div class="w-full max-w-[1204px] mx-auto h-auto md:h-[228.2px] flex flex-col items-start text-left gap-[15.2px]" style="position:relative;z-index:2;">

    <div class="text-white/45 font-['Newsreader'] text-[12px] leading-[19.8px] flex items-center gap-1.5 tracking-normal">
      <a href="{{ route('home') }}" class="hover:text-white transition-colors">Home</a>
      <span class="text-white/30">/</span>
      <span class="font-['Newsreader'] text-[12px] leading-[19.8px] text-white/45">
        {{ $servicesHero->heading ?? '' }}
      </span>
    </div>

    <div class="bg-[#18909C] w-[40px] h-[3px] rounded-[2px] my-[6px]"></div>

    <h1 class="text-white font-['Newsreader'] font-extrabold leading-tight tracking-tight drop-shadow-sm" style="font-size:clamp(28px,5vw,52px);letter-spacing:-0.5px;">
      {{ $servicesHero->heading ?? '' }}
    </h1>

    @if($servicesHero && $servicesHero->description)
    <p style="color:rgba(255,255,255,0.65);font-family:'Newsreader',Georgia,serif;font-size:17px;line-height:29.75px;max-width:780px;font-weight:400;drop-shadow:0 1px 2px rgba(0,0,0,0.3);">
      {!! strip_tags($servicesHero->description) !!}
    </p>
    @endif

  </div>
</section>

<section class="w-full bg-[#F7F9FB] pt-[48px] pb-[48px] md:pt-[88px] md:pb-[88px] px-4 md:px-8 flex flex-col items-center select-none">

  <div class="w-full max-w-[1204px] mx-auto flex justify-between items-end mb-10 text-left">
    <h2 style="font-family:'Newsreader',Georgia,serif;font-weight:800;font-size:38px;line-height:44.84px;letter-spacing:-0.38px;color:#0F172A;margin:0;">
      Key Focus Areas
    </h2>
  </div>

  @if($serviceCards->count())
  <div class="w-full max-w-[1204px] mx-auto grid grid-cols-1 md:grid-cols-3 gap-[22px]">
    @foreach($serviceCards as $card)
    <div class="w-full bg-white border border-[#E4EAF0] rounded-[10px] overflow-hidden flex flex-col transition-all duration-200 hover:shadow-md">
      <img class="w-full h-48 object-cover" src="{{ $card['img'] }}" alt="{{ $card['title'] }}">
      <div class="p-6 flex flex-col flex-grow text-left">
        @if($card['tag'])
        <span style="font-family:'Newsreader',Georgia,serif;font-weight:600;font-size:10.5px;line-height:1;letter-spacing:1.47px;text-transform:uppercase;color:#0E606B;margin-bottom:8px;display:block;">
          {{ $card['tag'] }}
        </span>
        @endif
        <h3 style="font-family:'Newsreader',Georgia,serif;font-weight:800;font-size:18px;line-height:24.3px;color:#0F172A;margin:0 0 12px 0;">
          {{ $card['title'] }}
        </h3>
        <p style="font-family:'Newsreader',Georgia,serif;font-size:13.5px;line-height:23.22px;color:#1A1A1A;margin:0 0 24px 0;flex-grow:1;">
          {{ strip_tags($card['desc']) }}
        </p>
        <a href="{{ route('serviceDetails', $card['id']) }}" style="font-family:'Newsreader',Georgia,serif;font-weight:600;font-size:12px;line-height:19.8px;letter-spacing:0.48px;color:#18909C;text-decoration:none;display:flex;align-items:center;gap:4px;margin-top:auto;">
          Explore &rarr;
        </a>
      </div>
    </div>
    @endforeach
  </div>
  @else
  <div class="w-full max-w-[1204px] mx-auto text-center py-[80px]">
    <p style="font-family:'Newsreader',Georgia,serif;font-size:16px;color:#64748B;">No services found. Add services from the admin panel.</p>
  </div>
  @endif

</section>

<section style="background-color: #F1F5F9;"
         class="w-full py-[48px] md:py-[80px] text-center select-none flex flex-col items-center justify-center relative overflow-hidden border-b border-[#CBD5E1]">

    <div style="width:320px;height:320px;top:-60px;right:-60px;background-color:rgba(0,48,84,0.04);border-radius:160px;"
         class="absolute pointer-events-none"></div>

    <div class="w-full max-w-[1204px] mx-auto px-4 md:px-0 flex flex-col items-center justify-center text-center relative z-10">

        <span class="text-[#0E606B] font-['Newsreader'] font-semibold text-[11px] leading-[18.15px] tracking-[1.54px] uppercase block mb-[13px]">
            {{ $workWithUs?->section ?? '' }}
        </span>

        <h2 class="text-[#003054] font-['Newsreader'] font-extrabold text-[38px] leading-[45.6px] max-w-[800px] mb-[13px]">
            {{ $workWithUs?->heading ?? '?' }}
        </h2>

        @if($workWithUs?->description)
        <p class="text-[#475569] font-['Newsreader'] text-[16px] leading-[28px] max-w-[620px] mb-[28px]">
            {{ strip_tags($workWithUs->description) }}
        </p>
        @else
        <p class="text-[#475569] font-['Newsreader'] text-[16px] leading-[28px] max-w-[620px] mb-[28px]">
          
        @endif

        <a href="{{ route('contact') }}"
           style="background-color: #003054;"
           class="w-[181px] h-[51.09px] pt-[13px] pr-[32px] pb-[14.09px] pl-[32px] rounded-[6px] inline-flex items-center justify-center gap-1 text-white text-[14px] font-bold transition-all duration-200 hover:bg-[#002040] shadow-sm shrink-0" style="text-decoration:none;">
            <span>{{ $workWithUs?->sub_heading ?? 'Contact GIET' }}</span>
            <span class="inline-block translate-y-[-1px]">→</span>
        </a>

    </div>
</section>

@endsection
