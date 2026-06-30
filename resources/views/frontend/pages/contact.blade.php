@extends('frontend.layout.app')
  
@section('content')
<section class="bg-[#003054] w-full h-auto md:h-[363.3px] relative flex flex-col justify-center items-center text-white overflow-hidden pt-[72px] pb-[72px] px-4 md:px-8">

  <!-- RIGHT UPPER CORNER BACKGROUND DECORATION SHAPE -->
  <div class="absolute -top-[100px] -right-[100px] pointer-events-none bg-[rgba(24,144,156,0.07)] w-[400px] h-[400px] rounded-full"></div>

  <!-- INNER CONTENT INNER CONTAINER -->
  <div class="w-full max-w-[1204px] mx-auto h-auto flex flex-col items-start text-left z-10 gap-[13.3px]">
    
    <!-- BREADCRUMBS WRAPPER SYSTEM -->
    <div style="font-family:'Inter',sans-serif;font-size:12px;line-height:19.8px;"
         class="text-white/45 flex items-center gap-1.5 tracking-normal">
      <a href="{{ url('/') }}" class="hover:text-white transition-colors">Home</a>
      <span class="text-white/30">/</span>
      <span style="font-family:'Inter',sans-serif;font-weight:400;font-size:12px;line-height:19.8px;color:rgba(255,255,255,0.45);">
        {{ $heroContent?->section }}
      </span>
    </div>

    <!-- Teal Accent Underline Indicator Line -->
    <div class="bg-[#18909C] w-[40px] h-[3px] rounded-[2px] my-[6px]"></div>

    <!-- MAIN SECTION TITLE (Merriweather Font Layout) -->
    @if($heroContent?->heading)
    <h1 style="font-family:'Merriweather',serif;font-weight:800;font-size:clamp(28px,5vw,52px);line-height:1.1;letter-spacing:-0.5px;"
        class="text-white tracking-tight drop-shadow-sm">
      {{ $heroContent->heading }}@if($heroContent->design_word) <span style="color:#18909C;">{{ $heroContent->design_word }}</span>@endif
    </h1>
    @endif

    <!-- SUMMARY PARAGRAPH SPECIFICATION -->
    @if($heroContent?->description)
    <p style="font-family:'Newsreader',serif;font-weight:400;font-size:17px;line-height:29.75px;color:rgba(255,255,255,0.6);max-width:601px;" class="drop-shadow-sm">
      {{ cleanText($heroContent->description) }}
    </p>
    @endif

  </div>
</section>

