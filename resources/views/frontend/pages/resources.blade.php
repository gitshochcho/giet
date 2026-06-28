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
      <h1 class="text-white font-['Newsreader'] font-extrabold leading-tight tracking-[-1.04px] drop-shadow-sm mb-[14px]" style="font-size:clamp(28px,5vw,52px);">{{ $resourcesHero?->heading ?? '' }}</h1>
      <p class="text-white/60 font-['Newsreader'] font-normal text-[14px] leading-[24.5px] max-w-[654px] pb-[20px]">
        {{ cleanText($resourcesHero?->description ?? '') }}
      </p>
      <div class="w-full max-w-[580px] mt-[10px]">
        <div class="flex items-center bg-white rounded-[8px] overflow-hidden h-[52px]" style="box-shadow:0 2px 12px rgba(0,0,0,0.15);">
          <div class="relative flex-1">
            <svg class="absolute left-[14px] top-1/2 -translate-y-1/2 pointer-events-none" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="#94A3B8" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round"><circle cx="11" cy="11" r="8"/><path d="m21 21-4.35-4.35"/></svg>
            <input id="resourceSearch" type="text" placeholder="Search publications, topics, experts..."
                   style="font-family:'Inter',sans-serif;font-size:13px;color:#0F172A;"
                   class="w-full h-[52px] bg-transparent pl-[42px] pr-[36px] placeholder-[#94A3B8] focus:outline-none">
            <button id="searchClear" type="button" class="hidden absolute right-[10px] top-1/2 -translate-y-1/2 text-[#94A3B8] hover:text-[#64748B] transition-colors" style="font-size:16px;line-height:1;">✕</button>
          </div>
          <button id="searchBtn" type="button"
                  style="font-family:'Inter',sans-serif;font-weight:600;font-size:13px;background:#003054;white-space:nowrap;border-left:1px solid rgba(0,48,84,0.15);"
                  class=" h-full px-[24px] text-white hover:bg-[#002040] transition-colors shrink-0">
            Search
          </button>
        </div>
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
        @php $pubList = $typeItems->values(); $pubTotal = $pubList->count(); @endphp
        <div class="w-full flex flex-col bg-white" id="pub-list-{{ $rtype->id }}">
          @foreach($pubList as $pubIdx => $pub)
          @php
            $metaParts = ['GIET Foundation'];
            if ($pub->published_at) $metaParts[] = $pub->published_at->format('F Y');
            if ($pub->page_count)   $metaParts[] = $pub->page_count . ' pages';
            if (!empty($pub->topics)) foreach (array_slice($pub->topics, 0, 2) as $t) $metaParts[] = $t;
            if ($pub->articles_count > 0) $metaParts[] = $pub->articles_count . ' ' . ($pub->articles_count === 1 ? 'chapter' : 'chapters');
          @endphp
          @php $pubHref = $pub->attachmentUrl() ?: route('resourcedetails', $pub->id); $pubTarget = $pub->attachmentUrl() ? '_blank' : '_self'; @endphp
          <a href="{{ $pubHref }}" target="{{ $pubTarget }}"
             class="resource-card pub-item flex items-center justify-between gap-[20px] border-b border-[#E4EAF0] transition-colors"
             style="text-decoration:none;padding:20px 0;{{ $pubIdx >= 5 ? 'display:none;' : '' }}"
             onmouseover="this.style.background='#F7F9FB';this.style.padding='20px 12px';this.style.borderRadius='8px';this.style.marginLeft='-12px';this.style.marginRight='-12px'"
             onmouseout="this.style.background='';this.style.padding='20px 0';this.style.borderRadius='';this.style.marginLeft='';this.style.marginRight=''">
            <div class="flex items-center gap-[18px] flex-grow min-w-0">
              <div class="w-[42px] h-[42px] rounded-[10px] flex items-center justify-center shrink-0" style="background:#E8F6F7;border:1px solid rgba(14,96,107,0.08);">
                <svg width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="#0E606B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
              </div>
              <div class="flex flex-col gap-[4px] min-w-0">
                <div class="flex items-center flex-wrap gap-[5px]">
                  <span style="font-family:'Inter',sans-serif;font-weight:700;font-size:9.5px;color:#0E606B;background:#E8F6F7;border-radius:4px;letter-spacing:0.6px;" class="uppercase py-[2px] px-[7px] whitespace-nowrap">{{ $pub->insightType?->type ?? 'Publication' }}</span>
                  @if($pub->published_at)<span style="font-family:'Inter',sans-serif;font-weight:700;font-size:9.5px;color:#003054;background:rgba(0,48,84,0.07);border-radius:4px;letter-spacing:0.6px;" class="uppercase py-[2px] px-[7px] whitespace-nowrap">{{ $pub->published_at->format('Y') }}</span>@endif
                </div>
                <h4 style="font-family:'Manrope',sans-serif;font-weight:700;font-size:15px;line-height:21px;color:#0F172A;margin:0;" class="truncate">{{ $pub->heading }}</h4>
                <p style="font-family:'Inter',sans-serif;font-size:11px;color:#94A3B8;line-height:1.4;margin:0;">{{ implode(' · ', $metaParts) }}</p>
              </div>
            </div>
            <div class="shrink-0 flex items-center ml-[12px]">
              <span style="display:inline-flex;align-items:center;gap:5px;padding:7px 14px;border-radius:999px;border:1px solid #E4EAF0;font-family:'Inter',sans-serif;font-weight:600;font-size:11.5px;color:#003054;white-space:nowrap;">
                <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"/><polyline points="7 10 12 15 17 10"/><line x1="12" y1="15" x2="12" y2="3"/></svg>
                Download PDF
              </span>
            </div>
          </a>
          @endforeach
        </div>
        @if($pubTotal > 5)
        <div class="w-full flex justify-center pt-[8px]" id="pub-load-more-{{ $rtype->id }}">
          <button onclick="loadMorePubs('{{ $rtype->id }}')"
                  style="font-family:'Inter',sans-serif;font-weight:600;font-size:13px;color:#475569;border:1.5px solid #E4EAF0;border-radius:999px;background:#fff;cursor:pointer;transition:all 0.15s;display:inline-flex;align-items:center;gap:6px;padding:10px 28px;"
                  onmouseover="this.style.borderColor='#003054';this.style.color='#003054'" onmouseout="this.style.borderColor='#E4EAF0';this.style.color='#475569'">
            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round"><polyline points="7 10 12 15 17 10"/><line x1="12" y1="15" x2="12" y2="3"/></svg>
            Load More <span style="color:#94A3B8;font-weight:400;">({{ $pubTotal - 5 }} more)</span>
          </button>
        </div>
        @endif

        @elseif(in_array(strtolower($rtype->type_category), ['watch', 'video_watch']))
        {{-- ── VIDEO GRID ── --}}
        @php $vidItems = $typeItems->values(); $vidTotal = $vidItems->count(); @endphp
        <div class="w-full grid grid-cols-1 md:grid-cols-3 gap-x-[20px] gap-y-[24px]" id="card-grid-{{ $rtype->id }}">
          @foreach($vidItems as $vIdx => $vid)
          <a href="{{ $vid->videoUrl() ?: route('resourcedetails', $vid->id) }}" {{ $vid->videoUrl() ? 'target="_blank"' : '' }}
             class="resource-card w-full border border-[#E4EAF0] rounded-[14px] bg-white overflow-hidden flex flex-col hover:shadow-[0_6px_24px_rgba(0,48,84,0.09)] transition-shadow duration-300"
             style="text-decoration:none;{{ $vIdx >= 6 ? 'display:none;' : '' }}">
            <div class="relative overflow-hidden bg-[#0f1923] shrink-0" style="height:190px;">
              @if($vid->imageUrl())<img src="{{ $vid->imageUrl() }}" alt="{{ $vid->heading }}" class="w-full h-full object-cover" style="opacity:0.88;" loading="lazy" decoding="async">@endif
              <div class="absolute inset-0 flex items-center justify-center">
                <div class="w-[50px] h-[50px] bg-white rounded-full flex items-center justify-center" style="box-shadow:0 4px 20px rgba(0,0,0,0.30);">
                  <svg width="16" height="16" viewBox="0 0 24 24" fill="#A80C18" style="margin-left:3px;"><polygon points="5 3 19 12 5 21 5 3"/></svg>
                </div>
              </div>
              @if($vid->duration)<span class="absolute bottom-[8px] right-[8px] text-white text-[10px] font-medium px-[6px] py-[2px] rounded-[3px]" style="background:rgba(0,0,0,0.72);">{{ $vid->duration }}</span>@endif
              <span class="absolute top-[10px] left-[10px]" style="background:#003054;color:#fff;font-size:9px;font-weight:700;letter-spacing:0.8px;text-transform:uppercase;padding:3px 8px;border-radius:4px;">{{ $vid->insightType?->type ?? 'VIDEO' }}</span>
            </div>
            <div class="p-[16px] flex flex-col flex-grow gap-[6px]">
              <p style="font-family:'Inter',sans-serif;font-size:11px;color:#94A3B8;font-weight:500;margin:0;">
                {{ strtoupper($vid->insightType?->type ?? 'VIDEO') }}{{ $vid->published_at ? ' · ' . $vid->published_at->format('M Y') : '' }}
              </p>
              <h3 style="font-family:'Merriweather',serif;font-weight:700;font-size:14.5px;line-height:21px;color:#0F172A;margin:0;" class="line-clamp-2">{{ $vid->heading }}</h3>
              @if($vid->published_at || $vid->attendee_count)
              <p style="font-family:'Inter',sans-serif;font-size:11px;color:#94A3B8;margin:0;">
                {{ $vid->published_at?->format('d M Y') }}{{ $vid->attendee_count ? ' · ' . number_format($vid->attendee_count) . ' attendees' : '' }}
              </p>
              @endif
            </div>
          </a>
          @endforeach
        </div>
        @if($vidTotal > 6)
        <div class="w-full flex justify-center" id="card-load-more-{{ $rtype->id }}">
          <button onclick="loadMoreCards('{{ $rtype->id }}')"
                  style="font-family:'Inter',sans-serif;font-weight:600;font-size:13px;color:#475569;border:1.5px solid #E4EAF0;border-radius:999px;background:#fff;cursor:pointer;transition:all 0.15s;display:inline-flex;align-items:center;gap:6px;padding:10px 28px;"
                  onmouseover="this.style.borderColor='#003054';this.style.color='#003054'" onmouseout="this.style.borderColor='#E4EAF0';this.style.color='#475569'">
            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round"><polyline points="7 10 12 15 17 10"/><line x1="12" y1="15" x2="12" y2="3"/></svg>
            Load More <span style="color:#94A3B8;font-weight:400;">({{ $vidTotal - 6 }} more)</span>
          </button>
        </div>
        @endif

        @else
        {{-- ── ARTICLE CARDS: featured + grid ── --}}
        @php
          $featured  = $typeItems->firstWhere('is_featured', true) ?? $typeItems->first();
          $gridItems = $typeItems->reject(fn($i) => $i->id === $featured->id)->values();
          $gridTotal = $gridItems->count();
        @endphp

        {{-- Featured Card --}}
        <a href="{{ route('resourcedetails', $featured->id) }}"
           class="resource-card w-full grid grid-cols-1 md:grid-cols-[480px_1fr] border border-[#E4EAF0] rounded-[20px] bg-white overflow-hidden hover:shadow-[0_8px_32px_rgba(0,48,84,0.10)] transition-shadow duration-300"
           style="text-decoration:none;">
          <div class="w-full h-[240px] md:h-full relative overflow-hidden bg-[#EEF3F8] shrink-0">
            <span class="absolute top-[12px] left-[12px] z-10" style="background:#003054;color:#fff;font-size:10px;font-weight:700;letter-spacing:0.8px;text-transform:uppercase;padding:4px 10px;border-radius:4px;">{{ $featured->insightType?->type ?? 'Resource' }} · Featured</span>
            @if($featured->imageUrl())<img src="{{ $featured->imageUrl() }}" alt="{{ $featured->heading }}" class="w-full h-full object-cover">@endif
          </div>
          <div class="p-[28px] md:pt-[48px] md:pr-[40px] md:pb-[48px] md:pl-[40px] flex flex-col justify-between">
            <div class="flex flex-col gap-[10px]">
              <div style="font-family:'Inter',sans-serif;font-size:11px;color:#64748B;font-weight:500;" class="flex items-center gap-[6px] flex-wrap">
                @if($featured->published_at)<span>{{ $featured->published_at->format('d M Y') }}</span>@endif
                @if($featured->topics && count($featured->topics))<span style="color:#CBD5E1;">•</span><span>{{ implode(', ', array_slice($featured->topics, 0, 2)) }}</span>@endif
                @if($featured->page_count)<span style="color:#CBD5E1;">•</span><span>{{ $featured->page_count }} pages</span>@endif
              </div>
              <h2 style="font-family:'Merriweather',serif;font-weight:800;font-size:22px;line-height:32px;color:#003054;letter-spacing:-0.3px;margin:0;">{{ $featured->heading }}</h2>
              @if($featured->description)<p style="font-family:'Newsreader',serif;font-size:14px;line-height:23px;color:#475569;margin:0;">{{ Str::limit(cleanText($featured->description), 240) }}</p>@endif
            </div>
            <span style="font-family:'Inter',sans-serif;font-size:12px;font-weight:700;color:#A80C18;display:inline-flex;align-items:center;gap:4px;margin-top:20px;">Read Full Brief <span style="font-size:14px;">→</span></span>
          </div>
        </a>

        {{-- Grid Cards --}}
        @if($gridItems->isNotEmpty())
        <div class="w-full grid grid-cols-1 md:grid-cols-3 gap-x-[20px] gap-y-[24px]" id="card-grid-{{ $rtype->id }}">
          @foreach($gridItems as $gIdx => $item)
          @php $oa = $item->outside_authors[0] ?? null; @endphp
          <a href="{{ route('resourcedetails', $item->id) }}"
             class="resource-card w-full border border-[#E4EAF0] rounded-[14px] bg-white overflow-hidden flex flex-col hover:shadow-[0_6px_24px_rgba(0,48,84,0.09)] transition-shadow duration-300"
             style="text-decoration:none;{{ $gIdx >= 6 ? 'display:none;' : '' }}">
            {{-- Image: full-bleed, no padding --}}
            <div class="w-full relative overflow-hidden bg-[#EEF3F8] shrink-0" style="height:200px;">
              <span class="absolute top-[10px] left-[10px] z-10" style="background:#003054;color:#fff;font-size:9px;font-weight:700;letter-spacing:0.8px;text-transform:uppercase;padding:3px 8px;border-radius:4px;">{{ $item->insightType?->type ?? 'Resource' }}</span>
              @if($item->imageUrl())<img src="{{ $item->imageUrl() }}" alt="{{ $item->heading }}" class="w-full h-full object-cover" loading="lazy" decoding="async">@endif
            </div>
            {{-- Text content with padding --}}
            <div class="p-[18px] flex flex-col flex-grow gap-[7px]">
              <div style="font-family:'Inter',sans-serif;font-size:11px;color:#94A3B8;font-weight:500;" class="flex items-center gap-[4px] flex-wrap">
                @if($item->published_at)<span>{{ $item->published_at->format('d M Y') }}</span>@endif
                @if($item->topics && count($item->topics))<span style="color:#E2E8F0;">•</span><span>{{ $item->topics[0] }}</span>@endif
                @if($item->page_count)<span style="color:#E2E8F0;">•</span><span>{{ $item->page_count }} pages</span>@endif
              </div>
              <h3 style="font-family:'Merriweather',serif;font-weight:700;font-size:15px;line-height:22px;color:#003054;margin:0;letter-spacing:-0.2px;" class="line-clamp-2">{{ $item->heading }}</h3>
              @if($item->description)
              <p style="font-family:'Newsreader',serif;font-size:13px;line-height:19px;color:#64748B;margin:0;" class="line-clamp-3 flex-grow">{{ Str::limit(cleanText($item->description), 150) }}</p>
              @endif
              <div class="mt-auto pt-[10px] border-t border-[#F1F5F9] flex items-center justify-between">
                <span style="font-family:'Inter',sans-serif;font-size:11px;color:#94A3B8;font-weight:500;">{{ $oa['name'] ?? 'GIET Foundation' }}</span>
                <span style="font-family:'Inter',sans-serif;font-size:11px;color:#0E606B;font-weight:700;">{{ $item->attachmentUrl() ? 'Download PDF' : 'Read →' }}</span>
              </div>
            </div>
          </a>
          @endforeach
        </div>
        @if($gridTotal > 6)
        <div class="w-full flex justify-center" id="card-load-more-{{ $rtype->id }}">
          <button onclick="loadMoreCards('{{ $rtype->id }}')"
                  style="font-family:'Inter',sans-serif;font-weight:600;font-size:13px;color:#475569;border:1.5px solid #E4EAF0;border-radius:999px;background:#fff;cursor:pointer;transition:all 0.15s;display:inline-flex;align-items:center;gap:6px;padding:10px 28px;"
                  onmouseover="this.style.borderColor='#003054';this.style.color='#003054'" onmouseout="this.style.borderColor='#E4EAF0';this.style.color='#475569'">
            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round"><polyline points="7 10 12 15 17 10"/><line x1="12" y1="15" x2="12" y2="3"/></svg>
            Load More <span style="color:#94A3B8;font-weight:400;">({{ $gridTotal - 6 }} more)</span>
          </button>
        </div>
        @endif
        @endif
        @endif

      </div>
      @endif
      @endforeach
    @endif

  </div>
