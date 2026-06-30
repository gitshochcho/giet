@extends('layouts.app')

@section('content')

    <div class="app-content-header">
        <div class="container-fluid">
            <div class="row align-items-center">
                <div class="col-sm-6">
                    <h3 class="mb-0">Events Manager</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-end mb-0">
                        <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Events Manager</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="app-content">
        <div class="container-fluid">

            @if(session('message'))
                <div class="alert alert-{{ session('alert-type', 'success') }} alert-dismissible fade show" role="alert">
                    {{ session('message') }}
                    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                </div>
            @endif

            <div class="card card-outline card-primary">
                <div class="card-header">
                    <div class="d-flex justify-content-between align-items-center gap-2">
                        <h3 class="card-title mb-0">All Events ({{ $events->count() }})</h3>
                        <div class="d-flex gap-2 align-items-center">
                            <input type="text" id="eventSearch" class="form-control form-control-sm" placeholder="Search by title, type, venue..." style="width:260px;">
                            <a href="{{ route('admin.events.create') }}" class="btn btn-primary btn-sm">
                                <i class="fas fa-plus"></i> Create Event
                            </a>
                        </div>
                    </div>
                </div>
                <div class="card-body table-responsive p-0">
                    <table class="table table-striped align-middle mb-0" id="eventTable">
                        <thead class="table-dark">
                            <tr>
                                <th>Title</th>
                                <th>Type</th>
                                <th>Format</th>
                                <th>Date</th>
                                <th>Venue</th>
                                <th>Status</th>
                                <th>Past?</th>
                                <th>Speakers</th>
                                <th>Order</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($events as $event)
                                <tr>
                                    <td data-search="{{ strtolower($event->title) }}">
                                        <div class="d-flex align-items-center gap-2">
                                            @if($event->heroImageUrl())
                                                <img src="{{ $event->heroImageUrl() }}" alt="" style="width:44px;height:30px;object-fit:cover;border-radius:4px;">
                                            @endif
                                            <span>{{ $event->title }}</span>
                                        </div>
                                    </td>
                                    <td data-search="{{ strtolower($event->event_type) }}">
                                        <span class="badge text-bg-secondary">{{ $event->event_type }}</span>
                                    </td>
                                    <td>
                                        @php
                                            $fmtClass = match($event->event_format) {
                                                'Online'  => 'text-bg-info',
                                                'Hybrid'  => 'text-bg-warning',
                                                default   => 'text-bg-primary',
                                            };
                                        @endphp
                                        <span class="badge {{ $fmtClass }}">{{ $event->event_format }}</span>
                                    </td>
                                    <td>{{ $event->event_date->format('d M Y') }}</td>
                                    <td data-search="{{ strtolower($event->venue ?? '') }}">{{ $event->venue ?: '-' }}</td>
                                    <td>
                                        @php
                                            $regClass = match($event->registration_status) {
                                                'Open'         => 'text-bg-success',
                                                'Closed'       => 'text-bg-danger',
                                                'Full'         => 'text-bg-warning',
                                                'Coming Soon'  => 'text-bg-secondary',
                                                default        => 'text-bg-secondary',
                                            };
                                        @endphp
                                        <span class="badge {{ $regClass }}">{{ $event->registration_status }}</span>
                                    </td>
                                    <td>
                                        @if($event->is_past)
                                            <span class="badge text-bg-dark">Past</span>
                                        @else
                                            <span class="badge text-bg-light border">Upcoming</span>
                                        @endif
                                    </td>
                                    <td>{{ $event->speakers->count() }}</td>
                                    <td>{{ $event->sort_order }}</td>
                                    <td>
                                        <div class="btn-group btn-group-sm" role="group">
                                            <a href="{{ route('admin.events.edit', $event) }}" class="btn btn-warning" title="Edit">
                                                <i class="fas fa-edit"></i> Edit
                                            </a>
                                            <form action="{{ route('admin.events.destroy', $event) }}" method="POST" style="display:inline;"
                                                  onsubmit="return confirm('Delete this event?')">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" class="btn btn-danger btn-sm" title="Delete">
                                                    <i class="fas fa-trash"></i> Delete
                                                </button>
                                            </form>
                                        </div>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="10" class="text-center py-4 text-muted">No events found. <a href="{{ route('admin.events.create') }}">Create one</a>.</td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>

        </div>
    </div>

@endsection

@push('scripts')
<script>
document.getElementById('eventSearch')?.addEventListener('input', function () {
    const q = this.value.toLowerCase();
    document.querySelectorAll('#eventTable tbody tr').forEach(tr => {
        const text = [...tr.querySelectorAll('[data-search]')].map(el => el.dataset.search).join(' ')
            + tr.innerText.toLowerCase();
        tr.style.display = text.includes(q) ? '' : 'none';
    });
});
</script>
@endpush
