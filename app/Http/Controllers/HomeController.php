<?php
namespace App\Http\Controllers;

use App\Mail\ForgetPassMail;
use App\Models\ContactInfo;
use App\Models\Faq;
use App\Models\Country;
use App\Models\Gender;
use App\Models\Insight;
use App\Models\InsightArticle;
use App\Models\JobApplication;
use App\Models\JobPosting;
use App\Models\Event;
use App\Models\Partner;
use App\Models\Project;
use App\Models\Service;
use App\Models\Slider;
use App\Models\SliderItem;
use App\Models\Team;
use App\Models\User;
use App\Models\UserDetail;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;
use Laravel\Socialite\Facades\Socialite;
use Propaganistas\LaravelPhone\Rules\Phone;


class HomeController extends Controller
{

    public function home(Request $request)
    {
        $homeAboutTrace      = contentBlock('home_about_trace');
        $homeAboutTraceOne   = contentBlock('home_about_trace_one');
        $homeAboutTraceTwo   = contentBlock('home_about_trace_two');
        $homeAboutTraceThree = contentBlock('home_about_trace_three');
        $homeYearsExpertise  = contentBlock('home_years_of_expertise');
        $slider              = Slider::with('media')->first();
        $sliderItems         = SliderItem::with('media')->where('active', true)->orderBy('sort_order')->orderBy('id')->get();

        $homeServices = Service::query()
            ->with(['content', 'media', 'solutions'])
            ->where('active', true)
            ->orderBy('sort_order')
            ->limit(6)
            ->get();

        // Projects — latest 3টা
        $homeProjects = Project::query()
            ->with(['services', 'media'])
            ->orderBy('sort_order')
            ->latest('id')
            ->limit(3)
            ->get();

             $partners = Partner::with('media')->latest()->get(); 

        return view('frontend.pages.home', compact('slider', 'sliderItems', 'homeServices', 'homeProjects', 'homeAboutTrace', 'homeAboutTraceOne', 'homeAboutTraceTwo', 'homeAboutTraceThree', 'homeYearsExpertise', 'partners'));
    }

    public function services(Request $request)
    {
        $servicesHero = contentBlock('services-page')
            ?? contentBlock('service-hero')
            ?? contentBlock('service hero');
        $workWithUs   = contentBlock('work-with-us');
        // dd($servicesHero);

        $services = Service::query()
            ->with(['media', 'solutions'])
            ->where('active', true)
            ->orderBy('sort_order')
            ->get();

        $serviceCards = $services->map(function (Service $service) {
            $imageUrl = $service->imageUrl() ?? asset('assets/img/Trade and Customs.png');

            return [
                'id'       => $service->id,
                'img'      => $imageUrl,
                'tag'      => $service->section ?: $service->service_name,
                'title'    => $service->service_name,
                'desc'     => $service->description ?? '',
                'products' => $service->solutions->isNotEmpty()
                    ? $service->solutions->count() . ' Solutions'
                    : 'View Service',
            ];
        })->values();

        return view('frontend.pages.work', compact('servicesHero', 'workWithUs', 'serviceCards'));
    }

    

    public function serviceDetails(Request $request, $id)
    {
        $service = Service::query()
            ->with([
                'details'   => fn($q) => $q->orderBy('sort_order'),
                'solutions' => fn($q) => $q->orderBy('sort_order'),
                'projects'  => fn($q) => $q->with(['media', 'services'])->orderBy('sort_order')->take(3),
                'media',
            ])
            ->findOrFail($id);

        $experts = Team::query()
            ->with(['media', 'experties'])
            ->whereIn('type', [1, 2])
            ->orderBy('sort_order')
            ->take(4)
            ->get();

        $otherServices = Service::query()
            ->where('active', true)
            ->whereKeyNot($id)
            ->orderBy('sort_order')
            ->get(['id', 'service_name', 'section']);

        return view('frontend.pages.workdetails', compact('service', 'experts', 'otherServices'));
    }