<!-- MAIN CONTACT SECTION -->
<section class="w-full bg-white py-[48px] md:py-[88px] px-4 md:px-8">
  <div class="max-w-[1204px] mx-auto grid grid-cols-1 md:grid-cols-[1fr_400px] gap-[40px] items-start">
    
    <!-- LEFT: CONTACT FORM -->
    <div class="flex flex-col gap-6">
      <div class="flex flex-col gap-2">
        @if($contactFormHeader?->section)
        <p class="font-['Newsreader'] text-[12px] font-bold text-[#0E606B] uppercase tracking-wider">{{ $contactFormHeader->section }}</p>
        @endif
        <h2 style="font-family:'Merriweather',serif;font-weight:800;font-size:36px;line-height:42.48px;letter-spacing:-0.36px;" class="text-[#0F172A]">
          {{ $contactFormHeader?->heading ?? 'How Can We Help?' }}
        </h2>
        @if($contactFormHeader?->description)
        <p class="font-['Newsreader'] font-normal text-[15px] leading-[26.25px] text-[#475569] max-w-[640px]">{{ cleanText($contactFormHeader->description) }}</p>
        @endif
      </div>
      
      @if(session('success'))
        <div class="bg-green-50 border border-green-200 text-green-800 text-[14px] rounded-[8px] px-4 py-3">
          {{ session('success') }}
        </div>
      @endif

      <form action="{{ route('contact.store') }}" method="POST" class="grid grid-cols-1 md:grid-cols-2 gap-4">
        @csrf
        <div class="flex flex-col gap-1">
          <label class="font-['Newsreader'] font-semibold text-[12.5px] leading-none tracking-[0.25px] text-[#0F172A]">First Name <span class="text-[red]">*</span></label>
          <input type="text" name="first_name" value="{{ old('first_name') }}" placeholder="e.g. Aminur" class="p-3 rounded-[8px] w-full text-[14px] border {{ $errors->has('first_name') ? 'border-red-400' : 'border-[#E4EAF0]' }}">
          @error('first_name')<span class="text-red-500 text-[12px]">{{ $message }}</span>@enderror
        </div>
        <div class="flex flex-col gap-1">
          <label class="font-['Newsreader'] font-semibold text-[12.5px] leading-none tracking-[0.25px] text-[#0F172A]">Last Name <span class="text-[red]">*</span></label>
          <input type="text" name="last_name" value="{{ old('last_name') }}" placeholder="e.g. Rahman" class="p-3 rounded-[8px] w-full text-[14px] border {{ $errors->has('last_name') ? 'border-red-400' : 'border-[#E4EAF0]' }}">
          @error('last_name')<span class="text-red-500 text-[12px]">{{ $message }}</span>@enderror
        </div>
        <div class="flex flex-col gap-1 col-span-2">
          <label class="font-['Newsreader'] font-semibold text-[12.5px] leading-none tracking-[0.25px] text-[#0F172A]">Email Address <span class="text-[red]">*</span></label>
          <input type="email" name="email" value="{{ old('email') }}" placeholder="you@organisation.org" class="p-3 rounded-[8px] w-full text-[14px] border {{ $errors->has('email') ? 'border-red-400' : 'border-[#E4EAF0]' }}">
          @error('email')<span class="text-red-500 text-[12px]">{{ $message }}</span>@enderror
        </div>
        <div class="flex flex-col gap-1">
          <label class="font-['Newsreader'] font-semibold text-[12.5px] leading-none tracking-[0.25px] text-[#0F172A]">Organisation</label>
          <input type="text" name="organization" value="{{ old('organization') }}" placeholder="Your organisation name" class="p-3 rounded-[8px] w-full text-[14px] border border-[#E4EAF0]">
        </div>
        <div class="flex flex-col gap-1">
          <label class="font-['Newsreader'] font-semibold text-[12.5px] leading-none tracking-[0.25px] text-[#0F172A]">Phone (optional)</label>
          <input type="text" name="mobile_number" value="{{ old('mobile_number') }}" placeholder="+880 17..." class="p-3 rounded-[8px] w-full text-[14px] border {{ $errors->has('mobile_number') ? 'border-red-400' : 'border-[#E4EAF0]' }}">
          @error('mobile_number')<span class="text-red-500 text-[12px]">{{ $message }}</span>@enderror
        </div>
        <div class="flex flex-col gap-1 col-span-2">
          <label class="font-['Newsreader'] font-semibold text-[12.5px] leading-none tracking-[0.25px] text-[#0F172A]">Reason for Contact <span class="text-[red]">*</span></label>
          <select name="subject" class="p-3 rounded-[8px] w-full text-[14px] text-[#475569] border {{ $errors->has('subject') ? 'border-red-400' : 'border-[#E4EAF0]' }}">
            <option value="">— Select a topic —</option>
            <option value="Governance Frameworks & Public Sector Management" {{ old('subject') == 'Governance Frameworks & Public Sector Management' ? 'selected' : '' }}>Governance Frameworks & Public Sector Management</option>
            <option value="Institutional Reforms & Regulatory Architecture" {{ old('subject') == 'Institutional Reforms & Regulatory Architecture' ? 'selected' : '' }}>Institutional Reforms & Regulatory Architecture</option>
            <option value="Macroeconomic Innovations & Financial Structures" {{ old('subject') == 'Macroeconomic Innovations & Financial Structures' ? 'selected' : '' }}>Macroeconomic Innovations & Financial Structures</option>
            <option value="Trade Facilitation & Business Environment Reforms" {{ old('subject') == 'Trade Facilitation & Business Environment Reforms' ? 'selected' : '' }}>Trade Facilitation & Business Environment Reforms</option>
            <option value="Investment Promotion & Export Diversification" {{ old('subject') == 'Investment Promotion & Export Diversification' ? 'selected' : '' }}>Investment Promotion & Export Diversification</option>
            <option value="Digital Transformation & E-Governance" {{ old('subject') == 'Digital Transformation & E-Governance' ? 'selected' : '' }}>Digital Transformation & E-Governance</option>
            <option value="Research, Publications & Knowledge Platforms" {{ old('subject') == 'Research, Publications & Knowledge Platforms' ? 'selected' : '' }}>Research, Publications & Knowledge Platforms</option>
            <option value="Capacity Building & Professional Development" {{ old('subject') == 'Capacity Building & Professional Development' ? 'selected' : '' }}>Capacity Building & Professional Development</option>
            <option value="Social Inclusion, Equity & Human Capital" {{ old('subject') == 'Social Inclusion, Equity & Human Capital' ? 'selected' : '' }}>Social Inclusion, Equity & Human Capital</option>
            <option value="Project or Research Collaboration" {{ old('subject') == 'Project or Research Collaboration' ? 'selected' : '' }}>Project or Research Collaboration</option>
          </select>
          @error('subject')<span class="text-red-500 text-[12px]">{{ $message }}</span>@enderror
        </div>
        <div class="flex flex-col gap-1 col-span-2">
          <label class="font-['Newsreader'] font-semibold text-[12.5px] leading-none tracking-[0.25px] text-[#0F172A]">Message <span class="text-[red]">*</span></label>
          <textarea name="message" placeholder="Tell us about your enquiry, project idea, or collaboration proposal..." class="p-3 rounded-[8px] w-full h-[150px] text-[14px] border {{ $errors->has('message') ? 'border-red-400' : 'border-[#E4EAF0]' }}">{{ old('message') }}</textarea>
          @error('message')<span class="text-red-500 text-[12px]">{{ $message }}</span>@enderror
        </div>
        <button type="submit" class="col-span-2 bg-[#A80C18] text-white py-3 rounded-[8px] font-bold hover:bg-[#8e0a14] transition">Send Message →</button>
      </form>
      @if($contactFormHeader?->sub_heading)
      <p class="font-['Newsreader'] font-normal text-[12px] leading-none text-[#64748B] text-center">{{ $contactFormHeader->sub_heading }}</p>
      @endif
    </div>

    <!-- RIGHT: CONTACT DETAILS & MAP -->
    <div class="w-full md:w-[400px] flex flex-col gap-[14px]">
      <p class="font-['Newsreader'] text-[12px] font-bold text-[#0E606B] uppercase tracking-wider">{{ $contactInfoLabel?->section ?? 'Our Contact Details' }}</p>

      <!-- Address -->
      @foreach($contactAddresses as $addr)
      <div class="border border-[#E4EAF0] rounded-[14px] p-[18px] flex gap-4 items-start">
        <div class="w-[44px] h-[44px] rounded-[10px] bg-[#E6F3F5] flex items-center justify-center shrink-0">
          @if($addr->iconUrl())
            <img src="{{ $addr->iconUrl() }}" alt="{{ $addr->title }}" style="width:24px;height:24px;object-fit:contain;">
          @elseif($addr->icon_class)
            <i class="{{ $addr->icon_class }}" style="color:#0E606B;font-size:18px;"></i>
          @else
            <i class="fas fa-map-marker-alt" style="color:#0E606B;font-size:18px;"></i>
          @endif
        </div>
        <div class="flex flex-col gap-1">
          <p class="font-['Inter'] text-[11px] font-bold uppercase text-[#64748B] tracking-wider">{{ $addr->title }}</p>
          @if($addr->name)
            <p class="font-['Inter'] text-[14px] font-bold text-[#0F172A]">{{ $addr->name }}</p>
          @endif
          @if($addr->address)
            <p class="font-['Inter'] text-[13px] text-[#64748B]">{!! nl2br(e($addr->address)) !!}</p>
          @endif
          @if($addr->secondary_text)
            <p style="font-family:'Inter',sans-serif;font-size:13px;color:#64748B;">{{ $addr->secondary_text }}</p>
          @endif
          <!-- @if($addr->office_hours)
            <p class="font-['Inter'] text-[13px] text-[#475569] mt-1">{{ $addr->office_hours }}</p>
          @endif -->
          <!-- @if($addr->map_location)
            <a href="#" class="font-['Inter'] text-[13px] text-[#0E606B] mt-1">{{ $addr->map_location }}</a>
          @endif -->
        </div>
      </div>
      @endforeach

      <!-- Email -->
      @foreach($contactEmails as $emailInfo)
      <div class="border border-[#E4EAF0] rounded-[14px] p-[18px] flex gap-4 items-start">
        <div class="w-[44px] h-[44px] rounded-[10px] bg-[#E6F3F5] flex items-center justify-center shrink-0">
          @if($emailInfo->iconUrl())
            <img src="{{ $emailInfo->iconUrl() }}" alt="{{ $emailInfo->title }}" style="width:24px;height:24px;object-fit:contain;">
          @elseif($emailInfo->icon_class)
            <i class="{{ $emailInfo->icon_class }}" style="color:#0E606B;font-size:18px;"></i>
          @else
            <i class="fas fa-envelope" style="color:#0E606B;font-size:18px;"></i>
          @endif
        </div>
        <div class="flex flex-col gap-1 min-w-0">
          <p class="font-['Inter'] text-[11px] font-bold uppercase text-[#64748B] tracking-wider">{{ $emailInfo->title }}</p>
          <a href="mailto:{{ $emailInfo->primary_text }}" class="font-['Inter'] text-[14px] font-bold break-all" style="color:#003054;">{{ $emailInfo->primary_text }}</a>
          @if($emailInfo->secondary_text)
            <p class="font-['Inter'] text-[13px]" style="color:#64748B;">{{ $emailInfo->secondary_text }}</p>
          @endif
          @if($emailInfo->office_hours)
            <p class="font-['Inter'] text-[12px] mt-1" style="color:#94A3B8;">{{ $emailInfo->office_hours }}</p>
          @endif
        </div>
      </div>
      @endforeach

      <!-- Phone -->
      @foreach($contactPhones as $phone)
      <div class="border border-[#E4EAF0] rounded-[14px] p-[18px] flex gap-4 items-start">
        <div class="w-[44px] h-[44px] rounded-[10px] bg-[#E6F3F5] flex items-center justify-center shrink-0">
          @if($phone->iconUrl())
            <img src="{{ $phone->iconUrl() }}" alt="{{ $phone->title }}" style="width:24px;height:24px;object-fit:contain;">
          @elseif($phone->icon_class)
            <i class="{{ $phone->icon_class }}" style="color:#0E606B;font-size:18px;"></i>
          @else
            <i class="fas fa-phone-alt" style="color:#0E606B;font-size:18px;"></i>
          @endif
        </div>
        <div class="flex flex-col gap-1 min-w-0">
          <p class="font-['Inter'] text-[11px] font-bold uppercase tracking-wider" style="color:#64748B;">{{ $phone->title }}</p>
          <a href="{{ $phone->link_value }}" class="font-['Inter'] text-[14px] font-bold break-all" style="color:#0F172A;">{{ $phone->primary_text }}</a>
          @if($phone->secondary_text)
            <p class="font-['Inter'] text-[13px]" style="color:#64748B;">{{ $phone->secondary_text }}</p>
          @endif
          @if($phone->office_hours)
            <p class="font-['Inter'] text-[12px] mt-1" style="color:#94A3B8;">{{ $phone->office_hours }}</p>
          @endif
        </div>
      </div>
      @endforeach

      <!-- Careers Box -->
      @foreach($contactCareers as $career)
      <div class="bg-[#003054] rounded-[14px] p-[18px] flex gap-4 items-start">
        <div class="w-[40px] h-[40px] rounded-[10px] bg-[#FFFFFF14] flex items-center justify-center shrink-0">
          @if($career->iconUrl())
            <img src="{{ $career->iconUrl() }}" alt="{{ $career->title }}" style="width:24px;height:24px;object-fit:contain;">
          @elseif($career->icon_class)
            <i class="{{ $career->icon_class }}" style="color:#18909C;font-size:18px;"></i>
          @else
            <i class="fas fa-briefcase" style="color:#18909C;font-size:18px;"></i>
          @endif
        </div>
        <div class="flex flex-col gap-1 min-w-0">
          <p class="font-['Inter'] text-[11px] font-bold uppercase text-[#18909C] tracking-wider">{{ $career->title }}</p>
          @if($career->name)
            <p class="font-['Inter'] text-[14px] font-bold text-white">{{ $career->name }}</p>
          @endif
          @if($career->link_value)
            <a href="{{ $career->link_value }}" class="font-['Inter'] text-[13px] break-all" style="color:#8FB2C9;">{{ $career->primary_text }}</a>
          @else
            <p class="font-['Inter'] text-[13px] break-all" style="color:#8FB2C9;">{{ $career->primary_text }}</p>
          @endif
          @if($career->secondary_text)
            <p class="font-['Inter'] text-[13px]" style="color:rgba(255,255,255,0.5);">{{ $career->secondary_text }}</p>
          @endif
        </div>
      </div>
      @endforeach

      <!-- Google Map -->
      @if($contactMap?->description)
      <div class="w-full h-[250px] rounded-[14px] border border-[#E4EAF0] overflow-hidden">
        <iframe
          src="{{ $contactMap->description }}"
          width="100%" height="100%" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
        </iframe>
      </div>
      @endif

      <!-- Follow Us -->
      @if($contactFollowUs)
      <div class="bg-[#F7F9FB] border border-[#E4EAF0] rounded-[14px] p-[18px] flex flex-col gap-3">
        <p class="font-['Newsreader'] text-[11px] font-bold uppercase text-[#64748B] tracking-wider">{{ $contactFollowUs->section ?? 'Follow Us' }}</p>
        <div class="flex gap-2 flex-wrap">
          @if($contactFollowUs->sub_heading)
          <a href="{{ $contactFollowUs->sub_heading }}" target="_blank" rel="noopener"
             class="border border-[#E4EAF0] px-4 py-2 rounded-[8px] text-[13px] font-semibold hover:bg-gray-50 flex items-center gap-2" style="text-decoration:none;color:#0F172A;">
            <svg width="14" height="14" viewBox="0 0 24 24" fill="currentColor"><path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433a2.062 2.062 0 01-2.063-2.065 2.064 2.064 0 112.063 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z"/></svg>
            LinkedIn
          </a>
          @endif
          @if($contactFollowUs->description)
          <a href="{{ $contactFollowUs->description }}" target="_blank" rel="noopener"
             class="border border-[#E4EAF0] px-4 py-2 rounded-[8px] text-[13px] font-semibold hover:bg-gray-50 flex items-center gap-2" style="text-decoration:none;color:#0F172A;">
            <svg width="14" height="14" viewBox="0 0 24 24" fill="currentColor"><path d="M18.244 2.25h3.308l-7.227 8.26 8.502 11.24H16.17l-4.714-6.231-5.401 6.231H2.744l7.737-8.835L1.254 2.25H8.08l4.253 5.622 5.911-5.622zm-1.161 17.52h1.833L7.084 4.126H5.117z"/></svg>
            X / Twitter
          </a>
          @endif
        </div>
      </div>
      @endif
    </div>
  </div>
