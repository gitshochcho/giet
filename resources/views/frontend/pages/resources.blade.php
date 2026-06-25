@extends('frontend.layout.app')

@section('content')

<section class="w-full bg-[#003054] relative overflow-hidden flex flex-col justify-center items-center select-none pt-[72px] pb-[48px] md:pt-0 md:pb-0 md:h-[414px]">
  <div class="absolute z-10 -top-[100px] -right-[100px] pointer-events-none bg-[rgba(24,144,156,0.07)] w-[400px] h-[400px] rounded-full"></div>
  <div class="w-full max-w-[1204px] mx-auto px-4 md:px-0 z-20 flex flex-col justify-between items-start gap-6 md:gap-0">
    <div class="w-full flex flex-col items-start">
      <div class="flex items-center gap-1.5 text-[12px] text-white/45 font-['Newsreader'] leading-[19.8px] mb-[4px]">
        <a href="{{ url('/') }}" class="hover:text-white transition-colors">Home</a>
        <span class="text-white/30">/</span>
        <span>Resources</span>
      </div>
      <div class="bg-[#18909C] w-[40px] h-[3px] rounded-[2px] mb-[12px]"></div>
      <h1 class="text-white font-['Newsreader'] font-extrabold leading-tight tracking-[-1.04px] drop-shadow-sm mb-[14px]" style="font-size:clamp(28px,5vw,52px);">Resources</h1>
      <p class="text-white/60 font-['Newsreader'] font-normal text-[14px] leading-[24.5px] max-w-[654px] pb-[20px]">
        Policy briefs, issue analyses, expert commentaries, research reports, videos, and podcasts from GIET's research team and contributing practitioners.
      </p>
      <div class="w-full max-w-[560px] mt-[10px] relative">
        <svg class="absolute left-[14px] top-1/2 -translate-y-1/2 pointer-events-none" width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="rgba(255,255,255,0.45)" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round"><circle cx="11" cy="11" r="8"/><path d="m21 21-4.35-4.35"/></svg>
        <input id="resourceSearch" type="text" placeholder="Search resources by title, topic, or keyword…"
               style="font-family:'Inter',sans-serif;font-size:13px;background:rgba(255,255,255,0.08);border:1px solid rgba(255,255,255,0.18);color:#fff;"
               class="w-full h-[48px] rounded-[8px] pl-[44px] pr-[16px] placeholder-white/35 focus:outline-none focus:border-white/40 transition-all">
        <button id="searchClear" type="button" class="hidden absolute right-[12px] top-1/2 -translate-y-1/2 text-white/40 hover:text-white/70 transition-colors" style="font-size:18px;line-height:1;">✕</button>
      </div>
    </div>
  </div>
</section>

