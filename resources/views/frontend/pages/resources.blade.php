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
    </div>
  </div>
</section>

<section class="w-full bg-[#FFFFFF] pt-[48px] pb-[48px] md:pt-[88px] md:pb-[88px] px-4 md:px-8 flex flex-col items-center select-none overflow-hidden">
  <div class="w-full max-w-[1204px] mx-auto flex flex-col gap-[48px] items-start text-left">

    {{-- TAB NAV --}}
    <div class="w-full flex flex-wrap items-center justify-start gap-[8px] md:gap-[24px] border-b-2 border-[#E4EAF0] pb-0">
      <button data-tab="all"          class="tab-btn active-tab pb-[10px] border-b-2 border-[#A80C18] text-[#003054] font-semibold text-[13px] px-[2px] tracking-tight transition-all">All</button>
      <button data-tab="publications" class="tab-btn pb-[10px] border-b-2 border-transparent text-[#64748B] font-medium text-[13px] px-[2px] hover:text-[#003054] transition-all">Publications &amp; Reports</button>
      <button data-tab="briefs"       class="tab-btn pb-[10px] border-b-2 border-transparent text-[#64748B] font-medium text-[13px] px-[2px] hover:text-[#003054] transition-all">Issue Briefs/Articles</button>
      <button data-tab="expert"       class="tab-btn pb-[10px] border-b-2 border-transparent text-[#64748B] font-medium text-[13px] px-[2px] hover:text-[#003054] transition-all">Expert Speak/Blog</button>
      <button data-tab="news"         class="tab-btn pb-[10px] border-b-2 border-transparent text-[#64748B] font-medium text-[13px] px-[2px] hover:text-[#003054] transition-all">News &amp; Commentary/Op-Ed</button>
      <button data-tab="videos"       class="tab-btn pb-[10px] border-b-2 border-transparent text-[#64748B] font-medium text-[13px] px-[2px] hover:text-[#003054] transition-all">Videos &amp; Podcasts</button>
    </div>

    {{-- ===== TAB: ISSUE BRIEFS ===== --}}
    <div id="tab-briefs" class="tab-content w-full flex flex-col gap-[40px]">
      @if($briefs->isEmpty())
        <p class="text-[#64748B] font-['Newsreader']">No issue briefs available yet.</p>
      @else
        @php $featuredBrief = $briefs->firstWhere('is_featured', true) ?? $briefs->first(); $gridBriefs = $briefs->where('id', '!=', $featuredBrief->id); @endphp
        {{-- Featured --}}
        <a href="{{ route('resourcedetails', $featuredBrief->id) }}" class="w-full grid grid-cols-1 md:grid-cols-[480px_1fr] border border-[#E4EAF0] rounded-[20px] bg-white overflow-hidden shadow-sm" style="text-decoration:none;">
          <div class="w-full md:w-[480px] h-[220px] md:h-[320px] relative overflow-hidden bg-[#EEF3F8]">
            <span class="absolute top-0 left-0 bg-[#003054] text-white text-[10px] font-bold tracking-wider uppercase py-[4px] px-[8px] rounded-[4px] z-10">{{ $featuredBrief->insightType?->type ?? 'Issue Brief' }} · Featured</span>
            @if($featuredBrief->imageUrl())<img src="{{ $featuredBrief->imageUrl() }}" alt="{{ $featuredBrief->heading }}" class="w-full h-full object-cover">@endif
          </div>
          <div class="w-full p-[24px] md:pt-[55px] md:pr-[32px] md:pb-[55px] md:pl-[32px] flex flex-col justify-between items-start">
            <div class="flex flex-col gap-[8px]">
              <div class="text-[#64748B] text-[11px] font-medium flex items-center gap-[6px]">
                @if($featuredBrief->published_at)<span>{{ $featuredBrief->published_at->format('d M Y') }}</span>@endif
                @if($featuredBrief->topics && count($featuredBrief->topics))<span class="text-[#CBD5E1]">•</span><span>{{ implode(', ', array_slice($featuredBrief->topics, 0, 2)) }}</span>@endif
                @if($featuredBrief->page_count)<span class="text-[#CBD5E1]">•</span><span>{{ $featuredBrief->page_count }} pages</span>@endif
              </div>
              <h2 style="font-family:'Merriweather',serif;" class="text-[#003054] text-[22px] font-extrabold leading-[30px] tracking-tight">{{ $featuredBrief->heading }}</h2>
              @if($featuredBrief->description)<p class="font-['Newsreader'] text-[#475569] text-[13px] leading-[22px] max-w-[650px] mt-[4px]">{{ Str::limit($featuredBrief->description, 220) }}</p>@endif
            </div>
            <span class="text-[#A80C18] hover:text-[#003054] text-[12px] font-bold flex items-center gap-[4px] transition-colors mt-[12px]">Read Full Brief <span class="text-[14px]">→</span></span>
          </div>
        </a>
        {{-- Grid --}}
        @if($gridBriefs->isNotEmpty())
        <div class="w-full grid grid-cols-1 md:grid-cols-3 gap-x-[20px] gap-y-[24px]">
          @foreach($gridBriefs->take(6) as $brief)
          <a href="{{ route('resourcedetails', $brief->id) }}" class="w-full border border-[#E4EAF0] rounded-[14px] bg-white overflow-hidden flex flex-col justify-between p-[19px] shadow-sm hover:shadow-md transition-shadow" style="text-decoration:none;">
            <div class="flex flex-col">
              <div class="h-[160px] w-full relative overflow-hidden rounded-[8px] bg-[#EEF3F8]">
                <span class="absolute top-0 left-0 bg-[#003054] text-white text-[9px] font-bold tracking-wider uppercase py-[3px] px-[6px] rounded-[3px] z-10">{{ $brief->insightType?->type ?? 'Issue Brief' }}</span>
                @if($brief->imageUrl())<img src="{{ $brief->imageUrl() }}" alt="{{ $brief->heading }}" class="w-full h-full object-cover">@endif
              </div>
              <div class="pt-[14px] flex flex-col gap-[6px]">
                <div class="text-[#64748B] text-[11px] font-medium flex items-center gap-[4px]">
                  @if($brief->published_at)<span>{{ $brief->published_at->format('d M Y') }}</span>@endif
                  @if($brief->topics && count($brief->topics))<span class="text-[#CBD5E1]">•</span><span>{{ $brief->topics[0] }}</span>@endif
                  @if($brief->page_count)<span class="text-[#CBD5E1]">•</span><span>{{ $brief->page_count }} pages</span>@endif
                </div>
                <h3 style="font-family:'Merriweather',serif;" class="text-[#003054] text-[15px] font-bold leading-[22px] tracking-tight hover:text-[#8B1D2F] transition-colors line-clamp-2">{{ $brief->heading }}</h3>
                @if($brief->description)<p class="font-['Newsreader'] text-[#475569] text-[13px] leading-[18px] mt-[2px] pb-[16px]">{{ Str::limit($brief->description, 120) }}</p>@endif
              </div>
            </div>
            <div class="w-full pt-[10px] flex justify-between items-center border-t border-[#E4EAF0]">
              @php $oa = $brief->outside_authors[0] ?? null; @endphp
              <span class="text-[#64748B] text-[11px] font-medium">{{ $oa['name'] ?? 'GIET Foundation' }}</span>
              <span class="text-[#0E606B] hover:text-[#8B1D2F] text-[11px] font-bold transition-colors">{{ $brief->attachmentUrl() ? 'Download PDF' : 'Read →' }}</span>
            </div>
          </a>
          @endforeach
        </div>
        @endif
      @endif
    </div>

    {{-- ===== TAB: EXPERT SPEAK ===== --}}
    <div id="tab-expert" class="tab-content hidden w-full flex flex-col gap-[40px]">
      @if($expertSpeaks->isEmpty())
        <p class="text-[#64748B] font-['Newsreader']">No expert articles available yet.</p>
      @else
      <div class="w-full grid grid-cols-1 md:grid-cols-3 gap-[40px]">
        @foreach($expertSpeaks as $item)
        <a href="{{ route('resourcedetails', $item->id) }}" class="w-full border border-[#E4EAF0] rounded-[14px] bg-white overflow-hidden flex flex-col" style="min-height:380px;text-decoration:none;">
          <div class="h-[170px] w-full relative overflow-hidden shrink-0 bg-[#F7F9FB]">
            <div class="absolute inset-0 z-[5] pointer-events-none" style="background:linear-gradient(0deg,rgba(0,30,54,0.8) 0%,rgba(0,30,54,0) 60%);"></div>
            <span class="absolute top-0 left-0 bg-[#003054] text-white text-[9px] font-bold tracking-wider uppercase py-[3px] px-[6px] rounded-[3px] z-10">{{ $item->insightType?->type ?? 'Expert Speak' }}</span>
            @if($item->imageUrl())<img src="{{ $item->imageUrl() }}" alt="{{ $item->heading }}" class="w-full h-full object-cover object-top">@endif
          </div>
          <div class="flex flex-col gap-[7px] p-[18px] pt-[14px]">
            @php $expOa = $item->outside_authors[0] ?? null; @endphp
            <div class="text-[#64748B] text-[11px] font-medium flex items-center gap-[4px]">
              @if($item->published_at)<span>{{ $item->published_at->format('d M Y') }}</span>@endif
              @if($expOa)<span class="text-[#CBD5E1]">•</span><span>{{ $expOa['name'] }}</span>@endif
            </div>
            <h3 style="font-family:'Manrope',sans-serif;font-weight:700;font-size:15px;line-height:21px;color:#003054;" class="hover:text-[#8B1D2F] transition-colors line-clamp-2">{{ $item->heading }}</h3>
            @if($item->description)<p class="font-['Newsreader'] mt-[2px] pb-[5px]" style="font-size:13px;line-height:20.8px;color:#1A1A1A;">{{ Str::limit($item->description, 140) }}</p>@endif
          </div>
          <div class="flex justify-between items-center border-t border-[#E4EAF0] mt-auto px-[18px] pt-[10px] pb-[16px]">
            <span class="text-[#64748B] text-[11px] font-medium">{{ $expOa['description'] ?? 'GIET Foundation' }}</span>
            <span style="font-family:'Outfit',sans-serif;font-weight:700;font-size:12px;line-height:1;color:#0E606B;" class="hover:text-[#8B1D2F] transition-colors">Read →</span>
          </div>
        </a>
        @endforeach
      </div>
      @endif
    </div>

    {{-- ===== TAB: PUBLICATIONS ===== --}}
    <div id="tab-publications" class="tab-content hidden w-full flex flex-col gap-[16px]">
      @if($publications->isEmpty())
        <p class="text-[#64748B] font-['Newsreader']">No publications available yet.</p>
      @else
      <div class="w-full flex flex-col bg-white">
        @foreach($publications as $pub)
        <div class="flex items-center justify-between py-[20px] gap-[20px] border-b border-[#E4EAF0] hover:bg-[#F7F9FB] transition-colors">
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
      @endif
    </div>

    {{-- ===== TAB: NEWS & COMMENTARY ===== --}}
    <div id="tab-news" class="tab-content hidden w-full flex flex-col gap-[40px]">
      @if($newsItems->isEmpty())
        <p class="text-[#64748B] font-['Newsreader']">No news or commentary available yet.</p>
      @else
      <div class="w-full grid grid-cols-1 md:grid-cols-3 gap-[40px]">
        @foreach($newsItems as $news)
        <a href="{{ route('resourcedetails', $news->id) }}" class="w-full border border-[#E4EAF0] rounded-[14px] bg-white flex flex-col relative overflow-hidden" style="min-height:380px;text-decoration:none;">
          <span class="absolute top-0 left-0 bg-[#003054] text-white" style="font-family:'Outfit',sans-serif;font-weight:700;font-size:9.5px;letter-spacing:0.95px;text-transform:uppercase;padding:6px 14px;z-index:30;">{{ $news->insightType?->type ?? 'Commentary' }}</span>
          <div class="h-[170px] w-full shrink-0 overflow-hidden rounded-t-[14px] bg-[#EEF3F8]">
            @if($news->imageUrl())<img src="{{ $news->imageUrl() }}" alt="{{ $news->heading }}" class="w-full h-full object-cover">@endif
          </div>
          <div class="flex flex-col flex-grow p-[18px] gap-[8px]">
            @if($news->published_at)<p class="font-['Newsreader']" style="font-size:11px;color:#64748B;">{{ $news->published_at->format('d M Y') }}</p>@endif
            <h3 style="font-family:'Manrope',sans-serif;font-weight:700;font-size:14.5px;line-height:20.3px;color:#0F172A;" class="hover:text-[#8B1D2F] transition-colors line-clamp-2">{{ $news->heading }}</h3>
            @if($news->description)<p class="font-['Newsreader'] line-clamp-3" style="font-size:13px;line-height:20.8px;color:#1A1A1A;">{{ Str::limit($news->description, 150) }}</p>@endif
          </div>
          <div class="border-t border-[#E4EAF0] flex justify-between items-center px-[18px] pt-[10px] pb-[10px] mt-auto mb-[5px]">
            @php $na = $news->outside_authors[0] ?? null; @endphp
            <span style="font-size:11px;color:#64748B;">{{ $na['name'] ?? 'GIET Editorial' }}</span>
            <span style="font-family:'Outfit',sans-serif;font-weight:700;font-size:12px;color:#0E606B;" class="hover:text-[#8B1D2F] transition-colors">Read →</span>
          </div>
        </a>
        @endforeach
      </div>
      @endif
    </div>

    {{-- ===== TAB: VIDEOS & PODCASTS ===== --}}
    <div id="tab-videos" class="tab-content hidden w-full flex flex-col gap-[40px]">
      @if($videos->isEmpty())
        <p class="text-[#64748B] font-['Newsreader']">No videos or podcasts available yet.</p>
      @else
      <div class="w-full grid grid-cols-1 md:grid-cols-3 gap-[40px]">
        @foreach($videos as $vid)
        <a href="{{ $vid->videoUrl() ?: route('resourcedetails', $vid->id) }}" {{ $vid->videoUrl() ? 'target=_blank' : '' }} class="w-full border border-[#E4EAF0] rounded-[14px] bg-white overflow-hidden flex flex-col" style="height:270px;text-decoration:none;">
          <div class="relative overflow-hidden bg-[#1a1a2e] shrink-0" style="height:170px;">
            @if($vid->imageUrl())<img src="{{ $vid->imageUrl() }}" alt="{{ $vid->heading }}" class="w-full h-full object-cover">@endif
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
      @endif
    </div>

  </div>
