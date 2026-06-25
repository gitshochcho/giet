@php
    $currentContent = $content ?? null;
    $currentSlug = $currentContent ? $currentContent->slug : '';
    $currentSection = $currentContent ? $currentContent->section : '';
    $currentHeading = $currentContent ? $currentContent->heading : '';
    $currentSubHeading = $currentContent ? $currentContent->sub_heading : '';
    $currentDesignWord = $currentContent ? $currentContent->design_word : '';
    $currentType = $currentContent ? $currentContent->type : '';
    $currentDescription = $currentContent ? $currentContent->description : '';
    $currentIconUrl = $currentContent ? $currentContent->iconUrl() : null;
    $currentImageUrl = $currentContent ? $currentContent->imageUrl() : null;
    $isEdit = $currentContent && $currentContent->id;
@endphp

<div class="row g-3">

    {{-- ======= QUICK PRESETS CARD ======= --}}
    <div class="col-12">
        <div class="card card-primary card-outline mb-0">
            <div class="card-header py-2 d-flex align-items-center justify-content-between">
                <div class="card-title mb-0">
                    <i class="fas fa-magic me-1 text-primary"></i> Quick Presets
                </div>
                <small class="text-muted">Click a preset to auto-fill all fields</small>
            </div>
            <div class="card-body py-3">

                {{-- HOME PAGE --}}
                <div class="mb-3">
                    <small class="preset-group-label fw-semibold text-uppercase text-muted d-flex align-items-center gap-1 mb-2"
                           style="letter-spacing:.05em;cursor:pointer;"
                           data-bs-toggle="collapse" data-bs-target="#presetGroupHome" aria-expanded="false">
                        <i class="fas fa-chevron-down preset-chevron"></i>
                        <i class="fas fa-home me-1"></i> Home Page
                    </small>
                    <div class="collapse" id="presetGroupHome">
                        <div class="d-flex flex-wrap gap-2 pb-2">
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="home_about_trace">Home — About GIET</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="home_about_trace_one">Home — About Item 1</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="home_about_trace_two">Home — About Item 2</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="home_about_trace_three">Home — About Item 3</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="home_focus_areas">Home — Focus Areas Section</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="home_mission">Home — Mission Section</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="home_projects">Home — Projects Section</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="home_partners">Home — Partners Heading</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="home_years_of_expertise">Home — Years Badge</button>
                        </div>
                    </div>
                </div>

                {{-- ABOUT PAGE --}}
                <div class="mb-3">
                    <small class="preset-group-label fw-semibold text-uppercase text-muted d-flex align-items-center gap-1 mb-2"
                           style="letter-spacing:.05em;cursor:pointer;"
                           data-bs-toggle="collapse" data-bs-target="#presetGroupAbout" aria-expanded="false">
                        <i class="fas fa-chevron-down preset-chevron"></i>
                        <i class="fas fa-info-circle me-1"></i> About Page
                    </small>
                    <div class="collapse" id="presetGroupAbout">
                        <div class="d-flex flex-wrap gap-2 pb-1">
                            {{-- Section headers --}}
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="about_us_header">About — Page Hero</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="about_us_who_we_are">About — Who We Are</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="about_us_our_mission">About — MVG Header</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="about_trace">About — Our Story Header</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="about_us_we_make_trace_different">About — Approach Header</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="about_us_how_we_work">About — Values Header</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="about_us_partners">About — Partners Section</button>
                            {{-- Mission / Vision / Goals cards --}}
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="about_us_mission">About — Mission Card</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="about_us_vision">About — Vision Card</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="about_us_goals">About — Goals Card</button>
                            {{-- Approach cards --}}
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="about_us_insight">About — Approach Card 1</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="about_us_strategy">About — Approach Card 2</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="about_us_impact">About — Approach Card 3</button>
                            {{-- Values cards --}}
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="about_us_industry_wide_network">About — Values Card 1</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="about_us_sustainable_approach">About — Values Card 2</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="about_us_tailored_innovation">About — Values Card 3</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="about_us_end_to_end_integrated_solutions">About — Values Card 4</button>
                            {{-- Story / Timeline --}}
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="about_story_template">About — Story Item (Template)</button>
                        </div>
                    </div>
                </div>

                {{-- PROJECTS PAGE --}}
                <div class="mb-3">
                    <small class="preset-group-label fw-semibold text-uppercase text-muted d-flex align-items-center gap-1 mb-2"
                           style="letter-spacing:.05em;cursor:pointer;"
                           data-bs-toggle="collapse" data-bs-target="#presetGroupProjects" aria-expanded="false">
                        <i class="fas fa-chevron-down preset-chevron"></i>
                        <i class="fas fa-folder-open me-1"></i> Projects Page
                    </small>
                    <div class="collapse" id="presetGroupProjects">
                        <div class="d-flex flex-wrap gap-2 pb-2">
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="projects-page">Projects — Page Hero</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="projects_portfolio">Projects — Portfolio Section</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="projects_impact">Projects — Impact Section Header</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="projects_stat_1">Projects — Stat 1</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="projects_stat_2">Projects — Stat 2</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="projects_stat_3">Projects — Stat 3</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="projects_stat_4">Projects — Stat 4</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="projects_work_with_us">Projects — Work With Us CTA</button>
                        </div>
                    </div>
                </div>

                {{-- PROJECT DETAILS PAGE --}}
                <div class="mb-3">
                    <small class="preset-group-label fw-semibold text-uppercase text-muted d-flex align-items-center gap-1 mb-2"
                           style="letter-spacing:.05em;cursor:pointer;"
                           data-bs-toggle="collapse" data-bs-target="#presetGroupProjectDetails" aria-expanded="false">
                        <i class="fas fa-chevron-down preset-chevron"></i>
                        <i class="fas fa-file-alt me-1"></i> Project Details Page
                    </small>
                    <div class="collapse" id="presetGroupProjectDetails">
                        <div class="d-flex flex-wrap gap-2 pb-2">
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="projectdetails_sidebar">Project Details — Sidebar Card</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="projectdetails_team">Project Details — Team Section</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="projectdetails_actions">Project Details — Action Buttons</button>
                        </div>
                    </div>
                </div>

                {{-- EVENTS PAGE --}}
                <div class="mb-3">
                    <small class="preset-group-label fw-semibold text-uppercase text-muted d-flex align-items-center gap-1 mb-2"
                           style="letter-spacing:.05em;cursor:pointer;"
                           data-bs-toggle="collapse" data-bs-target="#presetGroupEvents" aria-expanded="false">
                        <i class="fas fa-chevron-down preset-chevron"></i>
                        <i class="fas fa-calendar-alt me-1"></i> Events Page
                    </small>
                    <div class="collapse" id="presetGroupEvents">
                        <div class="d-flex flex-wrap gap-2 pb-2">
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="events_page_header">Events — Page Hero</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="events_upcoming">Events — Upcoming Section</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="events_past">Events — Past Section</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary preset-btn" data-preset="events_cta">Events — Co-host CTA</button>
                        </div>
                    </div>
                </div>

                {{-- PAGE HEROES --}}
                <div class="mb-3">
                    <small class="preset-group-label fw-semibold text-uppercase text-muted d-flex align-items-center gap-1 mb-2"
                           style="letter-spacing:.05em;cursor:pointer;"
                           data-bs-toggle="collapse" data-bs-target="#presetGroupHeroes" aria-expanded="false">
                        <i class="fas fa-chevron-down preset-chevron"></i>
                        <i class="fas fa-flag me-1"></i> Page Heroes
                    </small>
                    <div class="collapse" id="presetGroupHeroes">
                        <div class="d-flex flex-wrap gap-2 pb-1">
                            <button type="button" class="btn btn-sm btn-outline-primary preset-btn" data-preset="services-page">Work Page Hero</button>
                            <button type="button" class="btn btn-sm btn-outline-primary preset-btn" data-preset="work_key_focus_areas">Work — Key Focus Areas</button>
                            <button type="button" class="btn btn-sm btn-outline-primary preset-btn" data-preset="team-page">Team Page Hero</button>
                            <button type="button" class="btn btn-sm btn-outline-primary preset-btn" data-preset="team-leadership">Team Leadership</button>
                            <button type="button" class="btn btn-sm btn-outline-primary preset-btn" data-preset="team-core">Team Core Section</button>
                            <button type="button" class="btn btn-sm btn-outline-primary preset-btn" data-preset="team-experts">Team Experts Section</button>
                            <button type="button" class="btn btn-sm btn-outline-primary preset-btn" data-preset="insights-page">Resources Page Hero</button>
                            <button type="button" class="btn btn-sm btn-outline-primary preset-btn" data-preset="career-heading">Career Page Hero</button>
                        </div>
                    </div>
                </div>

                {{-- CTA --}}
                <div class="mb-3">
                    <small class="preset-group-label fw-semibold text-uppercase text-muted d-flex align-items-center gap-1 mb-2"
                           style="letter-spacing:.05em;cursor:pointer;"
                           data-bs-toggle="collapse" data-bs-target="#presetGroupCta" aria-expanded="false">
                        <i class="fas fa-chevron-down preset-chevron"></i>
                        <i class="fas fa-bullhorn me-1"></i> CTA Section
                    </small>
                    <div class="collapse" id="presetGroupCta">
                        <div class="d-flex flex-wrap gap-2 pb-1">
                            <button type="button" class="btn btn-sm btn-outline-primary preset-btn" data-preset="work-with-us">Work With Us CTA</button>
                        </div>
                    </div>
                </div>

                {{-- CONTACT --}}
                <div class="mb-3">
                    <small class="preset-group-label fw-semibold text-uppercase text-muted d-flex align-items-center gap-1 mb-2"
                           style="letter-spacing:.05em;cursor:pointer;"
                           data-bs-toggle="collapse" data-bs-target="#presetGroupContact" aria-expanded="false">
                        <i class="fas fa-chevron-down preset-chevron"></i>
                        <i class="fas fa-envelope me-1"></i> Contact Page
                    </small>
                    <div class="collapse" id="presetGroupContact">
                        <div class="d-flex flex-wrap gap-2 pb-1">
                            <button type="button" class="btn btn-sm btn-outline-primary preset-btn" data-preset="contact-page">Contact Page Hero</button>
                            <button type="button" class="btn btn-sm btn-outline-primary preset-btn" data-preset="contact-faq-section">Contact FAQ Section</button>
                        </div>
                    </div>
                </div>

                {{-- PROJECT DETAILS --}}
                <div class="mb-0">
                    <small class="preset-group-label fw-semibold text-uppercase text-muted d-flex align-items-center gap-1 mb-2"
                           style="letter-spacing:.05em;cursor:pointer;"
                           data-bs-toggle="collapse" data-bs-target="#presetGroupProject" aria-expanded="false">
                        <i class="fas fa-chevron-down preset-chevron"></i>
                        <i class="fas fa-project-diagram me-1"></i> Project Details
                    </small>
                    <div class="collapse" id="presetGroupProject">
                        <div class="d-flex flex-wrap gap-2 pb-1">
                            <button type="button" class="btn btn-sm btn-outline-primary preset-btn" data-preset="project-location-section">Project Locations</button>
                            <button type="button" class="btn btn-sm btn-outline-primary preset-btn" data-preset="project-phase-section">Project Phases</button>
                            <button type="button" class="btn btn-sm btn-outline-primary preset-btn" data-preset="project-outcome-section">Project Outcomes</button>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    {{-- ======= DYNAMIC FIELD GUIDE ======= --}}
    <div class="col-12" id="field-guide-wrapper" style="display:none;">
        <div class="alert alert-info border-start border-4 border-info mb-0 py-2 px-3" id="field-guide-content">
        </div>
    </div>

    {{-- ======= FORM FIELDS ======= --}}

    {{-- Slug --}}
    <div class="col-md-6">
        <label for="content_slug" class="form-label fw-semibold">
            Slug
            @if($isEdit)
                <span class="badge bg-secondary ms-1" style="font-size:10px;">Read-only after save</span>
            @endif
        </label>
        <input type="text" id="content_slug" name="slug"
               value="{{ old('slug', $currentSlug) }}"
               class="form-control font-monospace @error('slug') is-invalid @enderror {{ $isEdit ? 'bg-light' : '' }}"
               placeholder="e.g. home_mission" @if($isEdit) readonly @endif>
        <small class="text-muted">
            <i class="fas fa-key me-1"></i>
            System ID — used to find this block in the website code. <strong>Do not change after creation.</strong>
        </small>
        @error('slug')<div class="invalid-feedback">{{ $message }}</div>@enderror
    </div>

    {{-- Section Label --}}
    <div class="col-md-6">
        <label for="content_section" class="form-label fw-semibold">
            Section Label
            @if($isEdit)
                <span class="badge bg-secondary ms-1" style="font-size:10px;">Read-only after save</span>
            @endif
        </label>
        <input type="text" id="content_section" name="section"
               value="{{ old('section', $currentSection) }}"
               class="form-control @error('section') is-invalid @enderror {{ $isEdit ? 'bg-light' : '' }}"
               placeholder="e.g. ABOUT GIET" @if($isEdit) readonly @endif>
        <small class="text-muted">
            <i class="fas fa-tag me-1"></i>
            Small uppercase tag shown above the main heading on the page.
        </small>
        @error('section')<div class="invalid-feedback">{{ $message }}</div>@enderror
    </div>

    {{-- Main Heading --}}
    <div class="col-md-6">
        <label for="content_heading" class="form-label fw-semibold">Main Heading</label>
        <input type="text" id="content_heading" name="heading"
               value="{{ old('heading', $currentHeading) }}"
               class="form-control @error('heading') is-invalid @enderror"
               placeholder="e.g. Work That Creates Impact">
        <small class="text-muted">
            <i class="fas fa-heading me-1"></i>
            The primary large heading shown in this section.
        </small>
        @error('heading')<div class="invalid-feedback">{{ $message }}</div>@enderror
    </div>

    {{-- Sub Heading / Button --}}
    <div class="col-md-6">
        <label for="content_sub_heading" class="form-label fw-semibold">Sub Heading / Button Label</label>
        <input type="text" id="content_sub_heading" name="sub_heading"
               value="{{ old('sub_heading', $currentSubHeading) }}"
               class="form-control @error('sub_heading') is-invalid @enderror"
               placeholder="e.g. View All Projects">
        <small class="text-muted" id="sub_heading_hint">
            <i class="fas fa-info-circle me-1"></i>
            Used as a button label or secondary line — depends on the section.
        </small>
        @error('sub_heading')<div class="invalid-feedback">{{ $message }}</div>@enderror
    </div>

    {{-- Highlighted Word / Extra --}}
    <div class="col-md-6">
        <label for="content_design_word" class="form-label fw-semibold">Highlighted Word / Extra Data</label>
        <input type="text" id="content_design_word" name="design_word"
               value="{{ old('design_word', $currentDesignWord) }}"
               class="form-control @error('design_word') is-invalid @enderror"
               placeholder="e.g. Impact  OR  Governance|Reform|Policy">
        <small class="text-muted" id="design_word_hint">
            <i class="fas fa-paint-brush me-1"></i>
            <strong>Two uses:</strong>
            (1) A word from the heading that will be shown in a different color —
            (2) Pipe-separated list for bullet/pillar items (e.g. <code>Governance|Reform|Policy</code>).
            See field guide above for this block's specific use.
        </small>
        @error('design_word')<div class="invalid-feedback">{{ $message }}</div>@enderror
    </div>

    {{-- Block Type --}}
    <div class="col-md-6">
        <label for="content_type" class="form-label fw-semibold">Block Type</label>
        <input type="text" id="content_type" name="type"
               value="{{ old('type', $currentType) }}"
               class="form-control @error('type') is-invalid @enderror"
               placeholder="e.g. Hero / Section / CTA / List Item">
        <small class="text-muted">
            <i class="fas fa-layer-group me-1"></i>
            Internal category label — helps organize blocks. Common values: Hero, Section, CTA, List Item, Badge.
        </small>
        @error('type')<div class="invalid-feedback">{{ $message }}</div>@enderror
    </div>

    {{-- Body Text --}}
    <div class="col-12">
        <label for="content_description" class="form-label fw-semibold">Body Text / Paragraph</label>
        <textarea id="content_description" name="description" rows="6"
                  class="form-control @error('description') is-invalid @enderror">{{ old('description', $currentDescription) }}</textarea>
        <small class="text-muted" id="description_hint">
            <i class="fas fa-align-left me-1"></i>
            The main paragraph text shown in this section. Supports rich formatting (bold, lists, etc.).
        </small>
        @error('description')<div class="invalid-feedback">{{ $message }}</div>@enderror
    </div>

    {{-- Icon Image --}}
    <div class="col-md-6">
        <label for="content_icon" class="form-label fw-semibold">Icon / Small Image</label>
        <input type="file" id="content_icon" name="icon" class="form-control @error('icon') is-invalid @enderror"
               accept="image/*" data-max-size="2048">
        <small class="text-muted">
            <i class="fas fa-image me-1"></i>
            Small icon (recommended 64×64px square, max 2MB). Used for feature/card icons.
        </small>
        @error('icon')<div class="invalid-feedback">{{ $message }}</div>@enderror
        @if($currentIconUrl)
        <div class="mt-2 d-flex align-items-center gap-2">
            <img id="icon-preview" src="{{ $currentIconUrl }}" alt="Current icon preview"
                 style="width:56px;height:56px;object-fit:contain;border-radius:6px;border:1px solid #dee2e6;">
            <div>
                <button type="button" class="btn btn-sm btn-outline-danger" id="remove-icon-btn">
                    <i class="fas fa-trash-alt me-1"></i> Remove
                </button>
                <input type="hidden" name="remove_icon" id="remove_icon_input" value="0">
            </div>
        </div>
        @endif
    </div>

    {{-- Main Image --}}
    <div class="col-md-6">
        <label for="content_image" class="form-label fw-semibold">Main Image / Banner</label>
        <input type="file" id="content_image" name="image" class="form-control @error('image') is-invalid @enderror"
               accept="image/*" data-max-size="4096">
        <small class="text-muted">
            <i class="fas fa-image me-1"></i>
            Large banner/section image (recommended 1200×800px, max 4MB).
        </small>
        @error('image')<div class="invalid-feedback">{{ $message }}</div>@enderror
        @if($currentImageUrl)
        <div class="mt-2 d-flex align-items-center gap-3">
            <img id="image-preview" src="{{ $currentImageUrl }}" alt="Current banner"
                 style="width:140px;height:90px;object-fit:cover;border-radius:8px;border:1px solid #dee2e6;">
            <div>
                <button type="button" class="btn btn-sm btn-outline-danger" id="remove-image-btn">
                    <i class="fas fa-trash-alt me-1"></i> Remove
                </button>
                <input type="hidden" name="remove_image" id="remove_image_input" value="0">
            </div>
        </div>
        @endif
    </div>

