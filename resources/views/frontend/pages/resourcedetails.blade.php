@extends('frontend.layout.app')

@section('content')

{{-- ====== HEADER ====== --}}
<section class="w-full bg-[#F7F9FB] border-b border-[#E4EAF0] pt-[48px] pb-[48px] px-4 md:px-8 flex flex-col justify-center items-center select-none overflow-hidden md:h-[413px]">
  <div class="w-full max-w-[1204px] mx-auto h-auto md:h-[316px] px-4 md:px-0 flex flex-col gap-[16px] justify-between items-start text-left bg-transparent">

    <div style="font-family:'Inter',sans-serif;font-size:12px;line-height:100%;" class="flex items-center gap-[6px] text-medium">
      <a href="{{ route('home') }}" class="text-[#0E606B] hover:underline">Home</a>
      <span class="text-[#6B7280]">/</span>
      <a href="{{ route('insights') }}" class="text-[#0E606B] hover:underline">Resources</a>
      <span class="text-[#6B7280]">/</span>
      <span class="text-[#6B7280]">{{ $insight->insightType?->type ?? 'Resource' }}</span>
    </div>

    <div class="flex flex-wrap items-center gap-[8px]">
      <span class="font-['Newsreader'] text-[11px] bg-[#0E606B]/[0.08] text-[#0E606B] px-[10px] py-[4px] rounded-full font-semibold uppercase tracking-wider">
        {{ $insight->insightType?->type ?? 'Resource' }}
      </span>
      @if(!empty($insight->topics))
        @foreach(array_slice($insight->topics, 0, 3) as $topic)
        <span class="font-['Newsreader'] text-[11px] bg-[#E2E8F0] text-[#003054] px-[10px] py-[4px] rounded-full font-medium">
          {{ $topic }}
        </span>
        @endforeach
      @endif
    </div>

    <h1 style="font-family:'Merriweather',serif;font-weight:800;font-size:clamp(24px,4vw,40px);line-height:1.2;letter-spacing:-0.8px;color:#0F172A;max-width:760px;"
        class="tracking-tight overflow-hidden">
      {{ $insight->heading }}
    </h1>

    <div class="text-[#64748B] text-[12px] font-medium flex flex-wrap items-center gap-[8px]">
      @if($insight->published_at)
        <span>Published {{ $insight->published_at->format('d M Y') }}</span>
      @endif
      @if($insight->read_minutes)
        <span class="text-[#CBD5E1]">•</span>
        <span>{{ $insight->read_minutes }}-minute read</span>
      @endif
      @if($insight->page_count)
        <span class="text-[#CBD5E1]">•</span>
        <span>{{ $insight->page_count }} pages</span>
      @endif
      @if($authors->isNotEmpty())
        <span class="text-[#CBD5E1]">•</span>
        <span class="text-[#6B7280]">{{ $authors->map(fn($a) => $a->first_name . ' ' . $a->last_name)->implode(', ') }}</span>
      @elseif(!empty($insight->outside_authors))
        <span class="text-[#CBD5E1]">•</span>
        <span class="text-[#6B7280]">{{ collect($insight->outside_authors)->pluck('name')->implode(', ') }}</span>
      @endif
    </div>

    <div class="flex flex-col md:flex-row items-start md:items-center gap-[12px]">
      @if($insight->attachmentUrl())
      <a href="{{ $insight->attachmentUrl() }}" target="_blank"
         class="flex items-center justify-center gap-[8px] text-white text-[12px] font-semibold bg-[#003054] hover:bg-[#00223C] px-[22px] py-[10px] rounded-[6px] transition-colors shadow-sm"
         style="text-decoration:none;">
        <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
          <path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"/><polyline points="7 10 12 15 17 10"/><line x1="12" y1="15" x2="12" y2="3"/>
        </svg>
        <span>Download PDF</span>
      </a>
      @endif
      <button onclick="navigator.share ? navigator.share({title: document.title, url: window.location.href}) : null"
              class="flex items-center justify-center gap-[8px] text-[#003054] text-[12px] font-semibold bg-white border border-[#E4EAF0] hover:bg-[#F8FAFC] px-[20px] py-[10px] rounded-[6px] transition-colors shadow-sm">
        <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
          <circle cx="18" cy="5" r="3"/><circle cx="6" cy="12" r="3"/><circle cx="18" cy="19" r="3"/>
          <line x1="8.59" y1="13.51" x2="15.42" y2="17.49"/><line x1="15.41" y1="6.51" x2="8.59" y2="10.49"/>
        </svg>
        <span>Share</span>
      </button>
    </div>

  </div>
</section>

{{-- ====== HERO IMAGE ====== --}}
@php $heroImg = $insight->articleImageUrl() ?? $insight->imageUrl(); @endphp
@if($heroImg)
<section class="w-full h-[200px] md:h-[400px] relative overflow-hidden select-none">
  <div class="w-full h-full relative">
    <img src="{{ $heroImg }}" alt="{{ $insight->heading }}" class="w-full h-full object-cover object-center pointer-events-none" />
    <div class="absolute inset-0 bg-gradient-to-t from-black/10 to-transparent pointer-events-none"></div>
  </div>