<section class="w-full bg-[#FFFFFF] pt-[48px] pb-[48px] md:pt-[88px] md:pb-[88px] px-4 md:px-8 flex flex-col items-center select-none overflow-hidden">
  <div class="w-full max-w-[1204px] mx-auto flex flex-col gap-[48px] items-start text-left">

    {{-- TAB NAV — dynamic from Resource Types --}}
    <div class="w-full flex flex-wrap items-center justify-start gap-[8px] md:gap-[24px] border-b-2 border-[#E4EAF0] pb-0">
      <button data-tab="all" data-type-id=""
              class="tab-btn active-tab pb-[10px] border-b-2 border-[#A80C18] text-[#003054] font-semibold text-[13px] px-[2px] tracking-tight transition-all">All</button>
      @foreach($resourceTypes as $rtype)
      <button data-tab="type-{{ $rtype->id }}" data-type-id="{{ $rtype->id }}"
              class="tab-btn pb-[10px] border-b-2 border-transparent text-[#64748B] font-medium text-[13px] px-[2px] hover:text-[#003054] transition-all">
        {{ $rtype->type }}
      </button>
      @endforeach
    </div>

    {{-- ===== PER-TYPE SECTIONS (design driven by type_category) ===== --}}
    @if($all->isEmpty())
      <p class="text-[#64748B] font-['Newsreader']">No resources available yet.</p>
    @else
      @foreach($resourceTypes as $rtype)
      @php $typeItems = $all->filter(fn($i) => $i->insightType?->id === $rtype->id); @endphp
      @if($typeItems->isNotEmpty())
      <div class="type-section w-full flex flex-col gap-[40px]" data-type-id="{{ $rtype->id }}">

        @if($rtype->type_category === 'download')
        {{-- ── PUBLICATION LIST ── --}}
        <div class="w-full flex flex-col bg-white">
          @foreach($typeItems as $pub)
          <div class="resource-card flex items-center justify-between py-[20px] gap-[20px] border-b border-[#E4EAF0] hover:bg-[#F7F9FB] transition-colors">
            <div class="flex items-start gap-[20px] flex-grow">
              <div class="w-[44px] h-[44px] rounded-[10px] flex items-center justify-center shrink-0" style="background:#E8F6F7;">
                <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#0E606B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
              </div>
              <div class="flex flex-col gap-[6px]">
                <div class="flex items-center gap-[6px]">
                  <span style="font-family:'Outfit',sans-serif;font-weight:700;font-size:10px;color:#0E606B;background:#E8F6F7;border-radius:999px;" class="uppercase tracking-[1px] py-[2px] px-[8px]">{{ $pub->insightType?->type ?? 'Publication' }}</span>
                  @if($pub->published_at)<span style="font-family:'Outfit',sans-serif;font-weight:700;font-size:10px;letter-spacing:0.8px;text-transform:uppercase;color:#003054;background:#00305412;border-radius:999px;" class="py-[2px] px-[8px]">{{ $pub->published_at->format('Y') }}</span>@endif
                </div>
                <h4 style="font-family:'Manrope',sans-serif;font-weight:700;font-size:15px;line-height:21.3px;color:#0F172A;">{{ $pub->heading }}</h4>
                <p class="font-['Newsreader']" style="font-size:12px;color:#6B7280;">GIET Foundation{{ $pub->published_at ? ' · ' . $pub->published_at->format('M Y') : '' }}{{ $pub->page_count ? ' · ' . $pub->page_count . ' pages' : '' }}</p>
              </div>
            </div>
            @if($pub->attachmentUrl())
            <a href="{{ $pub->attachmentUrl() }}" target="_blank" class="flex items-center gap-[6px] shrink-0 hover:bg-[#E8F6F7] transition-all" style="padding:6px 14px;border-radius:999px;border:1px solid #E4EAF0;font-family:'Outfit',sans-serif;font-weight:700;font-size:12px;color:#003054;text-decoration:none;">
              <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"/><polyline points="7 10 12 15 17 10"/><line x1="12" y1="15" x2="12" y2="3"/></svg>
              Download PDF
            </a>
            @else
            <a href="{{ route('resourcedetails', $pub->id) }}" class="flex items-center gap-[6px] shrink-0 hover:bg-[#E8F6F7] transition-all" style="padding:6px 14px;border-radius:999px;border:1px solid #E4EAF0;font-family:'Outfit',sans-serif;font-weight:700;font-size:12px;color:#003054;text-decoration:none;">Read →</a>
            @endif
          </div>
          @endforeach
        </div>

        @elseif(in_array(strtolower($rtype->type_category), ['watch', 'video_watch']))
        {{-- ── VIDEO GRID ── --}}
        <div class="w-full grid grid-cols-1 md:grid-cols-3 gap-[40px]">
          @foreach($typeItems as $vid)
          <a href="{{ $vid->videoUrl() ?: route('resourcedetails', $vid->id) }}" {{ $vid->videoUrl() ? 'target=_blank' : '' }} class="resource-card w-full border border-[#E4EAF0] rounded-[14px] bg-white overflow-hidden flex flex-col" style="height:270px;text-decoration:none;">
            <div class="relative overflow-hidden bg-[#1a1a2e] shrink-0" style="height:170px;">
              @if($vid->imageUrl())<img src="{{ $vid->imageUrl() }}" alt="{{ $vid->heading }}" class="w-full h-full object-cover" loading="lazy" decoding="async">@endif
              <div class="absolute inset-0 flex items-center justify-center">
                <div class="w-[52px] h-[52px] bg-white rounded-full flex items-center justify-center" style="box-shadow:0 4px 16px rgba(0,0,0,0.25);">
                  <svg width="18" height="18" viewBox="0 0 24 24" fill="#A80C18" style="margin-left:3px;"><polygon points="5 3 19 12 5 21 5 3"/></svg>
                </div>
              </div>
              @if($vid->duration)<span class="absolute bottom-[8px] right-[8px] bg-black/70 text-white text-[10px] font-medium px-[6px] py-[2px] rounded-[3px]">{{ $vid->duration }}</span>@endif
            </div>
            <div class="p-[16px] flex flex-col flex-grow" style="gap:4.1px;">
              <p class="font-['Newsreader']" style="font-weight:700;font-size:10.5px;letter-spacing:1px;text-transform:uppercase;color:#0E606B;line-height:1;">
                {{ strtoupper($vid->insightType?->type ?? 'VIDEO') }}{{ $vid->published_at ? ' · ' . strtoupper($vid->published_at->format('M Y')) : '' }}
              </p>
              <h3 style="font-family:'Manrope',sans-serif;font-weight:700;font-size:14.5px;line-height:20.3px;color:#0F172A;" class="cursor-pointer hover:text-[#A80C18] transition-colors line-clamp-2">{{ $vid->heading }}</h3>
              @if($vid->published_at || $vid->attendee_count)
              <p class="font-['Newsreader']" style="font-size:11.5px;color:#6B7280;line-height:1;">
                {{ $vid->published_at?->format('d M Y') }}{{ $vid->attendee_count ? ' · ' . number_format($vid->attendee_count) . ' attendees' : '' }}
              </p>
              @endif
            </div>
          </a>
          @endforeach
        </div>

        @else
        {{-- ── ARTICLE CARDS: featured + grid ── --}}
        @php $featured = $typeItems->firstWhere('is_featured', true) ?? $typeItems->first(); $gridItems = $typeItems->reject(fn($i) => $i->id === $featured->id); @endphp
        <a href="{{ route('resourcedetails', $featured->id) }}" class="resource-card w-full grid grid-cols-1 md:grid-cols-[480px_1fr] border border-[#E4EAF0] rounded-[20px] bg-white overflow-hidden shadow-sm" style="text-decoration:none;">
          <div class="w-full md:w-[480px] h-[220px] md:h-[320px] relative overflow-hidden bg-[#EEF3F8]">
            <span class="absolute top-0 left-0 bg-[#003054] text-white text-[10px] font-bold tracking-wider uppercase py-[4px] px-[8px] rounded-[4px] z-10">{{ $featured->insightType?->type ?? 'Resource' }} · Featured</span>
            @if($featured->imageUrl())<img src="{{ $featured->imageUrl() }}" alt="{{ $featured->heading }}" class="w-full h-full object-cover">@endif
          </div>
          <div class="w-full p-[24px] md:pt-[55px] md:pr-[32px] md:pb-[55px] md:pl-[32px] flex flex-col justify-between items-start">
            <div class="flex flex-col gap-[8px]">
              <div class="text-[#64748B] text-[11px] font-medium flex items-center gap-[6px]">
                @if($featured->published_at)<span>{{ $featured->published_at->format('d M Y') }}</span>@endif
                @if($featured->topics && count($featured->topics))<span class="text-[#CBD5E1]">•</span><span>{{ implode(', ', array_slice($featured->topics, 0, 2)) }}</span>@endif
                @if($featured->page_count)<span class="text-[#CBD5E1]">•</span><span>{{ $featured->page_count }} pages</span>@endif
              </div>
              <h2 style="font-family:'Merriweather',serif;" class="text-[#003054] text-[22px] font-extrabold leading-[30px] tracking-tight">{{ $featured->heading }}</h2>
              @if($featured->description)<p class="font-['Newsreader'] text-[#475569] text-[13px] leading-[22px] max-w-[650px] mt-[4px]">{{ Str::limit(cleanText($featured->description), 220) }}</p>@endif
            </div>
            <span class="text-[#A80C18] hover:text-[#003054] text-[12px] font-bold flex items-center gap-[4px] transition-colors mt-[12px]">Read Full Brief <span class="text-[14px]">→</span></span>
          </div>
        </a>
        @if($gridItems->isNotEmpty())
        <div class="w-full grid grid-cols-1 md:grid-cols-3 gap-x-[20px] gap-y-[24px]">
          @foreach($gridItems as $item)
          @php $oa = $item->outside_authors[0] ?? null; @endphp
          <a href="{{ route('resourcedetails', $item->id) }}" class="resource-card w-full border border-[#E4EAF0] rounded-[14px] bg-white overflow-hidden flex flex-col justify-between p-[19px] shadow-sm hover:shadow-md transition-shadow" style="text-decoration:none;">
            <div class="flex flex-col">
              <div class="h-[160px] w-full relative overflow-hidden rounded-[8px] bg-[#EEF3F8]">
                <span class="absolute top-0 left-0 bg-[#003054] text-white text-[9px] font-bold tracking-wider uppercase py-[3px] px-[6px] rounded-[3px] z-10">{{ $item->insightType?->type ?? 'Resource' }}</span>
                @if($item->imageUrl())<img src="{{ $item->imageUrl() }}" alt="{{ $item->heading }}" class="w-full h-full object-cover" loading="lazy" decoding="async">@endif
              </div>
              <div class="pt-[14px] flex flex-col gap-[6px]">
                <div class="text-[#64748B] text-[11px] font-medium flex items-center gap-[4px]">
                  @if($item->published_at)<span>{{ $item->published_at->format('d M Y') }}</span>@endif
                  @if($item->topics && count($item->topics))<span class="text-[#CBD5E1]">•</span><span>{{ $item->topics[0] }}</span>@endif
                  @if($item->page_count)<span class="text-[#CBD5E1]">•</span><span>{{ $item->page_count }} pages</span>@endif
                </div>
                <h3 style="font-family:'Merriweather',serif;" class="text-[#003054] text-[15px] font-bold leading-[22px] tracking-tight hover:text-[#8B1D2F] transition-colors line-clamp-2">{{ $item->heading }}</h3>
                @if($item->description)<p class="font-['Newsreader'] text-[#475569] text-[13px] leading-[18px] mt-[2px] pb-[16px]">{{ Str::limit(cleanText($item->description), 120) }}</p>@endif
              </div>
            </div>
            <div class="w-full pt-[10px] flex justify-between items-center border-t border-[#E4EAF0]">
              <span class="text-[#64748B] text-[11px] font-medium">{{ $oa['name'] ?? 'GIET Foundation' }}</span>
              <span class="text-[#0E606B] hover:text-[#8B1D2F] text-[11px] font-bold transition-colors">{{ $item->attachmentUrl() ? 'Download PDF' : 'Read →' }}</span>
            </div>
          </a>
          @endforeach
        </div>
        @endif
        @endif

      </div>
      @endif
      @endforeach
    @endif

  </div>