</div>{{-- /row --}}

@push('custome-js')
<style>
.preset-chevron { transition: transform .2s ease; }
.preset-group-label[aria-expanded="false"] .preset-chevron { transform: rotate(-90deg); }
.preset-group-label { user-select: none; }
.preset-btn.active { background-color: #0d6efd !important; color: #fff !important; border-color: #0d6efd !important; }
#field-guide-wrapper .field-guide-table td:first-child { font-weight: 600; white-space: nowrap; padding-right: 12px; }
#field-guide-wrapper .field-guide-table td { padding: 2px 4px; font-size: 13px; }
</style>

<script src="https://cdn.ckeditor.com/ckeditor5/41.4.2/classic/ckeditor.js"></script>
<script>
document.addEventListener('DOMContentLoaded', function () {

    /* ============================================================
       ELEMENT REFERENCES
    ============================================================ */
    const slugField        = document.getElementById('content_slug');
    const sectionField     = document.getElementById('content_section');
    const headingField     = document.getElementById('content_heading');
    const subHeadingField  = document.getElementById('content_sub_heading');
    const designWordField  = document.getElementById('content_design_word');
    const typeField        = document.getElementById('content_type');
    const descriptionField = document.getElementById('content_description');
    const guideWrapper     = document.getElementById('field-guide-wrapper');
    const guideContent     = document.getElementById('field-guide-content');

    let contentEditor = null;

    /* ============================================================
       CKEDITOR INIT
    ============================================================ */
    if (descriptionField) {
        ClassicEditor.create(descriptionField)
            .then(editor => { contentEditor = editor; })
            .catch(console.error);
    }

    function setDescriptionValue(value) {
        const v = value || '';
        if (descriptionField) descriptionField.value = v;
        if (contentEditor) contentEditor.setData(v);
    }

    /* ============================================================
       REMOVE IMAGE / ICON
    ============================================================ */
    const removeIconBtn   = document.getElementById('remove-icon-btn');
    const removeIconInput = document.getElementById('remove_icon_input');
    const iconPreview     = document.getElementById('icon-preview');
    if (removeIconBtn) {
        removeIconBtn.onclick = function () {
            if (removeIconInput.value === '0') {
                iconPreview.style.opacity = '0.3';
                iconPreview.style.filter  = 'grayscale(100%)';
                removeIconInput.value     = '1';
                removeIconBtn.innerHTML   = '<i class="fas fa-undo me-1"></i> Undo';
                removeIconBtn.classList.replace('btn-outline-danger', 'btn-outline-secondary');
            } else {
                iconPreview.style.opacity = '1';
                iconPreview.style.filter  = 'none';
                removeIconInput.value     = '0';
                removeIconBtn.innerHTML   = '<i class="fas fa-trash-alt me-1"></i> Remove';
                removeIconBtn.classList.replace('btn-outline-secondary', 'btn-outline-danger');
            }
        };
    }

    const removeImageBtn   = document.getElementById('remove-image-btn');
    const removeImageInput = document.getElementById('remove_image_input');
    const imagePreview     = document.getElementById('image-preview');
    if (removeImageBtn) {
        removeImageBtn.onclick = function () {
            if (removeImageInput.value === '0') {
                imagePreview.style.opacity = '0.3';
                imagePreview.style.filter  = 'grayscale(100%)';
                removeImageInput.value     = '1';
                removeImageBtn.innerHTML   = '<i class="fas fa-undo me-1"></i> Undo';
                removeImageBtn.classList.replace('btn-outline-danger', 'btn-outline-secondary');
            } else {
                imagePreview.style.opacity = '1';
                imagePreview.style.filter  = 'none';
                removeImageInput.value     = '0';
                removeImageBtn.innerHTML   = '<i class="fas fa-trash-alt me-1"></i> Remove';
                removeImageBtn.classList.replace('btn-outline-secondary', 'btn-outline-danger');
            }
        };
    }

    /* ============================================================
       FIELD GUIDES — what each field means per content block
    ============================================================ */
    const fieldGuides = {
        'home_about_trace': {
            title: '🏠 Home Page — About GIET Section',
            rows: [
                ['Section Label',          '"ABOUT GIET" — small teal tag above the heading'],
                ['Main Heading',           'Large heading text (e.g. "Transforming Challenges Into Strategic Opportunities")'],
                ['Highlighted Word',       'One word from the heading that will appear in teal color'],
                ['Sub Heading / Button',   'Button label (e.g. "Learn About Us")'],
                ['Body Text',              'Paragraph text describing GIET shown below the heading'],
            ]
        },
        'home_about_trace_one': {
            title: '🏠 Home Page — About Item 1 (numbered list)',
            rows: [
                ['Main Heading',   'Title of this numbered point'],
                ['Body Text',      'Short description for this point'],
            ]
        },
        'home_about_trace_two': {
            title: '🏠 Home Page — About Item 2 (numbered list)',
            rows: [
                ['Main Heading',   'Title of this numbered point'],
                ['Body Text',      'Short description for this point'],
            ]
        },
        'home_about_trace_three': {
            title: '🏠 Home Page — About Item 3 (numbered list)',
            rows: [
                ['Main Heading',   'Title of this numbered point'],
                ['Body Text',      'Short description for this point'],
            ]
        },
        'home_focus_areas': {
            title: '🏠 Home Page — Focus Areas Section Header',
            rows: [
                ['Section Label',        '"Our Focus Areas" — small label above heading'],
                ['Main Heading',         'Section heading (e.g. "Where We Direct Our Work")'],
                ['Sub Heading / Button', 'Top-right button label (e.g. "See All")'],
                ['Highlighted Word',     'Bottom-center full button label (e.g. "See All Focus Areas")'],
                ['Body Text',            '(Not used in this section)'],
            ]
        },
        'home_mission': {
            title: '🏠 Home Page — Mission Section',
            rows: [
                ['Section Label',        '"Our Mission" — small teal label on the right column'],
                ['Main Heading',         'The large quote shown on the left (do not add quotation marks)'],
                ['Sub Heading / Button', 'Attribution line below the quote (e.g. "Dr. X, Founding Director, GIET")'],
                ['Highlighted Word',     'Pillar list separated by | (e.g. "Governance|Reform|Policy|Innovation")'],
                ['Body Text',            'Mission paragraph text shown on the right column'],
            ]
        },
        'home_projects': {
            title: '🏠 Home Page — Projects Section Header',
            rows: [
                ['Section Label',        '"Our Projects" — small label above heading'],
                ['Main Heading',         'Section heading (e.g. "Work That Creates Impact")'],
                ['Sub Heading / Button', 'Bottom "View All" button label (e.g. "View All Projects")'],
                ['Body Text',            'Paragraph text shown below the heading'],
            ]
        },
        'home_partners': {
            title: '🏠 Home Page — Partners Section',
            rows: [
                ['Main Heading',  'Section heading (e.g. "Our Partners")'],
                ['Body Text',     '(Not used — partner logos come from Partners Manager)'],
            ]
        },
        'home_years_of_expertise': {
            title: '🏠 Home Page — Years of Expertise Badge',
            rows: [
                ['Main Heading',   'Number shown in the badge (e.g. "8+")'],
                ['Body Text',      'Label below the number (e.g. "Years of Expertise")'],
            ]
        },
        'work_key_focus_areas': {
            title: '💼 Work Page — Key Focus Areas Heading',
            rows: [
                ['Section Label', 'Small teal tag above heading (e.g. "WHAT WE DO")'],
                ['Main Heading',  'Section heading shown above the service cards (e.g. "Key Focus Areas")'],
            ]
        },
        'services-page': {
            title: '💼 Work/Services Page — Hero Section',
            rows: [
                ['Section Label',      'Small tag (e.g. "WHAT WE DO")'],
                ['Main Heading',       'Page hero heading'],
                ['Highlighted Word',   'Word in heading shown in color'],
                ['Body Text',          'Hero paragraph text'],
            ]
        },
        'work-with-us': {
            title: '📣 CTA Section — Work With Us',
            rows: [
                ['Section Label',        'Small tag (e.g. "WORK WITH US")'],
                ['Main Heading',         'CTA heading (e.g. "Have a project in mind?")'],
                ['Sub Heading / Button', 'Button label (e.g. "Get in Touch")'],
                ['Highlighted Word',     'Colored word in heading'],
                ['Body Text',            'CTA paragraph text'],
            ]
        },
        'contact-page': {
            title: '📧 Contact Page — Hero Section',
            rows: [
                ['Section Label',   'Small tag (e.g. "CONTACT US")'],
                ['Main Heading',    'Hero heading (e.g. "Get In Touch")'],
                ['Body Text',       'Hero paragraph text'],
            ]
        },
        'about_us_header': {
            title: 'ℹ️ About Page — Page Header',
            rows: [
                ['Section Label',      'Small tag (e.g. "ABOUT US")'],
                ['Main Heading',       'Page hero heading'],
                ['Highlighted Word',   'Word in heading shown in color'],
                ['Body Text',          'Hero paragraph text'],
            ]
        },
        'about_us_our_mission': {
            title: 'ℹ️ About Page — Mission/Vision/Goals Section Header',
            rows: [
                ['Section Label',  '"Our Institution" — small teal tag above heading'],
                ['Main Heading',   'Section heading (e.g. "Mission, Vision & Goals")'],
                ['Body Text',      '(Not used here — content comes from the 3 cards below)'],
            ]
        },
        'about_us_mission': {
            title: 'ℹ️ About Page — Mission Card',
            rows: [
                ['Section Label',  '"Mission" — small teal label at top of the card'],
                ['Body Text',      'The mission statement text shown in the card'],
            ]
        },
        'about_us_vision': {
            title: 'ℹ️ About Page — Vision Card',
            rows: [
                ['Section Label',  '"Vision" — small label at top of the card'],
                ['Body Text',      'The vision statement text shown in the card'],
            ]
        },
        'about_us_goals': {
            title: 'ℹ️ About Page — Goals Card',
            rows: [
                ['Section Label',  '"Goals" — small label at top of the card'],
                ['Body Text',      'The goals statement text shown in the card'],
            ]
        },
        'about_trace': {
            title: 'ℹ️ About Page — Our Story Section (Left Panel)',
            rows: [
                ['Section Label',  '"Our Story" — small teal tag above heading'],
                ['Main Heading',   'Left panel heading (e.g. "Built on a Belief that Better Governance is Possible")'],
                ['Body Text',      'Short intro paragraph in the left panel'],
            ]
        },
        'about_us_we_make_trace_different': {
            title: 'ℹ️ About Page — What Sets GIET Apart (Approach Section Header)',
            rows: [
                ['Section Label',  '"Our Approach" — small tag above heading'],
                ['Main Heading',   'Section heading (e.g. "What Sets GIET Apart")'],
                ['Body Text',      '(Not used — content comes from the 3 approach cards)'],
            ]
        },
        'about_us_insight': {
            title: 'ℹ️ About Page — Approach Card 1',
            rows: [
                ['Main Heading',  'Card title (e.g. "Evidence-Based Research")'],
                ['Body Text',     'Card description text'],
            ]
        },
        'about_us_strategy': {
            title: 'ℹ️ About Page — Approach Card 2',
            rows: [
                ['Main Heading',  'Card title (e.g. "Multi-Stakeholder Dialogue")'],
                ['Body Text',     'Card description text'],
            ]
        },
        'about_us_impact': {
            title: 'ℹ️ About Page — Approach Card 3',
            rows: [
                ['Main Heading',  'Card title (e.g. "Integrated Implementation Support")'],
                ['Body Text',     'Card description text'],
            ]
        },
        'about_us_how_we_work': {
            title: 'ℹ️ About Page — Values Section Header',
            rows: [
                ['Section Label',  '"Our Values" — small tag above heading'],
                ['Main Heading',   'Section heading (e.g. "The Principles That Guide Our Work")'],
                ['Body Text',      '(Not used — content comes from the 4 values cards)'],
            ]
        },
        'about_us_industry_wide_network': {
            title: 'ℹ️ About Page — Values Card 1',
            rows: [
                ['Main Heading',  'Card title (e.g. "Integrity")'],
                ['Body Text',     'Card description text'],
                ['Icon',          'Small icon shown in the teal box (optional)'],
            ]
        },
        'about_us_sustainable_approach': {
            title: 'ℹ️ About Page — Values Card 2',
            rows: [
                ['Main Heading',  'Card title (e.g. "Independence")'],
                ['Body Text',     'Card description text'],
                ['Icon',          'Small icon shown in the teal box (optional)'],
            ]
        },
        'about_us_tailored_innovation': {
            title: 'ℹ️ About Page — Values Card 3',
            rows: [
                ['Main Heading',  'Card title (e.g. "Inclusion")'],
                ['Body Text',     'Card description text'],
                ['Icon',          'Small icon shown in the teal box (optional)'],
            ]
        },
        'about_us_end_to_end_integrated_solutions': {
            title: 'ℹ️ About Page — Values Card 4',
            rows: [
                ['Main Heading',  'Card title (e.g. "Impact")'],
                ['Body Text',     'Card description text'],
                ['Icon',          'Small icon shown in the teal box (optional)'],
            ]
        },
        'about_story_template': {
            title: 'ℹ️ About Page — Story / Timeline Item',
            rows: [
                ['Slug',          'Use about_story_1, about_story_2, about_story_3 … (up to about_story_10)'],
                ['Section Label', 'The YEAR shown on the left (e.g. "2021", "2022", "2023")'],
                ['Main Heading',  'Event title (e.g. "Foundation Established")'],
                ['Body Text',     'Event description — what happened that year'],
            ]
        },
        'about_us_partners': {
            title: 'ℹ️ About Page — Partners Section',
            rows: [
                ['Main Heading',     'Section heading (e.g. "Our Partners")'],
                ['Highlighted Word', 'Word in heading shown in color'],
                ['Body Text',        'Short description below the heading'],
            ]
        },
        'projects_portfolio': {
            title: '📁 Projects Page — Portfolio Section Header',
            rows: [
                ['Section Label', 'Small teal tag above heading (e.g. "Project Portfolio")'],
                ['Main Heading',  'Section heading (e.g. "Work That Creates Impact")'],
            ]
        },
        'projects_impact': {
            title: '📁 Projects Page — Impact Section Header',
            rows: [
                ['Section Label', 'Small teal tag above heading (e.g. "Our Impact")'],
                ['Main Heading',  'Section heading (e.g. "Measurable Outcomes Across Our Portfolio")'],
            ]
        },
        'projects_stat_1': {
            title: '📁 Projects Page — Impact Stat Card 1',
            rows: [
                ['Main Heading',  'The number shown large in red (e.g. "24+", "6K+", "38")'],
                ['Section Label', 'The label shown below the number (e.g. "Projects Delivered")'],
            ]
        },
        'projects_stat_2': {
            title: '📁 Projects Page — Impact Stat Card 2',
            rows: [
                ['Main Heading',  'The number shown large in red (e.g. "6K+")'],
                ['Section Label', 'The label shown below the number (e.g. "Officials Trained")'],
            ]
        },
        'projects_stat_3': {
            title: '📁 Projects Page — Impact Stat Card 3',
            rows: [
                ['Main Heading',  'The number shown large in red (e.g. "38")'],
                ['Section Label', 'The label shown below the number (e.g. "Policy Recommendations Adopted")'],
            ]
        },
        'projects_stat_4': {
            title: '📁 Projects Page — Impact Stat Card 4',
            rows: [
                ['Main Heading',  'The number shown large in red (e.g. "12+")'],
                ['Section Label', 'The label shown below the number (e.g. "Partner Organizations")'],
            ]
        },
        'projects_work_with_us': {
            title: '📁 Projects Page — Work With Us / CTA Section',
            rows: [
                ['Section Label',        'Small teal tag above heading (e.g. "Collaborate")'],
                ['Main Heading',         'CTA heading (e.g. "Ready to Commission a Project?")'],
                ['Body Text',            'Paragraph text below the heading'],
                ['Sub Heading / Button', 'Primary button label (e.g. "Get In Touch") — links to Contact page'],
                ['Highlighted Word',     'Secondary button label (e.g. "About GIET") — links to About page'],
            ]
        },
        'projectdetails_sidebar': {
            title: '📄 Project Details Page — Sidebar "Work With Us" Card',
            rows: [
                ['Section Label',        'Eyebrow label above description (e.g. "Work With Us")'],
                ['Body Text',            'Short description inside the card'],
                ['Sub Heading / Button', 'Button text (e.g. "Commission a Similar Project") — links to Contact page'],
            ]
        },
        'projectdetails_team': {
            title: '📄 Project Details Page — Team Section Header',
            rows: [
                ['Section Label',    'Small teal eyebrow tag (e.g. "Project Team")'],
                ['Main Heading',     'Section heading (e.g. "Team Members")'],
                ['Highlighted Word', 'Link text for "All Experts →" (e.g. "All Experts") — links to Team page'],
            ]
        },
        'projectdetails_actions': {
            title: '📄 Project Details Page — Bottom Action Buttons',
            rows: [
                ['Main Heading',         'Primary button label (e.g. "Commission a Similar Project") — links to Contact page'],
                ['Sub Heading / Button', 'Secondary button label (e.g. "All Projects") — links back to Projects list'],
            ]
        },
        'events_page_header': {
            title: '📅 Events Page — Page Hero',
            rows: [
                ['Section Label', 'Small tag above heading (e.g. "EVENTS")'],
                ['Main Heading',  'Hero heading (e.g. "Events & Dialogues")'],
                ['Body Text',     'Hero paragraph text'],
            ]
        },
        'events_upcoming': {
            title: '📅 Events Page — Upcoming Events Section',
            rows: [
                ['Section Label', 'Small teal tag (e.g. "Upcoming Events")'],
                ['Main Heading',  'Section heading (e.g. "Open Events")'],
            ]
        },
        'events_past': {
            title: '📅 Events Page — Past Events Section',
            rows: [
                ['Section Label', 'Small teal tag (e.g. "Archive")'],
                ['Main Heading',  'Section heading (e.g. "Past Events")'],
            ]
        },
        'events_cta': {
            title: '📅 Events Page — Co-host CTA Section',
            rows: [
                ['Section Label',        'Small tag on the left panel (e.g. "Partner With Us")'],
                ['Main Heading',         'Left panel heading (e.g. "Interested in Co-hosting an Event?")'],
                ['Body Text',            'Left panel paragraph text'],
                ['Sub Heading / Button', 'Form title shown above the proposal form (e.g. "Submit an Event Proposal")'],
            ]
        },
        'about_us_who_we_are': {
            title: 'ℹ️ About Page — Who We Are',
            rows: [
                ['Section Label',        '"WHO WE ARE" — small teal tag'],
                ['Main Heading',         'Main heading (e.g. "Transforming Challenges into Strategic Opportunities")'],
                ['Sub Heading / Button', 'Button label (e.g. "Our Areas of Work")'],
                ['Body Text',            'Paragraph text — supports rich formatting (bold, lists, etc.)'],
                ['Main Image',           'Photo shown on the left side'],
            ]
        },
    };

    function showFieldGuide(slug) {
        const guide = fieldGuides[slug];
        if (!guide || !guideWrapper || !guideContent) return;
        let html = `<div class="fw-semibold mb-2"><i class="fas fa-lightbulb me-1"></i> ${guide.title} — Field Guide</div>`;
        html += '<table class="field-guide-table w-100">';
        guide.rows.forEach(function(row) {
            html += `<tr><td><i class="fas fa-arrow-right text-info me-1" style="font-size:11px;"></i>${row[0]}</td><td class="text-muted">→ ${row[1]}</td></tr>`;
        });
        html += '</table>';
        guideContent.innerHTML = html;
        guideWrapper.style.display = '';
    }

    function hideFieldGuide() {
        if (guideWrapper) guideWrapper.style.display = 'none';
    }

    /* ============================================================
       PRESET DATA
    ============================================================ */
    const presets = {
        'home_about_trace': {
            slug: 'home_about_trace', section: 'ABOUT GIET',
            heading: 'Transforming Challenges Into Strategic Opportunities',
            sub_heading: 'Learn About Us', design_word: 'Opportunities', type: 'About Section',
            description: 'GIET is a non-political, non-profit organization focused on governance reform, economic transformation, and evidence-based policy advocacy in Bangladesh.',
        },
        'home_about_trace_one': {
            slug: 'home_about_trace_one', section: 'HOME ABOUT ITEM',
            heading: 'Multi-Sector Expertise & Wide Reach',
            sub_heading: '', design_word: '', type: 'List Item',
            description: 'Deep knowledge across governance, economics, and digital development — backed by global networks and local expertise.',
        },
        'home_about_trace_two': {
            slug: 'home_about_trace_two', section: 'HOME ABOUT ITEM',
            heading: 'Evidence-Based Policy to Practice',
            sub_heading: '', design_word: '', type: 'List Item',
            description: 'Rigorous, scalable methodologies that translate research evidence into actionable and implementable policy reforms.',
        },
        'home_about_trace_three': {
            slug: 'home_about_trace_three', section: 'HOME ABOUT ITEM',
            heading: 'Institutional Reform & Innovation',
            sub_heading: '', design_word: '', type: 'List Item',
            description: 'Combining structured change management with innovative, context-driven solutions for lasting institutional impact.',
        },
        'home_focus_areas': {
            slug: 'home_focus_areas', section: 'Our Focus Areas',
            heading: 'Where We Direct Our Work',
            sub_heading: 'See All', design_word: 'See All Focus Areas', type: 'Section Header',
            description: '',
        },
        'home_mission': {
            slug: 'home_mission', section: 'Our Mission',
            heading: 'Evidence-based reform is not optional — it is the only path to governance that truly serves citizens.',
            sub_heading: 'Dr. Rafiqul Islam, Founding Director, GIET',
            design_word: 'Transparent Governance|Economic Competitiveness|Institutional Reform|Digital Transformation|Social Inclusion|Evidence-Based Policy',
            type: 'Mission Section',
            description: 'GIET is a non-political, non-profit organization dedicated to promoting transparent, accountable governance and sustainable economic transformation in Bangladesh. We perform in-depth research, encourage multi-stakeholder dialogue, and convert evidence into practical policy recommendations.',
        },
        'home_projects': {
            slug: 'home_projects', section: 'Our Projects',
            heading: 'Work That Creates Impact',
            sub_heading: 'View All Projects', design_word: '', type: 'Section Header',
            description: 'GIET delivers governance reform, policy advisory, digital transformation, and research projects across Bangladesh for governments, development institutions, and regulatory bodies.',
        },
        'home_partners': {
            slug: 'home_partners', section: '',
            heading: 'Our Partners',
            sub_heading: '', design_word: '', type: 'Partners Section',
            description: '',
        },
        'home_years_of_expertise': {
            slug: 'home_years_of_expertise', section: 'HOME BADGE',
            heading: '8+', sub_heading: '', design_word: '', type: 'Badge',
            description: 'Years of Expertise',
        },
        'work_key_focus_areas': {
            slug: 'work_key_focus_areas', section: 'WHAT WE DO',
            heading: 'Key Focus Areas',
            sub_heading: '', design_word: '', type: 'Section Header',
            description: '',
        },
        'services-page': {
            slug: 'services-page', section: 'WHAT WE DO',
            heading: 'Areas of Work', sub_heading: '', design_word: 'Areas of Work', type: 'Hero',
            description: 'GIET works across thematic areas spanning governance reform, economic transformation, digital development, social inclusion, and sustainable development — always grounded in evidence, always oriented toward measurable impact.',
        },
        'team-page': {
            slug: 'team-page', section: 'THE PEOPLE BEHIND THE WORK',
            heading: 'Experts who drive change.',
            sub_heading: '', design_word: 'drive change.', type: 'Hero',
            description: 'GIET brings together a permanent core team of researchers, policy specialists, and development practitioners — supported by a network of domain experts engaged on specific projects.',
        },
        'team-leadership': {
            slug: 'team-leadership', section: 'LEADERSHIP',
            heading: 'Managing Director', sub_heading: 'MD & CEO', design_word: 'Director', type: 'Section',
            description: "Leading GIET's vision of practical, high-impact policy research and governance reform.",
        },
        'team-core': {
            slug: 'team-core', section: 'CORE TEAM',
            heading: 'Our in-house specialists',
            sub_heading: '', design_word: 'in-house specialists', type: 'Section',
            description: 'Full-time GIET staff with deep expertise across our thematic areas — the engine that runs every research project.',
        },
        'team-experts': {
            slug: 'team-experts', section: 'OUR EXPERTS',
            heading: 'The right expert, for the right problem',
            sub_heading: '', design_word: 'for the right problem', type: 'Section',
            description: 'GIET works with a network of senior domain experts — academics, former government officials, international specialists — brought in when a project demands specific depth.',
        },
        'insights-page': {
            slug: 'insights-page', section: 'KNOWLEDGE & RESEARCH',
            heading: 'Ideas that inform policy.',
            sub_heading: '', design_word: 'inform policy.', type: 'Hero',
            description: 'Policy briefs, research publications, expert commentary, and video content — GIET\'s full body of published work.',
        },
        'projects-page': {
            slug: 'projects-page', section: 'OUR PROJECTS',
            heading: 'Work that changes systems.',
            sub_heading: '', design_word: 'changes systems.', type: 'Hero',
            description: 'GIET has delivered governance reform, policy advisory, digital transformation, and capacity-building projects across Bangladesh — for governments, development banks, and regulatory bodies.',
        },
        'career-heading': {
            slug: 'career-heading', section: 'CAREER AT GIET',
            heading: 'Join Our Growing Team',
            sub_heading: 'View Open Positions', design_word: 'Team', type: 'Hero',
            description: 'We are looking for curious, driven professionals to help us reshape governance policy, regulatory reform, and economic development in Bangladesh.',
        },
        'work-with-us': {
            slug: 'work-with-us', section: 'WORK WITH US',
            heading: 'Have a project in mind?',
            sub_heading: 'Get in Touch', design_word: 'that lasts.', type: 'CTA',
            description: '',
        },
        'contact-page': {
            slug: 'contact-page', section: 'Contact Us',
            heading: 'Get In Touch',
            sub_heading: '', design_word: '', type: 'Hero',
            description: "Whether you're interested in collaborating on a project, commissioning research, attending an event, or just learning more about GIET — we'd love to hear from you.",
        },
        'contact-faq-section': {
            slug: 'contact-faq-section', section: 'FAQs',
            heading: 'Frequently Asked Questions',
            sub_heading: '', design_word: '', type: 'FAQ Section',
            description: "Can't find the answer you're looking for? Send us a message using the form above.",
        },
        'about_us_header': {
            slug: 'about_us_header', section: 'ABOUT US',
            heading: 'Empowering Change through Evidence and Action',
            sub_heading: '', design_word: 'Evidence', type: 'Hero Section',
            description: 'We deliver evidence-based policy recommendations and advocacy that help governments design actionable, impactful reforms from the ground up.',
        },
        'about_trace': {
            slug: 'about_trace', section: 'ABOUT GIET',
            heading: 'A foundation built on research, strategy, and lasting impact.',
            sub_heading: '', design_word: 'research, strategy,', type: 'About Section',
            description: '',
        },
        'about_us_who_we_are': {
            slug: 'about_us_who_we_are', section: 'ABOUT US DETAILS',
            heading: 'Who We Are', sub_heading: '', design_word: '', type: 'Detail Item',
            description: 'We work at the intersection of research, innovation, and implementation — empowering institutions with data-driven insights and practical policy solutions.',
        },
        'about_us_our_mission': {
            slug: 'about_us_our_mission', section: 'Our Institution',
            heading: 'Mission, Vision & Goals',
            sub_heading: '', design_word: '', type: 'Section Header',
            description: '',
        },
        'about_us_mission': {
            slug: 'about_us_mission', section: 'Mission',
            heading: '',
            sub_heading: '', design_word: '', type: 'MVG Card',
            description: 'To advance transparent, accountable governance and sustainable economic transformation through rigorous research, policy advocacy, and implementation support.',
        },
        'about_us_vision': {
            slug: 'about_us_vision', section: 'Vision',
            heading: '',
            sub_heading: '', design_word: '', type: 'MVG Card',
            description: 'A Bangladesh where institutions are transparent, economies are competitive, and citizens are empowered through evidence-based policy and good governance.',
        },
        'about_us_goals': {
            slug: 'about_us_goals', section: 'Goals',
            heading: '',
            sub_heading: '', design_word: '', type: 'MVG Card',
            description: 'To produce actionable research, influence policy, build institutional capacity, and foster partnerships that drive lasting governance and economic reform in Bangladesh.',
        },
        'about_us_we_make_trace_different': {
            slug: 'about_us_we_make_trace_different', section: 'Our Approach',
            heading: 'What Sets GIET Apart',
            sub_heading: '', design_word: '', type: 'Section Header',
            description: '',
        },
        'about_us_insight': {
            slug: 'about_us_insight', section: 'Approach Card',
            heading: 'Evidence-Based Research',
            sub_heading: '', design_word: '', type: 'Approach Card',
            description: 'We integrate rigorous field research with institutional knowledge to produce policy recommendations grounded in real-world evidence and measurable data.',
        },
        'about_us_strategy': {
            slug: 'about_us_strategy', section: 'Approach Card',
            heading: 'Multi-Stakeholder Dialogue',
            sub_heading: '', design_word: '', type: 'Approach Card',
            description: 'We convene governments, civil society, development partners, and the private sector to build consensus and co-design solutions that reflect diverse perspectives.',
        },
        'about_us_impact': {
            slug: 'about_us_impact', section: 'Approach Card',
            heading: 'Integrated Implementation Support',
            sub_heading: '', design_word: '', type: 'Approach Card',
            description: 'We go beyond advisory — providing on-the-ground implementation support, monitoring, and adaptive management to ensure reforms deliver tangible results.',
        },
        'about_us_how_we_work': {
            slug: 'about_us_how_we_work', section: 'Our Values',
            heading: 'The Principles That Guide Our Work',
            sub_heading: '', design_word: '', type: 'Section Header',
            description: '',
        },
        'about_us_industry_wide_network': {
            slug: 'about_us_industry_wide_network', section: 'Value',
            heading: 'Integrity',
            sub_heading: '', design_word: '', type: 'Values Card',
            description: 'We uphold the highest standards of professional and intellectual honesty. Our research processes, partnerships, and governance practices reflect a commitment to transparency and accountability.',
        },
        'about_us_sustainable_approach': {
            slug: 'about_us_sustainable_approach', section: 'Value',
            heading: 'Independence',
            sub_heading: '', design_word: '', type: 'Values Card',
            description: 'Our analysis is free from political influence, donor pressure, or institutional bias. We are structured to protect the independence of our research conclusions at all times.',
        },
        'about_us_tailored_innovation': {
            slug: 'about_us_tailored_innovation', section: 'Value',
            heading: 'Inclusion',
            sub_heading: '', design_word: '', type: 'Values Card',
            description: 'We believe that sustainable reform must include the voices of women, youth, persons with disabilities, and marginalized communities.',
        },
        'about_us_end_to_end_integrated_solutions': {
            slug: 'about_us_end_to_end_integrated_solutions', section: 'Value',
            heading: 'Impact',
            sub_heading: '', design_word: '', type: 'Values Card',
            description: 'We define success not by publications produced or events held, but by measurable changes in policy, institutional practice, and the lives of citizens we ultimately serve.',
        },
        'about_story_template': {
            slug: 'about_story_1', section: '2021',
            heading: 'Foundation Established',
            sub_heading: '', design_word: '', type: 'Story Item',
            description: 'GIET was incorporated in Dhaka as a non-profit, non-governmental organization by founding members drawn from government, academia, and the development sector.',
        },
        'about_us_partners': {
            slug: 'about_us_partners', section: 'PARTNERS',
            heading: 'Our Partners',
            sub_heading: '', design_word: 'Partners', type: 'Partners Section',
            description: 'We work with governments, multilateral development organisations, regulatory bodies, and private sector leaders across the region — building long-term partnerships grounded in trust and results.',
        },
        'projects_portfolio': {
            slug: 'projects_portfolio', section: 'Project Portfolio',
            heading: 'Work That Creates Impact',
            sub_heading: '', design_word: '', type: 'Section Header',
            description: '',
        },
        'projects_impact': {
            slug: 'projects_impact', section: 'Our Impact',
            heading: 'Measurable Outcomes Across Our Portfolio',
            sub_heading: '', design_word: '', type: 'Section Header',
            description: '',
        },
        'projects_stat_1': {
            slug: 'projects_stat_1', section: 'Projects Delivered',
            heading: '24+',
            sub_heading: '', design_word: '', type: 'Stat Card',
            description: '',
        },
        'projects_stat_2': {
            slug: 'projects_stat_2', section: 'Officials Trained',
            heading: '6K+',
            sub_heading: '', design_word: '', type: 'Stat Card',
            description: '',
        },
        'projects_stat_3': {
            slug: 'projects_stat_3', section: 'Policy Recommendations Adopted',
            heading: '38',
            sub_heading: '', design_word: '', type: 'Stat Card',
            description: '',
        },
        'projects_stat_4': {
            slug: 'projects_stat_4', section: 'Partner Organizations',
            heading: '12+',
            sub_heading: '', design_word: '', type: 'Stat Card',
            description: '',
        },
        'projects_work_with_us': {
            slug: 'projects_work_with_us', section: 'Collaborate',
            heading: 'Ready to Commission a Project?',
            sub_heading: 'Get In Touch', design_word: 'About GIET', type: 'CTA',
            description: 'GIET works with governments, international development organisations, NGOs, and private sector partners. We welcome project proposals and co-design partnerships.',
        },
        'project-location-section': {
            slug: 'project-location-section', section: 'PROJECT DETAILS',
            heading: 'Project Locations', sub_heading: '', design_word: '', type: 'Section',
            description: 'Locations where this project has been implemented or delivered.',
        },
        'project-phase-section': {
            slug: 'project-phase-section', section: 'PROJECT DETAILS',
            heading: 'Project Phases', sub_heading: '', design_word: '', type: 'Section',
            description: 'Phase-wise implementation milestones and downloadable documents.',
        },
        'project-outcome-section': {
            slug: 'project-outcome-section', section: 'PROJECT DETAILS',
            heading: 'Key Outcomes', sub_heading: '', design_word: '', type: 'Section',
            description: 'Measurable results and outcomes delivered through this project.',
        },
        'projectdetails_sidebar': {
            slug: 'projectdetails_sidebar', section: 'Work With Us',
            heading: '', sub_heading: 'Commission a Similar Project', design_word: '', type: 'Sidebar Widget',
            description: 'Get in touch and our team will walk you through our solutions.',
        },
        'projectdetails_team': {
            slug: 'projectdetails_team', section: 'Project Team',
            heading: 'Team Members', sub_heading: '', design_word: 'All Experts', type: 'Section Header',
            description: '',
        },
        'projectdetails_actions': {
            slug: 'projectdetails_actions', section: '',
            heading: 'Commission a Similar Project', sub_heading: 'All Projects', design_word: '', type: 'CTA',
            description: '',
        },
        'events_page_header': {
            slug: 'events_page_header', section: 'EVENTS',
            heading: 'Events & Dialogues',
            sub_heading: '', design_word: '', type: 'Hero',
            description: 'GIET convenes policymakers, development professionals, and civil society through roundtables, policy dialogues, training workshops, and public conferences.',
        },
        'events_upcoming': {
            slug: 'events_upcoming', section: 'Upcoming Events',
            heading: 'Open Events',
            sub_heading: '', design_word: '', type: 'Section Header',
            description: '',
        },
        'events_past': {
            slug: 'events_past', section: 'Archive',
            heading: 'Past Events',
            sub_heading: '', design_word: '', type: 'Section Header',
            description: '',
        },
        'events_cta': {
            slug: 'events_cta', section: 'Partner With Us',
            heading: 'Interested in Co-hosting an Event?',
            sub_heading: 'Submit an Event Proposal', design_word: '', type: 'CTA',
            description: 'GIET welcomes co-hosting proposals from government agencies, development partners, universities, and civil society organizations. We manage logistics, speakers, and documentation.',
        },
    };

    /* ============================================================
       APPLY PRESET
    ============================================================ */
    function applyPreset(key) {
        const p = presets[key];
        if (!p) return;
        const isEditing = slugField && slugField.readOnly;
        if (!isEditing) {
            if (slugField)       slugField.value    = p.slug;
            if (sectionField)    sectionField.value = p.section;
        }
        if (headingField)    headingField.value    = p.heading;
        if (subHeadingField) subHeadingField.value = p.sub_heading;
        if (designWordField) designWordField.value = p.design_word;
        if (typeField)       typeField.value       = p.type;
        setDescriptionValue(p.description);
        showFieldGuide(p.slug);
    }

    /* ============================================================
       PRESET BUTTONS
    ============================================================ */
    document.querySelectorAll('.preset-btn[data-preset]').forEach(function (btn) {
        btn.addEventListener('click', function () {
            document.querySelectorAll('.preset-btn').forEach(b => b.classList.remove('active'));
            btn.classList.add('active');
            applyPreset(btn.dataset.preset);
        });
    });

    /* ============================================================
       AUTO-SHOW GUIDE ON PAGE LOAD (edit mode)
    ============================================================ */
    if (slugField && slugField.value) {
        showFieldGuide(slugField.value);
    }

    /* ============================================================
       COLLAPSE CHEVRON SYNC
    ============================================================ */
    document.querySelectorAll('.preset-group-label').forEach(function (label) {
        const targetId = label.getAttribute('data-bs-target');
        const target   = document.querySelector(targetId);
        if (!target) return;
        target.addEventListener('show.bs.collapse',  () => label.setAttribute('aria-expanded', 'true'));
        target.addEventListener('hide.bs.collapse',  () => label.setAttribute('aria-expanded', 'false'));
    });

});
</script>
@endpush