    public function projects(Request $request)
    {
        $projectsHero = contentBlock('projects-page');

        $services = Service::query()
            ->whereHas('projects')
            ->withCount('projects')
            ->orderBy('service_name')
            ->get();

        $selectedService = $request->integer('service');

        $projects = Project::query()
            ->with(['services', 'locations', 'media'])
            ->withCount('services')
            ->when($selectedService, function ($query, $serviceId) {
                $query->whereHas('services', function ($serviceQuery) use ($serviceId) {
                    $serviceQuery->where('services.id', $serviceId);
                });
            })
            ->orderBy('sort_order')
            ->latest('id')
            ->get();

        return view('frontend.pages.projects', compact('projectsHero', 'services', 'projects', 'selectedService'));
    }

    public function projectdetails(Request $request, ?Project $project = null)
    {
        $project ??= Project::query()
            ->with(['services', 'locations', 'phaseDetails', 'outcomes', 'media', 'teams.media'])
            ->orderBy('sort_order')
            ->latest('id')
            ->firstOrFail();

        $project->load(['services', 'locations', 'phaseDetails', 'outcomes', 'media', 'teams.media']);

        $relatedProjects = Project::query()
            ->with(['services', 'media'])
            ->whereKeyNot($project->id)
            ->orderBy('sort_order')
            ->latest('id')
            ->take(3)
            ->get();

        return view('frontend.pages.projectdetails', compact('project', 'relatedProjects'));
    }

    // public function insights(Request $request)
    // {
    //     $insightsPageContent = contentBlock('insights-page');

    //     $insights = Insight::query()
    //         ->with(['articles.author.media', 'articles.media', 'media', 'insightType'])
    //         ->where('active', true)
    //         ->orderBy('sort_order')
    //         ->latest('id')
    //         ->get();

    //     $insightTypes = InsightType::query()
    //         ->where('status', true)
    //         ->orderBy('type')
    //         ->get()
    //         ->map(function ($type) {
    //             $type->insights_count = $type->insights()->where('active', true)->count();
    //             return $type;
    //         });

    //     // Add "All" option with total count
    //     $allOption = (object) [
    //         'id' => null,
    //         'type' => 'All',
    //         'insights_count' => $insights->count(),
    //     ];
    //     $insightTypes = collect([$allOption])->merge($insightTypes);

    //     return view('frontend.pages.insights', compact('insightsPageContent', 'insights', 'insightTypes'));
    // }

    public function insights()
    {
        $all = Insight::with(['insightType', 'media'])
            ->where('active', true)
            ->orderBy('sort_order')
            ->latest('id')
            ->get();

        $briefs       = $all->filter(fn($i) => $this->insightTabKey($i) === 'briefs');
        $expertSpeaks = $all->filter(fn($i) => $this->insightTabKey($i) === 'expert');
        $publications = $all->filter(fn($i) => $this->insightTabKey($i) === 'publications');
        $newsItems    = $all->filter(fn($i) => $this->insightTabKey($i) === 'news');
        $videos       = $all->filter(fn($i) => $this->insightTabKey($i) === 'videos');

        return view('frontend.pages.resources', compact('all', 'briefs', 'expertSpeaks', 'publications', 'newsItems', 'videos'));
    }

    private function insightTabKey(Insight $insight): string
    {
        $typeName     = strtolower($insight->insightType?->type ?? '');
        $typeCategory = strtolower($insight->insightType?->type_category ?? '');

        if (in_array($typeCategory, ['watch', 'video_watch'])) return 'videos';
        if ($typeCategory === 'download') return 'publications';
        if (str_contains($typeName, 'expert') || str_contains($typeName, 'blog')) return 'expert';
        if (str_contains($typeName, 'news') || str_contains($typeName, 'commentary') || str_contains($typeName, 'op-ed') || str_contains($typeName, 'op_ed')) return 'news';
        return 'briefs';
    }

