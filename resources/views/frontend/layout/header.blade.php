<nav class="sticky top-0 z-[1000] w-full h-[100px] bg-white border-b border-gray-100 px-4 md:px-8 flex items-center justify-between select-none">

    <div class="w-full max-w-[1204px] mx-auto h-[68px] flex items-center justify-between">

        <a href="{{ route('home') }}" class="w-[78.66px] h-[67.17px] flex flex-col items-center justify-center">
            <img src="{{ asset('assets/img/Frame 26.png') }}" alt="GIET Logo" class="w-[46px] h-[42px] mb-0.5" />
            <span class="text-[8px] font-bold tracking-wide text-[#003054] whitespace-nowrap uppercase">GIET Institute</span>
        </a>

        <style>
            .nav-link { color: #003054 !important; transition: color 0.15s, background 0.15s; border-radius: 6px; }
            .nav-link:hover { color: #18909C !important; }
            .nav-link.active { color: #fff !important; background: #18909C !important; }
            .res-dd-link { color: #64748B !important; transition: color 0.15s, background 0.15s, border-color 0.15s; }
            .res-dd-link:hover { background: #F7F9FB; border-bottom-color: #A80C18 !important; color: #003054 !important; }
            .res-dd-link.active { border-bottom-color: #A80C18 !important; color: #003054 !important; font-weight: 600; }
        </style>

        <!-- DESKTOP NAV -->
        <div class="hidden md:flex items-center justify-center gap-[16px] text-[14px] font-semibold">

            <a href="{{ route('home') }}" class="nav-link h-[34.27px] px-[6px] flex items-center justify-center">Home</a>

            <a href="{{ route('about') }}" class="nav-link h-[34.27px] px-[6px] flex items-center justify-center">About Us</a>

            <a href="{{ route('services') }}" class="nav-link h-[34.27px] px-[6px] flex items-center justify-center">Areas of Work</a>

            <a href="{{ route('projects') }}" class="nav-link h-[34.27px] px-[6px] flex items-center justify-center">Projects</a>

            <div class="relative" id="res-dd-contact">
                <button onclick="toggleResDD('contact')" class="nav-link h-[34.27px] px-[6px] flex items-center justify-center gap-[4px] text-[14px] font-semibold bg-transparent border-0 cursor-pointer">
                    <span>Resources</span>
                    <svg width="10" height="6" viewBox="0 0 10 6" fill="none" xmlns="http://www.w3.org/2000/svg" style="color:#18909C;margin-top:2px;"><path d="M1 1L5 5L9 1" stroke="currentColor" stroke-width="1.75" stroke-linecap="round" stroke-linejoin="round"/></svg>
                </button>
                <div id="res-dd-menu-contact" class="hidden absolute top-full left-0 w-[214px] bg-white border border-[#E4EAF0] shadow-lg z-50 rounded-b-[6px] overflow-hidden">
                    @foreach($navInsightTypes ?? [] as $navType)
                    <a href="{{ route('insights') }}#type-{{ $navType->id }}"
                       class="res-dd-link res-dd-item flex items-center w-full h-[45px] px-[22px] text-[13px] font-medium border-b-[3px] border-transparent">
                        {{ $navType->type }}
                    </a>
                    @endforeach
                </div>
            </div>

            <a href="{{ route('team') }}" class="nav-link h-[34.27px] px-[6px] flex items-center justify-center whitespace-nowrap">Our Experts</a>

            <a href="{{ route('events') }}" class="nav-link h-[34.27px] px-[6px] flex items-center justify-center">Events</a>
        </div>

        <script>
        function toggleResDD(id){var m=document.getElementById('res-dd-menu-'+id);m.classList.toggle('hidden');}
        function setResActive(el){document.querySelectorAll('.res-dd-item').forEach(function(i){i.classList.remove('active');});el.classList.add('active');}
        document.addEventListener('click',function(e){var dd=document.getElementById('res-dd-contact');if(dd&&!dd.contains(e.target)){var m=document.getElementById('res-dd-menu-contact');if(m)m.classList.add('hidden');}});
        document.querySelectorAll('.nav-link').forEach(function(a){if(a.href&&window.location.pathname===new URL(a.href,location).pathname){a.classList.add('active');}});
        </script>

        <!-- RIGHT SIDE: Mobile hamburger + Search + Contact -->
        <div class="flex items-center gap-[10px]">

            <!-- Mobile Hamburger -->
            <button id="mobile-menu-btn" onclick="toggleMobileMenu()" class="md:hidden flex items-center justify-center w-[36px] h-[36px] text-[#003054]" aria-label="Menu">
                <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><line x1="3" y1="6" x2="21" y2="6"/><line x1="3" y1="12" x2="21" y2="12"/><line x1="3" y1="18" x2="21" y2="18"/></svg>
            </button>

            <!-- Search -->
            <button class="w-[36px] h-[36px] flex items-center justify-center text-[#003054] hover:bg-gray-50 transition-all duration-150 cursor-pointer" aria-label="Search">
                <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M11.5 11.5L14.5 14.5M13 7C13 10.3137 10.3137 13 7 13C3.68629 13 1 10.3137 1 7C1 3.68629 3.68629 1 7 1C10.3137 1 13 3.68629 13 7Z" stroke="currentColor" stroke-width="1.75" stroke-linecap="round"/>
                </svg>
            </button>

            <!-- Contact Button -->
            <a href="{{ route('contact') }}" class="w-[92px] h-[37.44px] bg-[#A80C18] text-white text-[13px] font-bold rounded-[6px] flex items-center justify-center hover:bg-[#0e7480] transition-colors duration-150 shadow-sm">
                Contact
            </a>
        </div>

    </div>
</nav>

<!-- MOBILE MENU DRAWER -->
<div id="mobile-menu-drawer" class="fixed inset-0 z-[999] hidden">
    <!-- Backdrop -->
    <div onclick="toggleMobileMenu()" class="absolute inset-0 bg-black/40"></div>
    <!-- Panel -->
    <div class="absolute top-0 left-0 w-[280px] h-full bg-white flex flex-col shadow-2xl overflow-y-auto">
        <!-- Header -->
        <div class="flex items-center justify-between px-5 py-4 border-b border-gray-100">
            <a href="{{ route('home') }}" class="flex flex-col items-center">
                <img src="{{ asset('assets/img/Frame 26.png') }}" alt="GIET Logo" class="w-[36px] h-[33px]" />
                <span class="text-[7px] font-bold tracking-wide text-[#003054] uppercase">GIET Institute</span>
            </a>
            <button onclick="toggleMobileMenu()" class="w-[34px] h-[34px] flex items-center justify-center text-[#003054] hover:bg-gray-100 rounded-full">
                <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><line x1="18" y1="6" x2="6" y2="18"/><line x1="6" y1="6" x2="18" y2="18"/></svg>
            </button>
        </div>
        <!-- Links -->
        <nav class="flex flex-col py-4 px-2 gap-1 text-[14px] font-semibold text-[#003054]">
            <a href="{{ route('home') }}"     class="mob-nav-link flex items-center px-4 py-3 rounded-[8px] hover:bg-[#F7F9FB] transition-colors">Home</a>
            <a href="{{ route('about') }}"    class="mob-nav-link flex items-center px-4 py-3 rounded-[8px] hover:bg-[#F7F9FB] transition-colors">About Us</a>
            <a href="{{ route('services') }}" class="mob-nav-link flex items-center px-4 py-3 rounded-[8px] hover:bg-[#F7F9FB] transition-colors">Areas of Work</a>
            <a href="{{ route('projects') }}" class="mob-nav-link flex items-center px-4 py-3 rounded-[8px] hover:bg-[#F7F9FB] transition-colors">Projects</a>
            <a href="{{ route('insights') }}" class="mob-nav-link flex items-center px-4 py-3 rounded-[8px] hover:bg-[#F7F9FB] transition-colors">Resources</a>
            <a href="{{ route('team') }}"     class="mob-nav-link flex items-center px-4 py-3 rounded-[8px] hover:bg-[#F7F9FB] transition-colors">Our Experts</a>
            <a href="{{ route('events') }}" class="mob-nav-link flex items-center px-4 py-3 rounded-[8px] hover:bg-[#F7F9FB] transition-colors">Events</a>
        </nav>
        <!-- Bottom CTA -->
        <div class="mt-auto px-5 pb-8 pt-4 border-t border-gray-100">
            <a href="{{ route('contact') }}" class="w-full h-[44px] bg-[#18909C] text-white text-[14px] font-bold rounded-[8px] flex items-center justify-center hover:bg-[#0e7480] transition-colors">
                Contact Us
            </a>
        </div>
    </div>
</div>

<script>
function toggleMobileMenu(){
    var drawer = document.getElementById('mobile-menu-drawer');
    drawer.classList.toggle('hidden');
    document.body.classList.toggle('overflow-hidden');
}
// Highlight active mobile link
document.querySelectorAll('.mob-nav-link').forEach(function(a){
    if(a.href && window.location.pathname === new URL(a.href, location).pathname){
        a.style.background = '#EEF3F8';
        a.style.color = '#18909C';
    }
});
</script>
