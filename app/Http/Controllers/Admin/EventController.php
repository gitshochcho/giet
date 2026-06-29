<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Event;
use App\Models\EventSpeaker;
use App\Models\EventPartner;
use App\Models\Team;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class EventController extends Controller
{
    public function index()
    {
        $events = Event::with(['speakers', 'eventPartners', 'media'])
            ->orderBy('sort_order')
            ->orderByDesc('event_date')
            ->get();

        return view('admin.event.index', compact('events'));
    }

    public function create()
    {
        $teamMembers = Team::orderBy('first_name')->get(['id', 'first_name', 'last_name', 'designation']);
        return view('admin.event.create', compact('teamMembers'));
    }

    public function store(Request $request): RedirectResponse
    {
        $validated = $request->validate([
            'title'                  => ['required', 'string', 'max:255'],
            'event_type'             => ['required', 'string', 'max:100'],
            'event_format'           => ['required', 'string', 'max:100'],
            'event_date'             => ['required', 'date'],
            'event_time'             => ['nullable', 'string', 'max:100'],
            'event_end_date'         => ['nullable', 'date', 'after_or_equal:event_date'],
            'venue'                  => ['nullable', 'string', 'max:255'],
            'venue_address'          => ['nullable', 'string', 'max:255'],
            'registration_status'    => ['required', 'string', 'max:100'],
            'registration_deadline'  => ['nullable', 'date'],
            'registration_fee'       => ['nullable', 'string', 'max:100'],
            'registration_capacity'  => ['nullable', 'integer', 'min:0'],
            'organizer'              => ['nullable', 'string', 'max:255'],
            'co_host'                => ['nullable', 'string', 'max:255'],
            'about'                  => ['nullable', 'string'],
            'who_should_attend'      => ['nullable', 'string'],
            'enquiry_email'          => ['nullable', 'email', 'max:255'],
            'participant_count'      => ['nullable', 'integer', 'min:0'],
            'is_past'                => ['nullable', 'boolean'],
            'sort_order'             => ['nullable', 'integer', 'min:0'],
            'hero_image'             => ['nullable', 'image', 'mimes:jpg,jpeg,png,webp,svg', 'max:4096'],
            'speakers'               => ['nullable', 'array'],
            'speakers.*.id'          => ['nullable', 'integer'],
            'speakers.*.team_id'     => ['nullable', 'integer', 'exists:teams,id'],
            'speakers.*.name'        => ['nullable', 'string', 'max:255'],
            'speakers.*.designation' => ['nullable', 'string', 'max:255'],
            'speakers.*.session_role'=> ['nullable', 'string', 'max:255'],
            'speakers.*.speaker_type'=> ['nullable', 'string', 'max:100'],
            'speakers.*.image'       => ['nullable', 'image', 'mimes:jpg,jpeg,png,webp', 'max:2048'],
            'event_partners'               => ['nullable', 'array'],
            'event_partners.*.id'          => ['nullable', 'integer'],
            'event_partners.*.name'        => ['nullable', 'string', 'max:255'],
            'event_partners.*.image'       => ['nullable', 'image', 'mimes:jpg,jpeg,png,webp,svg', 'max:2048'],
        ]);

        $event = Event::create([
            'title'                 => $validated['title'],
            'event_type'            => $validated['event_type'],
            'event_format'          => $validated['event_format'],
            'event_date'            => $validated['event_date'],
            'event_time'            => $validated['event_time'] ?? null,
            'event_end_date'        => $validated['event_end_date'] ?? null,
            'venue'                 => $validated['venue'] ?? null,
            'venue_address'         => $validated['venue_address'] ?? null,
            'registration_status'   => $validated['registration_status'],
            'registration_deadline' => $validated['registration_deadline'] ?? null,
            'registration_fee'      => $validated['registration_fee'] ?? null,
            'registration_capacity' => $validated['registration_capacity'] ?? null,
            'organizer'             => $validated['organizer'] ?? null,
            'co_host'               => $validated['co_host'] ?? null,
            'about'                 => $validated['about'] ?? null,
            'who_should_attend'     => $validated['who_should_attend'] ?? null,
            'enquiry_email'         => $validated['enquiry_email'] ?? null,
            'participant_count'     => $validated['participant_count'] ?? null,
            'is_past'               => $request->boolean('is_past'),
            'sort_order'            => $validated['sort_order'] ?? 0,
        ]);

        $this->syncHeroImage($event, $request->file('hero_image'));
        $this->syncSpeakers($event, $validated['speakers'] ?? [], $request->file('speakers', []));
        $this->syncEventPartners($event, $validated['event_partners'] ?? [], $request->file('event_partners', []));

        return redirect()
            ->route('admin.events.index')
            ->with(['message' => 'Event created successfully', 'alert-type' => 'success']);
    }

    public function edit(Event $event)
    {
        $event->load(['speakers', 'eventPartners', 'media']);
        $teamMembers = Team::orderBy('first_name')->get(['id', 'first_name', 'last_name', 'designation']);
        return view('admin.event.edit', compact('event', 'teamMembers'));
    }

    public function update(Request $request, Event $event): RedirectResponse
    {
        $validated = $request->validate([
            'title'                  => ['required', 'string', 'max:255'],
            'event_type'             => ['required', 'string', 'max:100'],
            'event_format'           => ['required', 'string', 'max:100'],
            'event_date'             => ['required', 'date'],
            'event_time'             => ['nullable', 'string', 'max:100'],
            'event_end_date'         => ['nullable', 'date', 'after_or_equal:event_date'],
            'venue'                  => ['nullable', 'string', 'max:255'],
            'venue_address'          => ['nullable', 'string', 'max:255'],
            'registration_status'    => ['required', 'string', 'max:100'],
            'registration_deadline'  => ['nullable', 'date'],
            'registration_fee'       => ['nullable', 'string', 'max:100'],
            'registration_capacity'  => ['nullable', 'integer', 'min:0'],
            'organizer'              => ['nullable', 'string', 'max:255'],
            'co_host'                => ['nullable', 'string', 'max:255'],
            'about'                  => ['nullable', 'string'],
            'who_should_attend'      => ['nullable', 'string'],
            'enquiry_email'          => ['nullable', 'email', 'max:255'],
            'participant_count'      => ['nullable', 'integer', 'min:0'],
            'is_past'                => ['nullable', 'boolean'],
            'sort_order'             => ['nullable', 'integer', 'min:0'],
            'hero_image'             => ['nullable', 'image', 'mimes:jpg,jpeg,png,webp,svg', 'max:4096'],
            'speakers'               => ['nullable', 'array'],
            'speakers.*.id'          => ['nullable', 'integer'],
            'speakers.*.team_id'     => ['nullable', 'integer', 'exists:teams,id'],
            'speakers.*.name'        => ['nullable', 'string', 'max:255'],
            'speakers.*.designation' => ['nullable', 'string', 'max:255'],
            'speakers.*.session_role'=> ['nullable', 'string', 'max:255'],
            'speakers.*.speaker_type'=> ['nullable', 'string', 'max:100'],
            'speakers.*.image'       => ['nullable', 'image', 'mimes:jpg,jpeg,png,webp', 'max:2048'],
            'event_partners'               => ['nullable', 'array'],
            'event_partners.*.id'          => ['nullable', 'integer'],
            'event_partners.*.name'        => ['nullable', 'string', 'max:255'],
            'event_partners.*.image'       => ['nullable', 'image', 'mimes:jpg,jpeg,png,webp,svg', 'max:2048'],
        ]);

        $event->fill([
            'title'                 => $validated['title'],
            'event_type'            => $validated['event_type'],
            'event_format'          => $validated['event_format'],
            'event_date'            => $validated['event_date'],
            'event_time'            => $validated['event_time'] ?? null,
            'event_end_date'        => $validated['event_end_date'] ?? null,
            'venue'                 => $validated['venue'] ?? null,
            'venue_address'         => $validated['venue_address'] ?? null,
            'registration_status'   => $validated['registration_status'],
            'registration_deadline' => $validated['registration_deadline'] ?? null,
            'registration_fee'      => $validated['registration_fee'] ?? null,
            'registration_capacity' => $validated['registration_capacity'] ?? null,
            'organizer'             => $validated['organizer'] ?? null,
            'co_host'               => $validated['co_host'] ?? null,
            'about'                 => $validated['about'] ?? null,
            'who_should_attend'     => $validated['who_should_attend'] ?? null,
            'enquiry_email'         => $validated['enquiry_email'] ?? null,
            'participant_count'     => $validated['participant_count'] ?? null,
            'is_past'               => $request->boolean('is_past'),
            'sort_order'            => $validated['sort_order'] ?? 0,
        ]);
        $event->save();

        $this->syncHeroImage($event, $request->file('hero_image'));
        $this->syncSpeakers($event, $validated['speakers'] ?? [], $request->file('speakers', []));
        $this->syncEventPartners($event, $validated['event_partners'] ?? [], $request->file('event_partners', []));

        return redirect()
            ->route('admin.events.index')
            ->with(['message' => 'Event updated successfully', 'alert-type' => 'success']);
    }

    public function destroy(Event $event): RedirectResponse
    {
        $event->load(['speakers', 'eventPartners', 'media']);

        $event->speakers->each(function (EventSpeaker $speaker) {
            if ($speaker->image) {
                Storage::disk('public')->delete($speaker->image);
            }
            $speaker->delete();
        });

        $event->eventPartners->each(function (EventPartner $partner) {
            if ($partner->image) {
                Storage::disk('public')->delete($partner->image);
            }
            $partner->delete();
        });

        $event->clearMediaCollection('hero');
        $event->delete();

        return redirect()
            ->route('admin.events.index')
            ->with(['message' => 'Event deleted successfully', 'alert-type' => 'success']);
    }

    private function syncHeroImage(Event $event, $file): void
    {
        if (! $file) {
            return;
        }
        $event->clearMediaCollection('hero');
        $event->addMedia($file)->toMediaCollection('hero');
    }

    private function syncSpeakers(Event $event, array $speakers, array $speakerFiles): void
    {
        $keptIds = [];

        foreach (array_values($speakers) as $index => $item) {
            $name       = trim($item['name'] ?? '');
            $speakerId  = ! empty($item['id']) ? (int) $item['id'] : null;
            $imageFile  = $speakerFiles[$index]['image'] ?? null;

            if ($name === '' && ! $imageFile && $speakerId === null) {
                continue;
            }

            $record = $speakerId
                ? EventSpeaker::firstOrNew(['id' => $speakerId, 'event_id' => $event->id])
                : new EventSpeaker(['event_id' => $event->id]);

            $teamId = ! empty($item['team_id']) ? (int) $item['team_id'] : null;
            if ($teamId) {
                $teamMember = Team::find($teamId);
            }

            $record->event_id     = $event->id;
            $record->team_id      = $teamId;
            $record->name         = ($teamId && isset($teamMember)) ? $teamMember->fullName() : $name;
            $record->designation  = ($teamId && isset($teamMember) && empty($item['designation'])) ? $teamMember->designation : ($item['designation'] ?? null);
            $record->session_role = $item['session_role'] ?? null;
            $record->speaker_type = $item['speaker_type'] ?? 'External';
            $record->sort_order   = $index;

            if ($imageFile) {
                if ($record->image) {
                    Storage::disk('public')->delete($record->image);
                }
                $record->image = $imageFile->store('events/speakers', 'public');
            }

            $record->save();
            $keptIds[] = $record->id;
        }

        $event->speakers()
            ->whereNotIn('id', $keptIds)
            ->get()
            ->each(function (EventSpeaker $speaker) {
                if ($speaker->image) {
                    Storage::disk('public')->delete($speaker->image);
                }
                $speaker->delete();
            });
    }

    private function syncEventPartners(Event $event, array $partners, array $partnerFiles): void
    {
        $keptIds = [];

        foreach (array_values($partners) as $index => $item) {
            $name      = trim($item['name'] ?? '');
            $partnerId = ! empty($item['id']) ? (int) $item['id'] : null;
            $imageFile = $partnerFiles[$index]['image'] ?? null;

            if ($name === '' && ! $imageFile && $partnerId === null) {
                continue;
            }

            $record = $partnerId
                ? EventPartner::firstOrNew(['id' => $partnerId, 'event_id' => $event->id])
                : new EventPartner(['event_id' => $event->id]);

            $record->event_id   = $event->id;
            $record->name       = $name;
            $record->sort_order = $index;

            if ($imageFile) {
                if ($record->image) {
                    Storage::disk('public')->delete($record->image);
                }
                $record->image = $imageFile->store('events/partners', 'public');
            }

            $record->save();
            $keptIds[] = $record->id;
        }

        $event->eventPartners()
            ->whereNotIn('id', $keptIds)
            ->get()
            ->each(function (EventPartner $partner) {
                if ($partner->image) {
                    Storage::disk('public')->delete($partner->image);
                }
                $partner->delete();
            });
    }
}