    public function resourcedetails(Request $request, ?Insight $insight = null)
    {
        $insight ??= Insight::with(['insightType', 'media', 'articles'])
            ->where('active', true)
            ->latest('id')
            ->firstOrFail();

        $insight->load(['insightType', 'media', 'articles' => function($q) {
            $q->orderBy('sort_order')->orderBy('id');
        }]);

        $authors = collect();
        if (!empty($insight->author_team_ids)) {
            $authors = Team::with('media')->whereIn('id', $insight->author_team_ids)->get();
        }

        $relatedInsights = Insight::with(['insightType', 'media'])
            ->where('active', true)
            ->where('id', '!=', $insight->id)
            ->latest('id')
            ->take(3)
            ->get();

        return view('frontend.pages.resourcedetails', compact('insight', 'authors', 'relatedInsights'));
    }
    public function articleDetails(Request $request, ?InsightArticle $article = null)
    {
        $article ??= InsightArticle::query()
            ->with(['author.media', 'insight.media', 'media'])
            ->where('active', true)
            ->orderBy('sort_order')
            ->latest('id')
            ->firstOrFail();

        $article->load(['author.media', 'insight.media', 'media', 'insightType']);

        

         $sections = InsightArticle::where('insight_id', $article->insight_id)
        ->orderBy('sort_order')
        ->orderBy('id')
        ->get(['id', 'title', 'description']);

    $relatedArticles = InsightArticle::with('insightType')
        ->where('id', '!=', $article->id)
        ->where('insight_id', '!=', $article->insight_id)
        ->latest()
        ->take(4)
        ->get();

            $dynamicSections = collect();
    for ($i = 1; $i <= 15; $i++) {
        $block = contentBlock("read_section_{$i}");
        if ($block) {
            $dynamicSections->push($block);
        }
    }

   $relatedInsights = Insight::where('active', true)->take(3)->get();

        return view('frontend.pages.article-details', compact('article', 'relatedArticles', 'dynamicSections', 'relatedInsights', 'sections'));
    }

    public function career(Request $request)
    {
        $careerHeader = contentBlock('career-heading');
        $jobs = JobPosting::active()->ordered()->paginate(12);
        return view('frontend.pages.career', compact('careerHeader', 'jobs'));
    }
    public function careerdetails(Request $request, $id)
    {
        $job = JobPosting::active()->findOrFail($id);
        return view('frontend.pages.careerdetails', compact('job'));
    }

    public function applyForJob(Request $request, $id)
    {
        $job = JobPosting::active()->findOrFail($id);

        $validated = $request->validate([
            'name'         => 'required|string|max:255',
            'email'        => 'required|email|max:255',
            'phone'        => 'required|string|max:20',
            'cover_letter' => 'nullable|string',
            'cv'           => 'required|file|mimes:pdf,doc,docx|max:5120', // 5MB max
        ]);

        // Check for duplicate application with same name, email, and phone
        $existingApplication = JobApplication::where('name', $validated['name'])
            ->where('email', $validated['email'])
            ->where('phone', $validated['phone'])
            ->first();

        if ($existingApplication) {
            return back()->with('error', 'You have already applied with this email and phone number. Duplicate applications are not allowed.');
        }

        try {
            // Handle CV upload
            $cvPath = null;
            if ($request->hasFile('cv')) {
                $cvPath = $request->file('cv')->store('cvs', 'public');
            }

            JobApplication::create([
                'job_posting_id' => $job->id,
                'name'           => $validated['name'],
                'email'          => $validated['email'],
                'phone'          => $validated['phone'],
                'cover_letter'   => $validated['cover_letter'] ?? null,
                'cv_path'        => $cvPath,
                'is_reviewed'    => false,
            ]);

            return back()->with('success', 'Your application has been submitted successfully! We will review it soon.');
        } catch (\Exception $e) {
            return back()->with('error', 'An error occurred while submitting your application. Please try again later.');
        }
    }

    public function events(Request $request)
    {
        $eventsHero = contentBlock('events_page_header');

        $upcomingEvents = Event::with(['speakers', 'media'])
            ->where('is_past', false)
            ->orderBy('sort_order')
            ->orderBy('event_date')
            ->get();

        $pastEvents = Event::with(['media'])
            ->where('is_past', true)
            ->orderBy('sort_order')
            ->orderByDesc('event_date')
            ->get();

        return view('frontend.pages.events', compact('eventsHero', 'upcomingEvents', 'pastEvents'));
    }