</section>
@endif

{{-- ====== MAIN CONTENT + SIDEBAR ====== --}}
<section class="w-full px-4 md:px-8 mt-[40px] mb-[40px] md:mt-[60px] md:mb-[60px] select-none">
<div class="w-full max-w-[1204px] mx-auto grid grid-cols-1 md:grid-cols-[1fr_360px] gap-[40px] md:gap-[60px] items-start">

  {{-- ARTICLE BODY --}}
  <article class="text-[#334155] font-['Newsreader'] font-normal text-[16.5px] leading-[30.53px] flex flex-col gap-[32px]">

    @if($insight->articles->isNotEmpty())
      @foreach($insight->articles as $article)
      <div>
        @if($article->heading)
        <h2 style="font-family:'Merriweather',serif;font-weight:800;font-size:24px;line-height:30px;letter-spacing:0;color:#0F172A;" class="mb-[14px]">
          {{ $article->heading }}
        </h2>
        @endif
        @if($article->description)
        <div class="prose max-w-none font-['Newsreader'] text-[16.5px] leading-[30.53px] text-[#334155]">
          {!! $article->description !!}
        </div>
        @endif
        @php
          $articleMedia = $article->getFirstMedia('article_image') ?? $article->getFirstMedia('image');
          $articleImgUrl = $articleMedia ? asset('storage/' . $articleMedia->id . '/' . $articleMedia->file_name) : null;
        @endphp
        @if($articleImgUrl)
        <div class="w-full rounded-[12px] overflow-hidden mt-[20px] mb-[8px]">
          <img src="{{ $articleImgUrl }}" alt="{{ $article->image_description ?: $article->heading }}" class="w-full h-auto object-cover" />
        </div>
        @if($article->image_description)
        <p class="font-['Newsreader'] text-[#64748B] text-center italic" style="font-size:12px;">{{ $article->image_description }}</p>
        @endif
        @endif
      </div>
      @endforeach
    @elseif($insight->description)
      <div class="prose max-w-none font-['Newsreader'] text-[16.5px] leading-[30.53px] text-[#334155]">
        {!! $insight->description !!}
      </div>
    @endif

  </article>

  {{-- SIDEBAR --}}
  <aside class="w-full md:w-[320px] sticky top-[100px] flex flex-col gap-[16px] self-start">

    {{-- Download card --}}
    @if($insight->attachmentUrl())
    <div style="background:#003054;border:1px solid #003054;border-radius:14px;padding:22px;" class="w-full flex flex-col gap-[14px] items-center text-center">
      <span class="font-['Newsreader'] text-[10px] text-[#FFFFFF] uppercase font-bold tracking-widest w-full pb-[10px] border-b border-white/[0.10] block text-left">Download</span>
      <a href="{{ $insight->attachmentUrl() }}" target="_blank"
         style="background:#A80C18;text-decoration:none;"
         class="w-full py-[10px] rounded-[6px] text-white text-[12px] font-semibold flex items-center justify-center gap-[6px] hover:bg-[#8F0A13] transition-colors">
        <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"/><polyline points="7 10 12 15 17 10"/><line x1="12" y1="15" x2="12" y2="3"/></svg>
        <span>Download Full Brief (PDF)</span>
      </a>
      <span style="font-size:11px;" class="text-white/50">
        {{ $insight->page_count ? $insight->page_count . ' pages · ' : '' }}Free · Open Access
      </span>
    </div>
    @endif

    {{-- Author card(s) --}}
    @if($authors->isNotEmpty() || !empty($insight->outside_authors))
    <div style="background:#FFFFFF;border:1px solid #E4EAF0;border-radius:14px;padding:22px;" class="w-full flex flex-col gap-[14px]">
      <span style="font-size:10px;" class="text-[#64748B] uppercase font-bold tracking-widest w-full pb-[10px] border-b border-[#E4EAF0] block">
        {{ ($authors->count() + count($insight->outside_authors ?? [])) > 1 ? 'Authors' : 'Author' }}
      </span>
      @foreach($authors as $author)
      <div class="flex items-center gap-[12px]">
        @if($author->imageUrl())
          <img src="{{ $author->imageUrl() }}" alt="{{ $author->first_name }} {{ $author->last_name }}" class="w-[48px] h-[48px] rounded-full object-cover shrink-0" />
        @else
          <div class="w-[48px] h-[48px] rounded-full bg-[#E8F6F7] flex items-center justify-center shrink-0 text-[#0E606B] font-bold text-[16px]">
            {{ strtoupper(substr($author->first_name, 0, 1)) }}
          </div>
        @endif
        <div class="flex flex-col">
          <h4 class="text-[#0F172A] font-bold text-[14px]">{{ $author->first_name }} {{ $author->last_name }}</h4>
          @if($author->designation)<p class="font-['Newsreader'] text-[#64748B] text-[11px]">{{ $author->designation }}</p>@endif
          <a href="{{ route('teamdetails', $author->id) }}" class="text-[#0E606B] font-semibold text-[12px] flex items-center gap-[4px] hover:underline mt-[4px]" style="text-decoration:none;">
            <span>Full Profile</span><span class="text-[10px]">→</span>
          </a>
        </div>
      </div>
      @endforeach
      @foreach($insight->outside_authors ?? [] as $oa)
      <div class="flex items-center gap-[12px]">
        <div class="w-[48px] h-[48px] rounded-full bg-[#E8F6F7] flex items-center justify-center shrink-0 text-[#0E606B] font-bold text-[16px]">
          {{ strtoupper(substr($oa['name'] ?? 'A', 0, 1)) }}
        </div>
        <div class="flex flex-col">
          <h4 class="text-[#0F172A] font-bold text-[14px]">{{ $oa['name'] ?? '' }}</h4>
          @if(!empty($oa['description']))<p class="font-['Newsreader'] text-[#64748B] text-[11px]">{{ $oa['description'] }}</p>@endif
        </div>
      </div>
      @endforeach
    </div>
    @endif

    {{-- Publication details --}}
    <div style="background:#FFFFFF;border:1px solid #E4EAF0;border-radius:14px;padding:22px;" class="w-full flex flex-col gap-[4px] text-[13px]">
      <span style="font-size:10px;" class="text-[#64748B] uppercase font-bold tracking-widest pb-[10px] border-b border-[#E4EAF0] block mb-[6px]">Publication Details</span>
      <div class="flex justify-between py-[6px] border-b border-[#F1F5F9]">
        <span class="text-[#64748B]">Type</span>
        <strong class="text-[#0F172A]">{{ $insight->insightType?->type ?? '—' }}</strong>
      </div>
      @if($insight->published_at)
      <div class="flex justify-between py-[6px] border-b border-[#F1F5F9]">
        <span class="text-[#64748B]">Published</span>
        <strong class="text-[#0F172A]">{{ $insight->published_at->format('d M Y') }}</strong>
      </div>
      @endif
      @if($insight->page_count)
      <div class="flex justify-between py-[6px] border-b border-[#F1F5F9]">
        <span class="text-[#64748B]">Pages</span>
        <strong class="text-[#0F172A]">{{ $insight->page_count }}</strong>
      </div>
      @endif
      @if($insight->read_minutes)
      <div class="flex justify-between py-[6px] border-b border-[#F1F5F9]">
        <span class="text-[#64748B]">Read time</span>
        <strong class="text-[#0F172A]">{{ $insight->read_minutes }} min</strong>
      </div>
      @endif
      <div class="flex justify-between py-[6px]">
        <span class="text-[#64748B]">Language</span>
        <strong class="text-[#0F172A]">{{ $insight->language ?? 'English' }}</strong>
      </div>
    </div>

    {{-- Topics --}}
    @if(!empty($insight->topics))
    <div class="w-full bg-white border border-[#E4EAF0] rounded-[14px] p-[22px] flex flex-col gap-[14px]">
      <span class="font-['Newsreader'] text-[10px] text-[#64748B] uppercase font-bold tracking-widest pb-[10px] border-b border-[#E4EAF0]">Topics</span>
      <div class="flex flex-wrap gap-[6px]">
        @foreach($insight->topics as $topic)
        <span class="font-['Newsreader'] font-semibold text-[11px] leading-none text-[#1A1A1A] bg-[#F8FAFC] border border-[#E2E8F0] px-[8px] py-[4px] rounded-[4px]">
          {{ $topic }}
        </span>
        @endforeach
      </div>
    </div>
    @endif

    {{-- Related resources --}}
    @if($relatedInsights->isNotEmpty())
    <div style="background:#FFFFFF;border:1px solid #E4EAF0;border-radius:14px;padding:22px;" class="w-full flex flex-col gap-[14px]">
      <span style="font-size:10px;" class="text-[#64748B] uppercase font-bold tracking-widest pb-[10px] border-b border-[#E4EAF0] block">Related Resources</span>
      <div class="flex flex-col gap-[12px]">
        @foreach($relatedInsights as $rel)
        <a href="{{ route('resourcedetails', $rel->id) }}" class="flex gap-[10px] items-start" style="text-decoration:none;">
          @if($rel->imageUrl())
            <img src="{{ $rel->imageUrl() }}" alt="{{ $rel->heading }}" class="w-[40px] h-[40px] rounded-[6px] object-cover shrink-0" />
          @else
            <div class="w-[40px] h-[40px] rounded-[6px] bg-[#EEF3F8] shrink-0 flex items-center justify-center">
              <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="#0E606B" stroke-width="2"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
            </div>
          @endif
          <div>
            <h5 class="text-[#0F172A] font-bold text-[12px] line-clamp-2 leading-tight hover:text-[#0E606B] transition-colors">{{ $rel->heading }}</h5>
            <span class="text-[#94A3B8] text-[10px]">{{ $rel->insightType?->type ?? 'Resource' }}{{ $rel->published_at ? ' · ' . $rel->published_at->format('M Y') : '' }}</span>
          </div>
        </a>
        @endforeach
      </div>
    </div>
    @endif

  </aside>

</div>
</section>

@endsection
