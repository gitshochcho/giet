<nav class="sticky top-0 z-[1000] w-full h-[100px] bg-white border-b border-gray-100 px-4 md:px-8 flex items-center justify-between select-none">
    
    <div class="w-full max-w-[1204px] mx-auto h-[68px] flex items-center justify-between">
      
        <div class="w-[78.66px] h-[67.17px] flex flex-col items-center justify-center">
            <!-- <img src="images/Frame 26.png" alt="GIET Logo" class="w-[46px] h-[42px] mb-0.5" /> -->
            <img src="{{ asset('assets/img/Frame 26.png') }}" alt="GIET Logo" class="w-[46px] h-[42px] mb-0.5" />
            <span class="text-[8px] font-bold tracking-wide text-[#003054] whitespace-nowrap uppercase">GIET Institute</span>
        </div>

        <style>
            .nav-link { color: #003054 !important; transition: color 0.15s; }
            .nav-link:hover { color: #18909C !important; }
            .nav-link.active { color: #18909C !important; }
            .res-dd-link { color: #64748B !important; transition: color 0.15s, background 0.15s, border-color 0.15s; }
            .res-dd-link:hover { background: #F7F9FB; border-bottom-color: #A80C18 !important; color: #003054 !important; }
            .res-dd-link.active { border-bottom-color: #A80C18 !important; color: #003054 !important; font-weight: 600; }
        </style>

        <div class="hidden md:flex items-center justify-center gap-[28px] text-[14px] font-semibold">

            <a href="{{ url('/') }}" class="nav-link h-[34.27px] px-[6px] flex items-center justify-center">Home</a>

            <a href="{{ url('/about') }}" class="nav-link h-[34.27px] px-[6px] flex items-center justify-center">About Us</a>

            <a href="{{ url('/areas-of-work') }}" class="nav-link h-[34.27px] px-[6px] flex items-center justify-center">Areas of work</a>

            <a href="{{ url('/projects') }}" class="nav-link h-[34.27px] px-[6px] flex items-center justify-center">Projects</a>

            <div class="relative" id="res-dd-contact">
                <button onclick="toggleResDD('contact')" class="nav-link h-[34.27px] px-[6px] flex items-center justify-center gap-[4px] text-[14px] font-semibold bg-transparent border-0 cursor-pointer">
                    <span>Resources</span>
                    <svg width="10" height="6" viewBox="0 0 10 6" fill="none" xmlns="http://www.w3.org/2000/svg" style="color:#18909C;margin-top:2px;"><path d="M1 1L5 5L9 1" stroke="currentColor" stroke-width="1.75" stroke-linecap="round" stroke-linejoin="round"/></svg>
                </button>
                <div id="res-dd-menu-contact" class="hidden absolute top-full left-0 w-[214px] bg-white border border-[#E4EAF0] shadow-lg z-50 rounded-b-[6px] overflow-hidden">
                    <a href="{{ url('/resources') }}#briefs"    onclick="setResActive(this)" class="res-dd-link res-dd-item flex items-center w-full h-[45px] px-[22px] text-[13px] font-medium border-b-[3px] border-transparent">Issue Briefs/Articles</a>
                    <a href="{{ url('/resources') }}#expert"    onclick="setResActive(this)" class="res-dd-link res-dd-item flex items-center w-full h-[45px] px-[22px] text-[13px] font-medium border-b-[3px] border-transparent">Expert Speak/Blog</a>
                    <a href="{{ url('/resources') }}#publications" onclick="setResActive(this)" class="res-dd-link res-dd-item flex items-center w-full h-[45px] px-[22px] text-[13px] font-medium border-b-[3px] border-transparent">Publications & Reports</a>
                    <a href="{{ url('/resources') }}#news"      onclick="setResActive(this)" class="res-dd-link res-dd-item flex items-center w-full h-[45px] px-[22px] text-[13px] font-medium border-b-[3px] border-transparent">News & Commentary/Op-Ed</a>
                    <a href="{{ url('/resources') }}#videos"    onclick="setResActive(this)" class="res-dd-link res-dd-item flex items-center w-full h-[45px] px-[22px] text-[13px] font-medium border-b-[3px] border-transparent">Videos & Podcasts</a>
                </div>
            </div>

            <a href="{{ url('/experts') }}" class="nav-link h-[34.27px] px-[6px] flex items-center justify-center whitespace-nowrap">Our Experts</a>

            <a href="{{ url('/events') }}" class="nav-link h-[34.27px] px-[6px] flex items-center justify-center">Events</a>
        </div>

        <script>
        function toggleResDD(id){var m=document.getElementById('res-dd-menu-'+id);m.classList.toggle('hidden');}
        function setResActive(el){document.querySelectorAll('.res-dd-item').forEach(function(i){i.classList.remove('active');});el.classList.add('active');}
        document.addEventListener('click',function(e){var dd=document.getElementById('res-dd-contact');if(dd&&!dd.contains(e.target)){var m=document.getElementById('res-dd-menu-contact');if(m)m.classList.add('hidden');}});
        // Mark active nav link based on current URL
        document.querySelectorAll('.nav-link').forEach(function(a){if(a.href&&window.location.pathname===new URL(a.href,location).pathname){a.classList.add('active');}});
        </script>

                <button id="mobile-menu-btn" class="md:hidden flex items-center justify-center w-[36px] h-[36px] text-[#003054]" aria-label="Menu">
          <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><line x1="3" y1="6" x2="21" y2="6"/><line x1="3" y1="12" x2="21" y2="12"/><line x1="3" y1="18" x2="21" y2="18"/></svg>
        </button>
        <div class="w-[138px] h-[37.44px] flex items-center justify-end gap-[10px]">
        
            <button class="w-[36px] h-[36px] flex items-center justify-center text-[#003054] hover:bg-gray-50 transition-all duration-150 cursor-pointer" aria-label="Search">
                <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M11.5 11.5L14.5 14.5M13 7C13 10.3137 10.3137 13 7 13C3.68629 13 1 10.3137 1 7C1 3.68629 3.68629 1 7 1C10.3137 1 13 3.68629 13 7Z" stroke="currentColor" stroke-width="1.75" stroke-linecap="round"/>
                </svg>
            </button>

            <button onclick="window.location.href='contact.html'" class="w-[92px] h-[37.44px] bg-[#18909C] text-white text-[13px] font-bold rounded-[6px] flex items-center justify-center hover:bg-[#0e7480] transition-colors duration-150 shadow-sm cursor-pointer">
                Contact
            </button>
        </div>

    </div>
</nav>