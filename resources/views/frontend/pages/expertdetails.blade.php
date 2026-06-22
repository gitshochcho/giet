@extends('frontend.layout.app')

@section('content')
<section class="w-full bg-white py-[40px] md:py-[60px] px-4 md:px-8">
  <div class="w-full max-w-[1204px] mx-auto flex flex-col gap-[56px]">

    <div class="grid grid-cols-1 md:grid-cols-[280px_1fr] gap-y-[56px] gap-x-[56px]">

      {{-- Left: Photo + Social Icons --}}
      <div class="flex flex-col gap-[12px]">
        @if($team->imageUrl())
          <img src="{{ $team->imageUrl() }}" alt="{{ $team->fullName() }}" class="w-full md:w-[280px] h-[300px] md:h-[350px] object-cover rounded-[16px]" />
        @else
          <div class="w-full md:w-[280px] h-[300px] md:h-[350px] bg-[#EEF3F8] rounded-[16px] flex items-center justify-center">
            <span style="color:#6B7280;font-size:14px;">No Photo</span>
          </div>
        @endif
        @if($team->socialMedia->count())
        <div class="flex gap-2 flex-wrap">
          @foreach($team->socialMedia as $social)
            @if($social->iconUrl())
            <a href="{{ $social->social_link ?: '#' }}" {{ $social->social_link ? 'target="_blank"' : '' }}
               style="width:38px;height:38px;border:1px solid #E4EAF0;border-radius:8px;display:flex;align-items:center;justify-content:center;text-decoration:none;">
              <img src="{{ $social->iconUrl() }}" alt="{{ $social->title }}" style="width:18px;height:18px;" />
            </a>
            @endif
          @endforeach
        </div>
        @endif
      </div>

      {{-- Right: Details --}}
      <div class="flex flex-col gap-[24px]">

        <div>
          @if($team->headtitle)
          <span style="padding:4px 12px;background:#E8F6F7;border:1px solid rgba(14,96,107,0.2);color:#0E606B;font-size:11px;font-weight:600;text-transform:uppercase;letter-spacing:1.5px;border-radius:999px;display:inline-block;">
            {{ $team->headtitle }}
          </span>
          @endif
          <h1 style="font-family:'Newsreader',Georgia,serif;font-weight:800;font-size:40px;line-height:1;letter-spacing:-0.8px;color:#0F172A;max-width:768px;padding-top:12px;margin:0;">
            {{ $team->fullName() }}
          </h1>
          @if($team->designation)
          <p style="font-family:'Newsreader',Georgia,serif;font-size:16px;color:#475569;margin:6px 0 0 0;">
            {{ $team->designation }}
          </p>
          @endif
        </div>

        {{-- Education / Experience / Languages / Location --}}
        @if($team->education || $team->experience || $team->languages || $team->location)
        <div style="display:flex;flex-wrap:wrap;gap:24px 32px;border-top:1px solid #E4EAF0;border-bottom:1px solid #E4EAF0;padding:16px 0;">
          @if($team->education)
          <div>
            <p style="font-family:'Newsreader',Georgia,serif;font-size:11px;color:#64748B;text-transform:uppercase;margin:0 0 2px 0;">Education</p>
            <p style="font-family:'Newsreader',Georgia,serif;font-size:14px;font-weight:600;color:#0F172A;margin:0;">{{ $team->education }}</p>
          </div>
          @endif
          @if($team->experience)
          <div>
            <p style="font-family:'Newsreader',Georgia,serif;font-size:11px;color:#64748B;text-transform:uppercase;margin:0 0 2px 0;">Experience</p>
            <p style="font-family:'Newsreader',Georgia,serif;font-size:14px;font-weight:600;color:#0F172A;margin:0;">{{ $team->experience }}</p>
          </div>
          @endif
          @if($team->languages)
          <div>
            <p style="font-family:'Newsreader',Georgia,serif;font-size:11px;color:#64748B;text-transform:uppercase;margin:0 0 2px 0;">Languages</p>
            <p style="font-family:'Newsreader',Georgia,serif;font-size:14px;font-weight:600;color:#0F172A;margin:0;">{{ $team->languages }}</p>
          </div>
          @endif
          @if($team->location)
          <div>
            <p style="font-family:'Newsreader',Georgia,serif;font-size:11px;color:#64748B;text-transform:uppercase;margin:0 0 2px 0;">Location</p>
            <p style="font-family:'Newsreader',Georgia,serif;font-size:14px;font-weight:600;color:#0F172A;margin:0;">{{ $team->location }}</p>
          </div>
          @endif
        </div>
        @endif

        {{-- Full Bio --}}
        @if($team->description)
        <div style="display:flex;flex-direction:column;gap:16px;font-family:'Newsreader',Georgia,serif;font-size:16px;color:#1A1A1A;line-height:1.75;">
          {!! nl2br(e($team->description)) !!}
        </div>
        @endif

        {{-- Areas of Expertise --}}
        @if($team->experties->count())
        <div style="margin-top:8px;display:flex;flex-direction:column;gap:12px;">
          <h4 style="font-size:11px;font-weight:700;color:#64748B;text-transform:uppercase;letter-spacing:1.5px;margin:0;">Areas of Expertise</h4>
          <div style="display:flex;flex-wrap:wrap;gap:10px;">
            @foreach($team->experties as $exp)
              <span style="padding:5px 14px;background:#E8F6F7;border:1px solid rgba(14,96,107,0.2);color:#0E606B;font-size:13px;font-weight:600;border-radius:999px;">{{ $exp->heading }}</span>
            @endforeach
          </div>
        </div>
        @endif

      </div>
    </div>

    {{-- Tabs: Publications / Projects --}}
    @if($team->insightArticles->count() || $team->projects->count())
    <div style="display:flex;flex-direction:column;gap:32px;">

      <div style="display:flex;gap:32px;border-bottom:1px solid #E4EAF0;">
        @if($team->insightArticles->count())
        <button id="exp-tab-pub" onclick="expSwitchTab('pub')"
          style="padding-bottom:10px;border:none;border-bottom:2px solid #003054;background:none;color:#0F172A;font-weight:600;font-size:14px;cursor:pointer;">
          Publications
        </button>
        @endif
        @if($team->projects->count())
        <button id="exp-tab-projects" onclick="expSwitchTab('projects')"
          style="padding-bottom:10px;border:none;border-bottom:2px solid transparent;background:none;color:#64748B;font-weight:500;font-size:14px;cursor:pointer;">
          Projects
        </button>
        @endif
      </div>

      {{-- Publications --}}
      @if($team->insightArticles->count())
      <div id="exp-content-pub" style="display:flex;flex-direction:column;">
        @foreach($team->insightArticles as $article)
        <div style="display:flex;justify-content:space-between;align-items:center;padding:18px 0;gap:18px;border-bottom:1px solid #E4EAF0;flex-wrap:wrap;">
          <div style="display:flex;gap:16px;align-items:center;">
            <div style="background:#F1F5F9;padding:8px;border-radius:8px;flex-shrink:0;">
              <svg width="24" height="24" fill="none" stroke="#64748B" stroke-width="1.5" viewBox="0 0 24 24"><path d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"/></svg>
            </div>
            <div>
              @if($article->insight)
              <p style="font-family:'Newsreader',Georgia,serif;font-size:10px;font-weight:700;text-transform:uppercase;letter-spacing:1px;color:#0E606B;margin:0 0 4px 0;">
                {{ $article->insight->insightType?->type ?? '' }}
                @if($article->insight->published_at)
                  · {{ \Carbon\Carbon::parse($article->insight->published_at)->format('d M Y') }}
                @endif
              </p>
              <h4 style="font-family:'Merriweather',serif;font-weight:700;font-size:15px;line-height:21px;color:#0F172A;margin:0 0 4px 0;">
                {{ $article->insight->heading }}
              </h4>
              @endif
            </div>
          </div>
          @if($article->insight)
          <a href="{{ route('insights') }}"
             style="border:1px solid #E4EAF0;padding:8px 16px;border-radius:999px;font-size:14px;font-weight:600;text-decoration:none;color:#0F172A;white-space:nowrap;">
            Read →
          </a>
          @endif
        </div>
        @endforeach
      </div>
      @endif

      {{-- Projects --}}
      @if($team->projects->count())
      <div id="exp-content-projects" style="display:{{ $team->insightArticles->count() ? 'none' : 'flex' }};flex-direction:column;gap:16px;">
        @foreach($team->projects as $project)
        <a href="{{ route('projectdetails', $project->id) }}"
           style="display:flex;gap:20px;background:#fff;border:1px solid #EEF3F8;border-radius:14px;padding:20px;text-decoration:none;transition:border-color 0.2s;"
           onmouseover="this.style.borderColor='#18909C'" onmouseout="this.style.borderColor='#EEF3F8'">
          @if($project->imageUrl ?? false)
          <div style="width:120px;height:80px;border-radius:10px;overflow:hidden;flex-shrink:0;">
            <img src="{{ $project->imageUrl() }}" alt="{{ $project->project_title }}" style="width:100%;height:100%;object-fit:cover;" />
          </div>
          @endif
          <div style="display:flex;flex-direction:column;gap:6px;justify-content:center;">
            <h4 style="font-family:'Merriweather',serif;font-weight:700;font-size:15px;line-height:21px;color:#0F172A;margin:0;">{{ $project->project_title }}</h4>
            @if($project->short_description ?? $project->description ?? false)
            <p style="font-family:'Newsreader',Georgia,serif;font-size:12.5px;line-height:1.5;color:#6B7280;margin:0;">
              {{ Str::limit($project->short_description ?? $project->description, 120) }}
            </p>
            @endif
          </div>
        </a>
        @endforeach
      </div>
      @endif

    </div>
    @endif

  </div>