</section>

<script>
  const tabBtns     = document.querySelectorAll('.tab-btn');
  const searchInput = document.getElementById('resourceSearch');
  const searchClear = document.getElementById('searchClear');
  let currentTypeId = '';

  function showSections(typeId) {
    document.querySelectorAll('.type-section').forEach(sec => {
      sec.style.display = (!typeId || sec.dataset.typeId === typeId) ? '' : 'none';
    });
  }

  function applySearch(q) {
    if (!q) {
      document.querySelectorAll('.resource-card').forEach(c => c.style.display = '');
      return;
    }
    document.querySelectorAll('.resource-card').forEach(c => {
      c.style.display = c.textContent.toLowerCase().includes(q) ? '' : 'none';
    });
  }

  function activateTab(tabKey, typeId) {
    currentTypeId = typeId || '';
    tabBtns.forEach(b => {
      b.classList.remove('border-[#A80C18]', 'text-[#003054]', 'font-semibold', 'active-tab');
      b.classList.add('border-transparent', 'text-[#64748B]', 'font-medium');
    });
    const activeBtn = document.querySelector('[data-tab="' + tabKey + '"]');
    if (activeBtn) {
      activeBtn.classList.remove('border-transparent', 'text-[#64748B]', 'font-medium');
      activeBtn.classList.add('border-[#A80C18]', 'text-[#003054]', 'font-semibold', 'active-tab');
    }
    showSections(currentTypeId);
    applySearch('');
  }

  tabBtns.forEach(btn => {
    btn.addEventListener('click', () => {
      if (searchInput) searchInput.value = '';
      if (searchClear) searchClear.classList.add('hidden');
      activateTab(btn.dataset.tab, btn.dataset.typeId);
      history.replaceState(null, '', '#' + btn.dataset.tab);
    });
  });

  if (searchInput) {
    searchInput.addEventListener('input', () => {
      const q = searchInput.value.trim();
      searchClear.classList.toggle('hidden', !q);
      if (q) {
        showSections(''); // show all sections when searching
        applySearch(q.toLowerCase());
      } else {
        showSections(currentTypeId);
        applySearch('');
      }
    });
  }
  if (searchClear) {
    searchClear.addEventListener('click', () => {
      searchInput.value = '';
      searchClear.classList.add('hidden');
      showSections(currentTypeId);
      applySearch('');
      searchInput.focus();
    });
  }

  activateTab('all', '');
