@extends('layouts.app')

@section('content')
    @php
        $typeOptions   = ['Policy Dialogue', 'Seminar', 'Webinar', 'Workshop', 'Roundtable', 'Conference', 'Annual Conference', 'National Dialogue'];
        $formatOptions = ['In-Person', 'Online', 'Hybrid'];
        $statusOptions = ['Open', 'Closed', 'Full', 'Coming Soon'];
        $speakers      = old('speakers', [['id' => null, 'team_id' => null, 'name' => '', 'designation' => '', 'session_role' => '', 'speaker_type' => 'External']]);
        $evtPartners   = old('event_partners', [['id' => null, 'name' => '']]);
    @endphp

    <div class="app-content-header">
        <div class="container-fluid">
            <div class="row align-items-center">
                <div class="col-sm-6"><h3 class="mb-0">Create Event</h3></div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-end mb-0">
                        <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">Dashboard</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('admin.events.index') }}">Events Manager</a></li>
                        <li class="breadcrumb-item active">Create</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="app-content">
        <div class="container-fluid">
            <form action="{{ route('admin.events.store') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="row g-4">

                    {{-- LEFT: Event Info --}}
                    <div class="col-12 col-xl-5">

                        <div class="card card-outline card-primary mb-4">
                            <div class="card-header"><h3 class="card-title">Event Information</h3></div>
                            <div class="card-body">
                                <div class="row g-3">

                                    <div class="col-12">
                                        <label class="form-label">Event Title <span class="text-danger">*</span></label>
                                        <input type="text" name="title" value="{{ old('title') }}" class="form-control @error('title') is-invalid @enderror" placeholder="National Dialogue on Regulatory Reform">
                                        @error('title')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="form-label">Event Type <span class="text-danger">*</span></label>
                                        <select name="event_type" class="form-select @error('event_type') is-invalid @enderror">
                                            @foreach($typeOptions as $t)
                                                <option value="{{ $t }}" @selected(old('event_type', 'Seminar') === $t)>{{ $t }}</option>
                                            @endforeach
                                        </select>
                                        @error('event_type')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="form-label">Format <span class="text-danger">*</span></label>
                                        <select name="event_format" class="form-select @error('event_format') is-invalid @enderror">
                                            @foreach($formatOptions as $f)
                                                <option value="{{ $f }}" @selected(old('event_format', 'In-Person') === $f)>{{ $f }}</option>
                                            @endforeach
                                        </select>
                                        @error('event_format')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="form-label">Event Date <span class="text-danger">*</span></label>
                                        <input type="date" name="event_date" value="{{ old('event_date') }}" class="form-control @error('event_date') is-invalid @enderror">
                                        @error('event_date')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="form-label">End Date</label>
                                        <input type="date" name="event_end_date" value="{{ old('event_end_date') }}" class="form-control @error('event_end_date') is-invalid @enderror">
                                        @error('event_end_date')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                    </div>

                                    <div class="col-12">
                                        <label class="form-label">Event Time</label>
                                        <input type="text" name="event_time" value="{{ old('event_time') }}" class="form-control @error('event_time') is-invalid @enderror" placeholder="9:00 AM – 4:30 PM BST">
                                        @error('event_time')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="form-label">Venue</label>
                                        <input type="text" name="venue" value="{{ old('venue') }}" class="form-control @error('venue') is-invalid @enderror" placeholder="BRAC Centre Inn">
                                        @error('venue')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="form-label">Venue Address</label>
                                        <input type="text" name="venue_address" value="{{ old('venue_address') }}" class="form-control @error('venue_address') is-invalid @enderror" placeholder="Mohakhali, Dhaka">
                                        @error('venue_address')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="form-label">Organizer</label>
                                        <input type="text" name="organizer" value="{{ old('organizer', 'GIET Foundation') }}" class="form-control @error('organizer') is-invalid @enderror">
                                        @error('organizer')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="form-label">Co-Host / Partner</label>
                                        <input type="text" name="co_host" value="{{ old('co_host') }}" class="form-control @error('co_host') is-invalid @enderror" placeholder="Asian Development Bank">
                                        @error('co_host')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="card card-outline card-warning mb-4">
                            <div class="card-header"><h3 class="card-title">Registration Details</h3></div>
                            <div class="card-body">
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <label class="form-label">Registration Status <span class="text-danger">*</span></label>
                                        <select name="registration_status" class="form-select @error('registration_status') is-invalid @enderror">
                                            @foreach($statusOptions as $s)
                                                <option value="{{ $s }}" @selected(old('registration_status', 'Open') === $s)>{{ $s }}</option>
                                            @endforeach
                                        </select>
                                        @error('registration_status')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="form-label">Registration Deadline</label>
                                        <input type="date" name="registration_deadline" value="{{ old('registration_deadline') }}" class="form-control @error('registration_deadline') is-invalid @enderror">
                                        @error('registration_deadline')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="form-label">Registration Fee</label>
                                        <input type="text" name="registration_fee" value="{{ old('registration_fee', 'Free') }}" class="form-control @error('registration_fee') is-invalid @enderror" placeholder="Free / BDT 500">
                                        @error('registration_fee')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="form-label">Capacity (seats)</label>
                                        <input type="number" name="registration_capacity" value="{{ old('registration_capacity') }}" class="form-control @error('registration_capacity') is-invalid @enderror" placeholder="150" min="0">
                                        @error('registration_capacity')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                    </div>

                                    <div class="col-md-6">
                                        <label class="form-label">Enquiry Email</label>
                                        <input type="email" name="enquiry_email" value="{{ old('enquiry_email', 'events@giet.org.bd') }}" class="form-control @error('enquiry_email') is-invalid @enderror">
                                        @error('enquiry_email')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                    </div>

                                    <div class="col-md-3">
                                        <label class="form-label">Sort Order</label>
                                        <input type="number" name="sort_order" value="{{ old('sort_order', 0) }}" class="form-control" min="0">
                                    </div>

                                    <div class="col-md-3 d-flex align-items-end">
                                        <div class="form-check mb-2">
                                            <input class="form-check-input" type="checkbox" name="is_past" value="1" id="isPast" @checked(old('is_past'))>
                                            <label class="form-check-label" for="isPast">Mark as Past Event</label>
                                        </div>
                                    </div>

                                    <div class="col-md-6" id="participantCountWrap">
                                        <label class="form-label">Participant Count (past events)</label>
                                        <input type="number" name="participant_count" value="{{ old('participant_count') }}" class="form-control" min="0">
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    {{-- RIGHT: Hero + Content --}}
                    <div class="col-12 col-xl-7">

                        <div class="card card-outline card-info mb-4">
                            <div class="card-header"><h3 class="card-title">Hero Image</h3></div>
                            <div class="card-body">
                                <input type="file" name="hero_image" accept="image/*" class="form-control @error('hero_image') is-invalid @enderror" onchange="previewImg(this,'heroPreview')">
                                @error('hero_image')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                <div id="heroPreview" class="mt-2"></div>
                            </div>
                        </div>

                        <div class="card card-outline card-secondary mb-4">
                            <div class="card-header"><h3 class="card-title">Event Content</h3></div>
                            <div class="card-body">
                                <div class="row g-3">
                                    <div class="col-12">
                                        <label class="form-label">About This Event</label>
                                        <textarea name="about" rows="6" class="form-control @error('about') is-invalid @enderror" placeholder="Describe the event...">{{ old('about') }}</textarea>
                                        @error('about')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                    </div>
                                    <div class="col-12">
                                        <label class="form-label">Who Should Attend <small class="text-muted">(one per line)</small></label>
                                        <textarea name="who_should_attend" rows="5" class="form-control @error('who_should_attend') is-invalid @enderror" placeholder="Senior officials from line ministries...&#10;Private sector representatives...">{{ old('who_should_attend') }}</textarea>
                                        @error('who_should_attend')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                    </div>
                                </div>
                            </div>
                        </div>

                        {{-- SPEAKERS --}}
                        <div class="card card-outline card-success mb-4">
                            <div class="card-header d-flex justify-content-between align-items-center">
                                <h3 class="card-title mb-0">Featured Speakers</h3>
                                <button type="button" class="btn btn-sm btn-success" id="addSpeaker"><i class="fas fa-plus"></i> Add Speaker</button>
                            </div>
                            <div class="card-body">
                                <div id="speakersList">
                                    @foreach($speakers as $si => $spk)
                                    <div class="speaker-row border rounded p-3 mb-3 position-relative">
                                        <button type="button" class="btn btn-sm btn-danger position-absolute top-0 end-0 m-1 remove-speaker">×</button>
                                        <input type="hidden" name="speakers[{{ $si }}][id]" value="{{ $spk['id'] ?? '' }}">
                                        <div class="row g-2">
                                            <div class="col-md-6">
                                                <label class="form-label small">Link to GIET Team Member <span class="text-muted">(optional)</span></label>
                                                <select name="speakers[{{ $si }}][team_id]" class="form-select form-select-sm speaker-team-select">
                                                    <option value="">— External Speaker —</option>
                                                    @foreach($teamMembers as $tm)
                                                    <option value="{{ $tm->id }}" @selected(($spk['team_id'] ?? '') == $tm->id)>{{ $tm->first_name }} {{ $tm->last_name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="form-label small">Session Role</label>
                                                <input type="text" name="speakers[{{ $si }}][session_role]" value="{{ $spk['session_role'] ?? '' }}" class="form-control form-control-sm" placeholder="Opening Keynote">
                                            </div>
                                            <div class="col-md-4 speaker-name-wrap">
                                                <label class="form-label small">Name <span class="text-muted">(if external)</span></label>
                                                <input type="text" name="speakers[{{ $si }}][name]" value="{{ $spk['name'] ?? '' }}" class="form-control form-control-sm" placeholder="Dr. Aminur Rahman">
                                            </div>
                                            <div class="col-md-4 speaker-name-wrap">
                                                <label class="form-label small">Designation <span class="text-muted">(if external)</span></label>
                                                <input type="text" name="speakers[{{ $si }}][designation]" value="{{ $spk['designation'] ?? '' }}" class="form-control form-control-sm" placeholder="Chairman, GIET Foundation">
                                            </div>
                                            <div class="col-md-4">
                                                <label class="form-label small">Type</label>
                                                <select name="speakers[{{ $si }}][speaker_type]" class="form-select form-select-sm">
                                                    <option value="GIET" @selected(($spk['speaker_type'] ?? '') === 'GIET')>GIET</option>
                                                    <option value="External" @selected(($spk['speaker_type'] ?? 'External') === 'External')>External</option>
                                                </select>
                                            </div>
                                            <div class="col-md-8 speaker-name-wrap">
                                                <label class="form-label small">Photo <span class="text-muted">(if external)</span></label>
                                                <input type="file" name="speakers[{{ $si }}][image]" accept="image/*" class="form-control form-control-sm">
                                            </div>
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>

                        {{-- EVENT PARTNERS --}}
                        <div class="card card-outline card-primary mb-4">
                            <div class="card-header d-flex justify-content-between align-items-center">
                                <h3 class="card-title mb-0">Co-Organisers & Partners</h3>
                                <button type="button" class="btn btn-sm btn-primary" id="addEvtPartner"><i class="fas fa-plus"></i> Add</button>
                            </div>
                            <div class="card-body">
                                <div id="evtPartnersList">
                                    @foreach($evtPartners as $pi => $prt)
                                    <div class="partner-row border rounded p-3 mb-3 position-relative">
                                        <button type="button" class="btn btn-sm btn-danger position-absolute top-0 end-0 m-1 remove-partner">×</button>
                                        <input type="hidden" name="event_partners[{{ $pi }}][id]" value="{{ $prt['id'] ?? '' }}">
                                        <div class="row g-2">
                                            <div class="col-md-5">
                                                <label class="form-label small">Partner Name</label>
                                                <input type="text" name="event_partners[{{ $pi }}][name]" value="{{ $prt['name'] ?? '' }}" class="form-control form-control-sm" placeholder="Asian Development Bank">
                                            </div>
                                            <div class="col-md-7">
                                                <label class="form-label small">Logo Image</label>
                                                <input type="file" name="event_partners[{{ $pi }}][image]" accept="image/*" class="form-control form-control-sm">
                                            </div>
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>

                        <div class="d-flex gap-2 justify-content-end">
                            <a href="{{ route('admin.events.index') }}" class="btn btn-secondary">Cancel</a>
                            <button type="submit" class="btn btn-primary px-5">Create Event</button>
                        </div>

                    </div>
                </div>
            </form>
        </div>
    </div>

@endsection

@push('scripts')
<script>
function previewImg(input, previewId) {
    const preview = document.getElementById(previewId);
    preview.innerHTML = '';
    if (input.files && input.files[0]) {
        const img = document.createElement('img');
        img.src = URL.createObjectURL(input.files[0]);
        img.style.cssText = 'max-height:120px;max-width:100%;border-radius:6px;border:1px solid #dee2e6;';
        preview.appendChild(img);
    }
}

const teamMembersData = @json($teamMembers->map(fn($t) => ['id' => $t->id, 'name' => $t->first_name . ' ' . $t->last_name]));

function buildTeamOptions(selectedId) {
    let opts = '<option value="">— External Speaker —</option>';
    teamMembersData.forEach(function(tm) {
        opts += `<option value="${tm.id}" ${selectedId == tm.id ? 'selected' : ''}>${tm.name}</option>`;
    });
    return opts;
}

let speakerIndex = {{ count($speakers) }};
document.getElementById('addSpeaker').addEventListener('click', function () {
    const si = speakerIndex++;
    const row = document.createElement('div');
    row.className = 'speaker-row border rounded p-3 mb-3 position-relative';
    row.innerHTML = `
        <button type="button" class="btn btn-sm btn-danger position-absolute top-0 end-0 m-1 remove-speaker">×</button>
        <input type="hidden" name="speakers[${si}][id]" value="">
        <div class="row g-2">
            <div class="col-md-6">
                <label class="form-label small">Link to GIET Team Member <span class="text-muted">(optional)</span></label>
                <select name="speakers[${si}][team_id]" class="form-select form-select-sm speaker-team-select">
                    ${buildTeamOptions(null)}
                </select>
            </div>
            <div class="col-md-6">
                <label class="form-label small">Session Role</label>
                <input type="text" name="speakers[${si}][session_role]" class="form-control form-control-sm" placeholder="Opening Keynote">
            </div>
            <div class="col-md-4 speaker-name-wrap">
                <label class="form-label small">Name <span class="text-muted">(if external)</span></label>
                <input type="text" name="speakers[${si}][name]" class="form-control form-control-sm" placeholder="Dr. Aminur Rahman">
            </div>
            <div class="col-md-4 speaker-name-wrap">
                <label class="form-label small">Designation <span class="text-muted">(if external)</span></label>
                <input type="text" name="speakers[${si}][designation]" class="form-control form-control-sm" placeholder="Chairman, GIET Foundation">
            </div>
            <div class="col-md-4">
                <label class="form-label small">Type</label>
                <select name="speakers[${si}][speaker_type]" class="form-select form-select-sm">
                    <option value="GIET">GIET</option>
                    <option value="External" selected>External</option>
                </select>
            </div>
            <div class="col-md-8 speaker-name-wrap">
                <label class="form-label small">Photo <span class="text-muted">(if external)</span></label>
                <input type="file" name="speakers[${si}][image]" accept="image/*" class="form-control form-control-sm">
            </div>
        </div>`;
    document.getElementById('speakersList').appendChild(row);
    bindRemove(row, 'remove-speaker');
});

let partnerIndex = {{ count($evtPartners) }};
document.getElementById('addEvtPartner').addEventListener('click', function () {
    const pi = partnerIndex++;
    const row = document.createElement('div');
    row.className = 'partner-row border rounded p-3 mb-3 position-relative';
    row.innerHTML = `
        <button type="button" class="btn btn-sm btn-danger position-absolute top-0 end-0 m-1 remove-partner">×</button>
        <input type="hidden" name="event_partners[${pi}][id]" value="">
        <div class="row g-2">
            <div class="col-md-5">
                <label class="form-label small">Partner Name</label>
                <input type="text" name="event_partners[${pi}][name]" class="form-control form-control-sm" placeholder="Asian Development Bank">
            </div>
            <div class="col-md-7">
                <label class="form-label small">Logo Image</label>
                <input type="file" name="event_partners[${pi}][image]" accept="image/*" class="form-control form-control-sm">
            </div>
        </div>`;
    document.getElementById('evtPartnersList').appendChild(row);
    bindRemove(row, 'remove-partner');
});

function bindRemove(row, cls) {
    row.querySelector('.' + cls).addEventListener('click', function () {
        row.remove();
    });
}

document.querySelectorAll('.remove-speaker').forEach(btn => bindRemove(btn.closest('.speaker-row'), 'remove-speaker'));
document.querySelectorAll('.remove-partner').forEach(btn => bindRemove(btn.closest('.partner-row'), 'remove-partner'));
</script>
@endpush