    public function eventdetails(Request $request, ?Event $event = null)
    {
        $event ??= Event::query()
            ->with(['speakers', 'eventPartners', 'media'])
            ->orderBy('sort_order')
            ->orderByDesc('event_date')
            ->firstOrFail();

        $event->load(['speakers', 'eventPartners', 'media']);

        $relatedEvents = Event::query()
            ->with(['media'])
            ->whereKeyNot($event->id)
            ->orderBy('sort_order')
            ->orderByDesc('event_date')
            ->take(3)
            ->get();

        return view('frontend.pages.eventdetails', compact('event', 'relatedEvents'));
    }

    public function contact(Request $request)
    {
        $heroContent      = contentBlock('contact-page');
        $contactHeader    = contentBlock('contact-us-head');
        $faqSection       = contentBlock('contact-faq-section');
        $contactPhones    = ContactInfo::where('type', 'phone')->active()->ordered()->get();
        $contactEmails    = ContactInfo::where('type', 'email')->active()->ordered()->get();
        $contactAddresses = ContactInfo::where('type', 'address')->active()->ordered()->get();
        $contactCareers   = ContactInfo::where('type', 'career')->active()->ordered()->get();
        $faqs             = Faq::active()->ordered()->get();
        return view('frontend.pages.contact', compact('heroContent', 'contactHeader', 'faqSection', 'contactPhones', 'contactEmails', 'contactAddresses', 'contactCareers', 'faqs'));
    }

    public function about(Request $request)
    {
        $aboutHeader                = contentBlock('about_us_header');
        $whoWeAre                   = contentBlock('about_us_who_we_are');
        $ourMission                 = contentBlock('about_us_our_mission');
        $missionContent             = contentBlock('about_us_mission');
        $visionContent              = contentBlock('about_us_vision');
        $goalsContent               = contentBlock('about_us_goals');
        $aboutTrace                 = contentBlock('about_trace');
        $aboutUniqueFeaturesContent = contentBlock('about_us_we_make_trace_different');
        $aboutFrameworkContent      = contentBlock('about_us_how_we_work');
        $partnersContent            = contentBlock('about_us_partners');

        $frameworkItems = collect([
            contentBlock('about_us_insight'),
            contentBlock('about_us_strategy') ?? contentBlock('about_us_stratigy'),
            contentBlock('about_us_impact'),
        ])->filter();

        $uniqueFeatureCards = collect([
            contentBlock('about_us_industry_wide_network'),
            contentBlock('about_us_sustainable_approach'),
            contentBlock('about_us_tailored_innovation'),
            contentBlock('about_us_end_to_end_integrated_solutions'),
        ])->filter();

        $storyItems = collect();
        for ($i = 1; $i <= 10; $i++) {
            $item = contentBlock("about_story_{$i}");
            if ($item) {
                $storyItems->push($item);
            }
        }

        $partners = Partner::with('media')->get();

        return view('frontend.pages.about', compact(
            'aboutHeader',
            'whoWeAre',
            'ourMission',
            'missionContent',
            'visionContent',
            'goalsContent',
            'aboutTrace',
            'storyItems',
            'aboutUniqueFeaturesContent',
            'frameworkItems',
            'aboutFrameworkContent',
            'uniqueFeatureCards',
            'partnersContent',
            'partners'
        ));
    }

    public function team(Request $request)
    {
        $teamPageContent   = contentBlock('team-page');
        $leadershipContent = contentBlock('team-leadership');
        $coreTeamContent   = contentBlock('team-core');
        $expertsContent    = contentBlock('team-experts');

        $leadership = Team::query()
            ->with(['projects', 'experties.media', 'socialMedia.media', 'media'])
            ->where('type', 1)
            ->orderBy('sort_order')
            ->latest('id')
            ->get();

        $coreTeams = Team::query()
            ->with(['projects', 'experties.media', 'socialMedia.media', 'media'])
            ->where('type', 2)
            ->orderBy('sort_order')
            ->latest('id')
            ->get();

        $nationalAdvisors = Team::query()
            ->with(['projects', 'experties.media', 'socialMedia.media', 'media'])
            ->where('type', 3)
            ->where('advisor_category', 'national')
            ->orderBy('sort_order')
            ->latest('id')
            ->get();

        $internationalAdvisors = Team::query()
            ->with(['projects', 'experties.media', 'socialMedia.media', 'media'])
            ->where('type', 3)
            ->where('advisor_category', 'international')
            ->orderBy('sort_order')
            ->latest('id')
            ->get();

        return view('frontend.pages.expert', compact('teamPageContent', 'leadershipContent', 'coreTeamContent', 'expertsContent', 'leadership', 'coreTeams', 'nationalAdvisors', 'internationalAdvisors'));
    }