</script>

<section style="background-color: #F1F5F9;" class="w-full py-[48px] md:py-[80px] relative flex justify-center items-center overflow-hidden select-none">
  <div class="hidden md:block" style="background-color:rgba(0,48,84,0.04);width:300px;height:300px;top:-60px;right:-60px;border-radius:150px;position:absolute;pointer-events:none;"></div>
  <div class="w-full max-w-[1204px] mx-auto grid grid-cols-1 md:grid-cols-2 gap-[40px] md:gap-[60px] items-center relative z-10 px-4 md:px-0">
    <div class="w-full max-w-[522px] flex flex-col gap-[14px] px-4">
      <span style="font-family:'Inter',sans-serif;font-weight:700;font-size:11px;" class="text-[#0E606B] uppercase tracking-wider">Research With Us</span>
      <h2 style="font-family:'Merriweather',serif;font-weight:700;font-size:38px;line-height:46px;" class="text-[#003054] tracking-tight">Interested in Submitting a Research Idea?</h2>
      <p class="font-['Newsreader'] text-[#475569]" style="font-size:14px;line-height:23px;">GIET welcomes research ideas from government agencies, development partners, universities, and civil society organizations. We provide funding, mentorship, and publication support.</p>
    </div>
    <div style="background-color:#FFFFFF;border:1px solid #E4EAF0;border-radius:20px;" class="p-[36px] flex flex-col justify-between shadow-sm">
      <h3 style="font-family:'Merriweather',serif;font-weight:700;font-size:18px;" class="text-[#003054] tracking-tight">Submit a Research Idea</h3>
      <form class="flex flex-col gap-[14px] mt-[10px] w-full" action="{{ route('contact') }}" method="GET">
        <input type="text" placeholder="Your name" style="font-family:'Inter',sans-serif;background-color:#F8FAFC;border-color:#E4EAF0;" class="w-full h-[46px] rounded-[8px] px-[16px] text-[13px] text-[#0F172A] placeholder-[#94A3B8] focus:outline-none focus:border-[#18909C] transition-all border">
        <input type="email" placeholder="Email address" style="font-family:'Inter',sans-serif;background-color:#F8FAFC;border-color:#E4EAF0;" class="w-full h-[46px] rounded-[8px] px-[16px] text-[13px] text-[#0F172A] placeholder-[#94A3B8] focus:outline-none focus:border-[#18909C] transition-all border">
        <input type="text" placeholder="Organisation" style="font-family:'Inter',sans-serif;background-color:#F8FAFC;border-color:#E4EAF0;" class="w-full h-[46px] rounded-[8px] px-[16px] text-[13px] text-[#0F172A] placeholder-[#94A3B8] focus:outline-none focus:border-[#18909C] transition-all border">
        <textarea placeholder="Describe your research proposal..." rows="3" style="font-family:'Inter',sans-serif;background-color:#F8FAFC;border-color:#E4EAF0;resize:none;" class="w-full h-[88px] rounded-[8px] p-[16px] text-[13px] text-[#0F172A] placeholder-[#94A3B8] focus:outline-none focus:border-[#18909C] transition-all border"></textarea>
        <button type="submit" style="font-family:'Inter',sans-serif;background-color:#003054;" class="w-full h-[44px] rounded-[8px] mt-[4px] text-white font-semibold text-[13px] flex items-center justify-center gap-[6px] hover:bg-[#002040] transition-colors shadow-sm">
          <span>Submit</span><span class="text-[14px] font-normal">→</span>
        </button>
      </form>
    </div>
  </div>
</section>

@endsection