</section>

{{-- Related Experts --}}
@if($relatedTeams->count())
<section class="w-full bg-[#F7F9FB] py-[40px] md:py-[72px] px-4 md:px-8 box-border">
  <div class="max-w-[1204px] mx-auto flex flex-col gap-[40px]">

    <div style="display:flex;justify-content:space-between;align-items:flex-end;">
      <div style="display:flex;flex-direction:column;gap:8px;">
        <span style="color:#0E606B;font-size:11px;font-weight:600;text-transform:uppercase;letter-spacing:1.5px;">More Experts</span>
        <h3 style="font-family:'Newsreader',Georgia,serif;font-weight:800;font-size:30px;line-height:1;color:#0F172A;margin:0;">GIET Team Members</h3>
      </div>
      <a href="{{ route('team') }}" style="color:#003054;font-size:14px;font-weight:600;text-decoration:none;">View All →</a>
    </div>

    <div class="grid grid-cols-1 md:grid-cols-4 gap-[18px]">
      @foreach($relatedTeams as $related)
      <a href="{{ route('teamdetails', $related->id) }}"
         style="background:#fff;border:1px solid #E4EAF0;border-radius:14px;overflow:hidden;display:flex;flex-direction:column;text-decoration:none;">
        @if($related->imageUrl())
          <img src="{{ $related->imageUrl() }}" alt="{{ $related->fullName() }}" style="width:100%;height:170px;object-fit:cover;object-position:top;" />
        @else
          <div style="width:100%;height:170px;background:#EEF3F8;display:flex;align-items:center;justify-content:center;">
            <span style="color:#6B7280;font-size:13px;">No Photo</span>
          </div>
        @endif
        <div style="width:100%;height:3px;background:#003054;"></div>
        <div style="padding:16px;display:flex;flex-direction:column;gap:4px;">
          <p style="font-family:'Newsreader',Georgia,serif;font-weight:800;font-size:14.5px;line-height:1;color:#0F172A;margin:0;">{{ $related->fullName() }}</p>
          <p style="font-family:'Newsreader',Georgia,serif;font-size:12px;color:#64748B;margin:0;">{{ $related->designation }}</p>
        </div>
      </a>
      @endforeach
    </div>

  </div>
</section>
@endif

<script>
function expSwitchTab(tab) {
  const tabs = ['pub', 'projects'];
  tabs.forEach(function(t) {
    const content = document.getElementById('exp-content-' + t);
    const btn = document.getElementById('exp-tab-' + t);
    if (content) content.style.display = 'none';
    if (btn) { btn.style.borderBottomColor = 'transparent'; btn.style.color = '#64748B'; btn.style.fontWeight = '500'; }
  });
  const activeContent = document.getElementById('exp-content-' + tab);
  const activeBtn = document.getElementById('exp-tab-' + tab);
  if (activeContent) activeContent.style.display = 'flex';
  if (activeBtn) { activeBtn.style.borderBottomColor = '#003054'; activeBtn.style.color = '#0F172A'; activeBtn.style.fontWeight = '600'; }
}
</script>

@endsection