    public function teamdetails(Request $request, ?Team $team = null)
    {
        $team ??= Team::query()
            ->orderBy('sort_order')
            ->latest('id')
            ->firstOrFail();

        $team->load(['experties.media', 'socialMedia.media', 'projects.media', 'media', 'insightArticles.insight.insightType']);

        $relatedTeams = Team::query()
            ->with(['media'])
            ->whereKeyNot($team->id)
            ->orderBy('sort_order')
            ->latest('id')
            ->take(4)
            ->get();

        return view('frontend.pages.expertdetails', compact('team', 'relatedTeams'));
    }

    public function dashboard(Request $request)
    {

        return view('user.dashboard');
    }

    public function login()
    {
        $datas   = Country::all();
        $genders = Gender::all();
        return view('auth.login', compact('datas', 'genders'));

    }

    public function registration()
    {
        $datas   = Country::all();
        $genders = Gender::all();
        return view('auth.register', compact('datas', 'genders'));

    }

    public function validateLogin(Request $request)
    {
        $countryIso = Country::where('id', 18)->first();

        $validated = $request->validate([
            // 'email_or_phone' => ['bail','required','regex:/^[0-9+]+$/',(new Phone)->country([$countryIso->iso])],
            'email_or_phone' => ['bail', 'required'],

            'password'       => 'required',
        ],
            [
                'email_or_phone.regex'    => 'The phone number must contain only English digits (0-9).',
                'email_or_phone.required' => 'The phone number is required',
            ]
        );

        $password = $request->input('password');

        if (filter_var($request->email_or_phone, FILTER_VALIDATE_EMAIL)) {
            $user = User::where('email', $request->email_or_phone)
            // ->orWhere('phone', $phoneNumber)
                ->first();
        } else {
            $phoneNumber = validationMobileNumber($request->email_or_phone, $countryIso->iso);
            $user        = User::where('email', $request->email_or_phone)
                ->orWhere('phone', $phoneNumber)
                ->first();
        }

        if ($user) {
            if (Hash::check($password, $user->password)) {

                if (($user->status == 0)) {

                    $toster = [
                        'message'    => "This account is in black listed",
                        'alert-type' => 'error',
                    ];
                    return back()->with($toster);

                } else {

                    if ($request->has('remember')) {
                        Auth::guard('web')->login($user, true);
                    } else {
                        Auth::guard('web')->login($user);
                    }
                    $toster = [
                        'message'    => "Wlecome to Dashboard, " . $user->name,
                        'alert-type' => 'success',
                    ];

                    return redirect()->route('user.dashboard')->with($toster);
                }

            } else {
                return back()->with('fail', 'Wrong Credential');
            }
        } else {
            $toster = [
                'message'    => "User Not Found",
                'alert-type' => 'error',
            ];

            return back()->with($toster);
        }
    }

