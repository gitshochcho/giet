@extends('layouts.app')

@section('content')
<div class="app-content-header">
    <div class="container-fluid">
        <div class="row align-items-center">
            <div class="col-sm-6">
                <h3 class="mb-0">Research Ideas</h3>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-end mb-0">
                    <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">Dashboard</a></li>
                    <li class="breadcrumb-item active">Research Ideas</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="app-content">
    <div class="container-fluid">
        @if(session('success'))
        <div class="alert alert-success alert-dismissible fade show">
            {{ session('success') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
        @endif

        <div class="card card-outline card-primary">
            <div class="card-header">
                <h3 class="card-title mb-0">All Submissions ({{ $ideas->total() }})</h3>
            </div>
            <div class="card-body table-responsive p-0">
                <table class="table table-striped align-middle mb-0">
                    <thead class="table-dark">
                        <tr>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Organisation</th>
                            <th>Attachment</th>
                            <th>Status</th>
                            <th>Submitted</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($ideas as $idea)
                        <tr class="{{ $idea->is_read ? '' : 'fw-bold' }}">
                            <td>{{ $idea->name }}</td>
                            <td>{{ $idea->email }}</td>
                            <td>{{ $idea->organisation ?? '—' }}</td>
                            <td>
                                @if($idea->attachmentUrl())
                                <a href="{{ $idea->attachmentUrl() }}" target="_blank" class="btn btn-sm btn-outline-secondary">
                                    <i class="bi bi-paperclip"></i> {{ $idea->attachmentName() }}
                                </a>
                                @else
                                <span class="text-muted">—</span>
                                @endif
                            </td>
                            <td>
                                <span class="badge bg-{{ $idea->is_read ? 'secondary' : 'warning text-dark' }}">
                                    {{ $idea->is_read ? 'Read' : 'New' }}
                                </span>
                            </td>
                            <td>{{ $idea->created_at->format('d M Y, H:i') }}</td>
                            <td>
                                <div class="btn-group btn-group-sm">
                                    <a href="{{ route('admin.research-ideas.show', $idea) }}" class="btn btn-info">
                                        <i class="bi bi-eye"></i> View
                                    </a>
                                    <form action="{{ route('admin.research-ideas.destroy', $idea) }}" method="POST" style="display:inline;" onsubmit="return confirm('Delete this submission?')">
                                        @csrf @method('DELETE')
                                        <button type="submit" class="btn btn-danger"><i class="bi bi-trash"></i> Delete</button>
                                    </form>
                                </div>
                            </td>
                        </tr>
                        @empty
                        <tr><td colspan="7" class="text-center text-muted py-4">No research ideas submitted yet.</td></tr>
                        @endforelse
                    </tbody>
                </table>
            </div>
            @if($ideas->hasPages())
            <div class="card-footer">{{ $ideas->links() }}</div>
            @endif
        </div>
    </div>
</div>
@endsection
