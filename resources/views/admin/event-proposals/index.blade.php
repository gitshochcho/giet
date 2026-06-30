@extends('layouts.app')

@section('content')
<div class="app-content-header">
    <div class="container-fluid">
        <div class="row align-items-center">
            <div class="col-sm-6">
                <h3 class="mb-0">Event Proposals</h3>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-end mb-0">
                    <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">Dashboard</a></li>
                    <li class="breadcrumb-item active">Event Proposals</li>
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
                <h3 class="card-title mb-0">All Proposals ({{ $proposals->total() }})</h3>
            </div>
            <div class="card-body table-responsive p-0">
                <table class="table table-striped align-middle mb-0">
                    <thead class="table-dark">
                        <tr>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Organisation</th>
                            <th>Status</th>
                            <th>Submitted</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($proposals as $proposal)
                        <tr class="{{ $proposal->is_read ? '' : 'fw-bold' }}">
                            <td>{{ $proposal->name }}</td>
                            <td>{{ $proposal->email }}</td>
                            <td>{{ $proposal->organisation ?? '—' }}</td>
                            <td>
                                <span class="badge bg-{{ $proposal->is_read ? 'secondary' : 'warning text-dark' }}">
                                    {{ $proposal->is_read ? 'Read' : 'New' }}
                                </span>
                            </td>
                            <td>{{ $proposal->created_at->format('d M Y, H:i') }}</td>
                            <td>
                                <div class="btn-group btn-group-sm">
                                    <a href="{{ route('admin.event-proposals.show', $proposal) }}" class="btn btn-info">
                                        <i class="bi bi-eye"></i> View
                                    </a>
                                    <form action="{{ route('admin.event-proposals.destroy', $proposal) }}" method="POST" style="display:inline;" onsubmit="return confirm('Delete this proposal?')">
                                        @csrf @method('DELETE')
                                        <button type="submit" class="btn btn-danger"><i class="bi bi-trash"></i> Delete</button>
                                    </form>
                                </div>
                            </td>
                        </tr>
                        @empty
                        <tr><td colspan="6" class="text-center text-muted py-4">No proposals received yet.</td></tr>
                        @endforelse
                    </tbody>
                </table>
            </div>
            @if($proposals->hasPages())
            <div class="card-footer">{{ $proposals->links() }}</div>
            @endif
        </div>
    </div>
</div>
@endsection