    public function storRegistration(Request $request)
    {
        $code       = rand(100000, 999999);
        $countryID  = $request->country_id ?? 18;
        $countryIso = Country::where('id', $countryID)->first();

        $validated = $request->validate([
            'name'                  => 'required',
            'email'                 => 'unique:users',
            'password'              => 'required|confirmed',
            'password_confirmation' => 'required|same:password',
            // 'education_type_id' => 'required',
            'phone'                 => ['required', 'unique:users', 'regex:/^[0-9+]+$/', (new Phone)->country([$countryIso->iso] ?? ['BD'])],
            // 'upazila_id' => 'required',
            // 'district_id' => 'required',
            // 'division_id' => 'required',
            'gender_id'             => 'required',
            // 'country_id' => 'required',
        ],
            [
                'phone.regex'    => 'The phone number must contain only English digits (0-9).',
                'phone.required' => 'The phone number is required',
            ]
        );

        $phoneNumber = validationMobileNumber($request->phone, $countryIso->iso);

        $user = DB::transaction(function () use ($request, $code, $phoneNumber) {
            $userCreate = [
                "name"     => $request->name,
                "email"    => $request->email ?? null,
                "password" => Hash::make($request->password),
                "phone"    => $phoneNumber,
                "otp"      => $code,
                "status"   => 1,

            ];

            $newuser = User::create($userCreate);

            $userdetail = [
                "user_id"           => $newuser->id,
                "division_id"       => $request->division_id ?? null,
                "district_id"       => $request->district_id ?? null,
                "upazila_id"        => $request->upazila_id ?? null,
                "union_id"          => $request->union_id ?? null,
                "education_type_id" => $request->education_type_id ?? null,
                "profession_id"     => $request->profession_id ?? null,
                "gender_id"         => $request->gender_id ?? null,
                "country_id"        => $request->country_id ?? null,
                "religion_id"       => $request->religion_id ?? null,
            ];
            $userDetail = UserDetail::create($userdetail);

            return $newuser;
        });

        if ($user->status == 1) {
            $toster = [
                'message'    => "Registration Successfull",
                'alert-type' => 'success',
            ];
            return redirect()->route('login')->with($toster);

        } else {

            $toster = [
                'message'    => "Registration Fail",
                'alert-type' => 'error',
            ];
            return redirect()->route('registration')->with($toster);

        }
    }

    public function googleOauthLoad()
    {
        return Socialite::driver('google')->redirect();
    }

    public function googleOauthCallBack()
    {
        $user = Socialite::driver('google')->user();
        dd($user);
    }

    public function logout(Request $request): RedirectResponse
    {
        Auth::logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return Redirect::route('login');
    }

    public function loadForgetMyPass()
    {
        $datas = Country::all();
        return view('auth.forgetpass', compact('datas'));

    }

    public function searchUser(Request $request)
    {
        $countryIso = Country::where('id', 18)->first();

        $validated = $request->validate([
            'email_or_phone' => ['bail', 'required'],
        ],
            [
                'email_or_phone.regex'    => 'The phone number must contain only English digits (0-9).',
                'email_or_phone.required' => 'The phone number is required',
            ]
        );

        if (filter_var($request->email_or_phone, FILTER_VALIDATE_EMAIL)) {
            $credential = ["email" => $request->email_or_phone];
        } else {
            $phoneNumber = validationMobileNumber($request->email_or_phone, $countryIso->iso);
            $credential  = ["phone" => $phoneNumber];
            $email       = false;
        }

        $user = User::where($credential)->first();

        if ($user) {
            $toster = [
                'message'    => 'User Found',
                'alert-type' => 'success',
            ];

            return redirect()->route('userOtpLoad')->with('uuid', $user->id)->with($toster);

        } else {
            $toster = [
                'message'    => 'User Not Found',
                'alert-type' => 'error',
            ];

            return back()->with($toster);
        }
    }

    public function userOtpLoad(Request $request)
    {
        $uuID = session('uuid') ?? $request->uuid;
        $user = User::find($uuID);

        if (! $user) {
            return back()->with([
                'message'    => 'User Not Found',
                'alert-type' => 'error',
            ]);
        }

        $randCode = rand(100000, 999999);
        $toster   = [
            'message'    => 'User Found',
            'alert-type' => 'success',
        ];
        $status         = storeOtp($user, $randCode);
        $name           = $user->name;
        $messageContent = "Your Reset Code is : {$randCode}";

        // Email Code
        if ($user->email != null && $status == true) {
            Mail::to($user->email)->queue(new ForgetPassMail($name, $messageContent));
        } else {
            return back()->with([
                'message'    => 'Error in otp sending',
                'alert-type' => 'error',
            ]);
        }

        return view('auth.userotp', compact('user'))->with($toster);

    }

