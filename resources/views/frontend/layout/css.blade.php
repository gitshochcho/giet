
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300&family=Newsreader:ital,opsz,wght@0,6..72,300;0,6..72,400;0,6..72,600;0,6..72,700;1,6..72,300;1,6..72,400&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&display=swap" rel="stylesheet">

<link rel="stylesheet" href="{{asset('frontend/css/bootstrap.min.css')}}">
<link href="{{asset('frontend/css/fontawesome-all.min.css')}}" rel="stylesheet">
<link href="{{asset('frontend/css/aos.min.css')}}" rel="stylesheet">
<link href="{{asset('frontend/css/swiper.css')}}" rel="stylesheet">
<link href="{{asset('frontend/css/style.css')}}" rel="stylesheet">

<!-- Favicon -->
@if(!empty($siteSettings?->logoImageUrl()))
    <link rel="icon" href="{{ $siteSettings->logoImageUrl() }}">
@else
    <link rel="icon" href="{{asset('frontend/assets/images/favicon.png')}}">
@endif