</section>

<section class="w-full bg-[#F7F9FB] py-[48px] md:py-[80px] px-4 md:px-8">
  <div class="w-full max-w-[1204px] mx-auto grid grid-cols-1 md:grid-cols-[440px_1fr] gap-x-[80px] gap-y-[40px] items-start">

    <!-- Left: Title -->
    <div class="flex flex-col gap-[11.2px]">
      <p style="font-family:'Inter',sans-serif;font-size:12px;font-weight:700;color:#0E606B;text-transform:uppercase;letter-spacing:0.08em;">
        {{ $faqSection?->section ?? '' }}
      </p>
      <h2 style="font-family:'Merriweather',serif;font-weight:800;font-size:40px;line-height:48px;letter-spacing:-0.4px;color:#0F172A;">
        {{ $faqSection?->heading ?? '' }}
      </h2>
      <p style="font-family:'Inter',sans-serif;font-size:16px;color:#475569;line-height:28px;">
        {{ cleanText($faqSection?->description ?? "") }}
      </p>
    </div>

    <!-- Right: FAQ List -->
    <div class="flex flex-col w-full">

      @forelse($faqs as $faq)
      <div class="faq-item border-b border-[#E4EAF0] py-[24px] cursor-pointer" onclick="toggleFaq(this)">
        <div class="flex justify-between items-start gap-4">
          <h4 style="font-family:'Merriweather',serif;font-weight:700;font-size:16px;line-height:1;color:#0F172A;margin:0;">{{ $faq->question }}</h4>
          <span class="faq-icon shrink-0" style="color:#64748B;font-size:18px;font-weight:300;line-height:1;">+</span>
        </div>
        <p class="faq-answer hidden" style="font-family:'Inter',sans-serif;font-weight:400;font-size:14px;line-height:24.5px;color:#1A1A1A;margin-top:12px;">{{ $faq->answer }}</p>
      </div>
      @empty
      <p style="font-family:'Inter',sans-serif;font-size:15px;color:#94A3B8;">No FAQs available at the moment.</p>
      @endforelse

    </div>
  </div>
</section>

@endsection

<script>
function toggleFaq(item) {
  var answer = item.querySelector('.faq-answer');
  var icon = item.querySelector('.faq-icon');
  var isOpen = !answer.classList.contains('hidden');
  answer.classList.toggle('hidden', isOpen);
  icon.textContent = isOpen ? '+' : '-';
}
</script>