    public function validateUserOtp(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'otp'   => 'required|array|size:6',
            'otp.*' => 'required|digits:1',
        ]);

        if ($validator->fails()) {
            $toster = [
                'message'    => 'Wrong OTP',
                'alert-type' => 'error',
            ];
            return redirect()->route('forgetMyPass')->with($toster);
        }

        $otp = preg_replace('/\D/', '', implode('', $request->input('otp')));

        $user = User::find($request->uuid);

        // if ($admin->otp == $request->otp && $admin->otp_validate_time > now())
        if ($user?->otp == $otp) {
            $toster = [
                'message'    => 'Otp Matched',
                'alert-type' => 'success',
            ];
            return view('auth.passconfirm', compact('user'))->with($toster);
        } else {
            $toster = [
                'message'    => 'Wrong OTP',
                'alert-type' => 'error',
            ];

            return redirect()->route('userOtpLoad')->with('uuid', $user->id)->with($toster);
            // return view('auth.userotp', compact('user'))->with($toster);

        }
    }

    public function updateUserPassword(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'password'              => 'required',
            'password_confirmation' => 'required|same:password',
        ],
            [
                'password.required'              => 'The Password is required',
                'password_confirmation.required' => 'The Confirm Password is required',
                'password_confirmation.same'     => 'The Confirm Password and Password must match',
            ]
        );

        if ($validator->fails()) {
            $toster = [
                'message'    => $validator->errors()->first(),
                'alert-type' => 'error',
            ];
            return redirect()->route('login')->with($toster);
        }

        $user           = User::find($request->uuid);
        $user->password = Hash::make($request->password);
        $user->save();

        $toster = [
            'message'    => 'Password Updated',
            'alert-type' => 'success',
        ];

        return redirect()->route('login')->with($toster);
    }

    public function aboutUs(Request $request)
    {
        // ১. সেকশন ভিত্তিক কন্টেন্ট ব্লক (অ্যাডমিন প্যানেলের স্লাগ অনুযায়ী)
        $aboutHeader                = contentBlock('about_us_header');
        $aboutTrace                 = contentBlock('about_trace');
        $whoWeAre                   = contentBlock('about_us_who_we_are');
        $ourMission                 = contentBlock('about_us_our_mission');
        $aboutCommitmentContent     = contentBlock('about_us_section_3');
        $aboutFrameworkContent      = contentBlock('about_us_how_we_work');
        $aboutUniqueFeaturesContent = contentBlock('about_us_we_make_trace_different');
        $partnersContent            = contentBlock('about_us_partners');

        $partners = Partner::with('media')->get();

        // ২. Framework / How we work এর আইটেমগুলো (স্লাগ চেক করে)
        $frameworkItems = collect([
            contentBlock('about_us_insight'),
            contentBlock('about_us_strategy') ?? contentBlock('about_us_stratigy'), // স্পেলিং মিস্টেক হ্যান্ডেল করতে
            contentBlock('about_us_impact'),
        ])->filter();

        // ৩. Unique Features / Why Trace Different এর কার্ডগুলো
        $uniqueFeatureCards = collect([
            contentBlock('about_us_industry_wide_network'),
            contentBlock('about_us_sustainable_approach'),
            contentBlock('about_us_tailored_innovation'),
            contentBlock('about_us_end_to_end_integrated_solutions'),
        ])->filter();

        // ৪. প্রজেক্টস এবং পার্টনারস
        $aboutProjects = Project::query()
            ->with(['services', 'media'])
            ->orderBy('sort_order')
            ->latest('id')
            ->take(3)
            ->get();

        // $partners = Partner::with('media')->get();

        // ৫. ইনসাইটস (যদি পেজে দরকার হয়)
        $aboutInsights = Insight::query()
            ->with(['articles.author.media', 'articles.media', 'media'])
            ->where('active', true)
            ->orderBy('sort_order')
            ->latest('id')
            ->take(4)
            ->get();

        return view('frontend.pages.about', compact(
            'aboutHeader',
            'aboutTrace',
            'whoWeAre',
            'ourMission',
            'aboutCommitmentContent',
            'aboutFrameworkContent',
            'frameworkItems',
            'aboutUniqueFeaturesContent',
            'uniqueFeatureCards',
            'aboutProjects',
            'partners',
            'aboutInsights',
            'partnersContent',

        ));
    }
    
}