</section>

<script>
  function loadMorePubs(rtypeId) {
    const list = document.getElementById('pub-list-' + rtypeId);
    if (!list) return;
    list.querySelectorAll('.pub-hidden').forEach(function(el) {
      el.style.display = '';
      el.classList.remove('pub-hidden');
    });
    const btn = document.getElementById('pub-load-more-' + rtypeId);
    if (btn) btn.style.display = 'none';
  }

  function loadMoreCards(rtypeId) {
    const grid = document.getElementById('card-grid-' + rtypeId);
    if (grid) {
      grid.querySelectorAll('a[style*="display:none"]').forEach(function(el) {
        el.style.display = '';
      });
    }
    const btn = document.getElementById('card-load-more-' + rtypeId);
    if (btn) btn.style.display = 'none';
  }

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
      <span style="font-family:'Inter',sans-serif;font-weight:700;font-size:11px;" class="text-[#0E606B] uppercase tracking-wider">{{ $resourcesResearch?->section ?? '' }}</span>
      <h2 style="font-family:'Merriweather',serif;font-weight:700;font-size:38px;line-height:46px;" class="text-[#003054] tracking-tight">{{ $resourcesResearch?->heading ?? '' }}</h2>
      <p class="font-['Newsreader'] text-[#475569]" style="font-size:14px;line-height:23px;">{{ cleanText($resourcesResearch?->description ?? '') }}</p>
    </div>
    <div style="background-color:#FFFFFF;border:1px solid #E4EAF0;border-radius:20px;" class="p-[36px] flex flex-col justify-between shadow-sm">
      <h3 style="font-family:'Merriweather',serif;font-weight:700;font-size:18px;" class="text-[#003054] tracking-tight">{{ $resourcesResearch?->sub_heading ?? '' }}</h3>

      @if(session('research_success'))
      <div style="font-family:'Inter',sans-serif;font-size:13px;background:#ecfdf5;border:1px solid #6ee7b7;border-radius:8px;" class="mt-[10px] px-[16px] py-[12px] text-[#065f46]">
        {{ session('research_success') }}
      </div>
      @endif

      <form class="flex flex-col gap-[14px] mt-[10px] w-full" action="{{ route('research-idea.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <input type="text" name="name" value="{{ old('name') }}" placeholder="Your name" required style="font-family:'Inter',sans-serif;background-color:#F8FAFC;border-color:{{ $errors->has('name') ? '#ef4444' : '#E4EAF0' }};" class="w-full h-[46px] rounded-[8px] px-[16px] text-[13px] text-[#0F172A] placeholder-[#94A3B8] focus:outline-none focus:border-[#18909C] transition-all border">
        @error('name')<p style="font-family:'Inter',sans-serif;font-size:11px;color:#ef4444;margin-top:-8px;">{{ $message }}</p>@enderror

        <input type="email" name="email" value="{{ old('email') }}" placeholder="Email address" required style="font-family:'Inter',sans-serif;background-color:#F8FAFC;border-color:{{ $errors->has('email') ? '#ef4444' : '#E4EAF0' }};" class="w-full h-[46px] rounded-[8px] px-[16px] text-[13px] text-[#0F172A] placeholder-[#94A3B8] focus:outline-none focus:border-[#18909C] transition-all border">
        @error('email')<p style="font-family:'Inter',sans-serif;font-size:11px;color:#ef4444;margin-top:-8px;">{{ $message }}</p>@enderror

        <input type="text" name="organisation" value="{{ old('organisation') }}" placeholder="Organisation" style="font-family:'Inter',sans-serif;background-color:#F8FAFC;border-color:#E4EAF0;" class="w-full h-[46px] rounded-[8px] px-[16px] text-[13px] text-[#0F172A] placeholder-[#94A3B8] focus:outline-none focus:border-[#18909C] transition-all border">

        <textarea name="message" placeholder="Describe your research proposal..." rows="3" style="font-family:'Inter',sans-serif;background-color:#F8FAFC;border-color:#E4EAF0;resize:none;" class="w-full h-[88px] rounded-[8px] p-[16px] text-[13px] text-[#0F172A] placeholder-[#94A3B8] focus:outline-none focus:border-[#18909C] transition-all border">{{ old('message') }}</textarea>

        <div>
          <label style="font-family:'Inter',sans-serif;font-weight:600;font-size:11px;color:#64748B;letter-spacing:0.5px;" class="block mb-[6px] uppercase">Attach a file <span class="font-normal normal-case">(PDF, DOC, DOCX, or image — max 5MB)</span></label>
          <input type="file" name="attachment" accept=".pdf,.doc,.docx,.jpg,.jpeg,.png"
                 style="font-family:'Inter',sans-serif;font-size:12px;background-color:#F8FAFC;border-color:#E4EAF0;"
                 class="w-full rounded-[8px] px-[12px] py-[10px] text-[#0F172A] border file:mr-3 file:py-[4px] file:px-[10px] file:rounded-[4px] file:border-0 file:text-[11px] file:font-semibold file:bg-[#003054] file:text-white hover:file:bg-[#002040] cursor-pointer">
          @error('attachment')<p style="font-family:'Inter',sans-serif;font-size:11px;color:#ef4444;margin-top:4px;">{{ $message }}</p>@enderror
        </div>

        <button type="submit" style="font-family:'Inter',sans-serif;background-color:#003054;" class="w-full h-[44px] rounded-[8px] mt-[4px] text-white font-semibold text-[13px] flex items-center justify-center gap-[6px] hover:bg-[#002040] transition-colors shadow-sm">
          <span>Submit</span><span class="text-[14px] font-normal">→</span>
        </button>
      </form>
    </div>
  </div>
</section>

@endsection