</section>

<script>
  const tabBtns = document.querySelectorAll('.tab-btn');
  const tabContents = document.querySelectorAll('.tab-content');

  function activateTab(target) {
    tabBtns.forEach(b => {
      b.classList.remove('border-[#A80C18]', 'text-[#003054]', 'font-semibold', 'active-tab');
      b.classList.add('border-transparent', 'text-[#64748B]', 'font-medium');
    });
    const activeBtn = document.querySelector('[data-tab="' + target + '"]');
    if (activeBtn) {
      activeBtn.classList.remove('border-transparent', 'text-[#64748B]', 'font-medium');
      activeBtn.classList.add('border-[#A80C18]', 'text-[#003054]', 'font-semibold', 'active-tab');
    }
    if (target === 'all') {
      tabContents.forEach(c => c.classList.remove('hidden'));
    } else {
      tabContents.forEach(c => c.classList.add('hidden'));
      const el = document.getElementById('tab-' + target);
      if (el) el.classList.remove('hidden');
    }
  }

  tabBtns.forEach(btn => {
    btn.addEventListener('click', () => {
      activateTab(btn.dataset.tab);
      history.replaceState(null, '', '#' + btn.dataset.tab);
    });
  });

  const hashMap = { all:'all', briefs:'briefs', expert:'expert', publications:'publications', news:'news', videos:'videos' };
  const hash = window.location.hash.replace('#', '');
  activateTab(hashMap[hash] || 'all');
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
