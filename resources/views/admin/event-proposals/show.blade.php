@extends('layouts.app')

@section('content')
<div class="app-content-header">
    <div class="container-fluid">
        <div class="row align-items-center">
            <div class="col-sm-6">
                <h3 class="mb-0">Event Proposal</h3>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-end mb-0">
                    <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">Dashboard</a></li>
                    <li class="breadcrumb-item"><a href="{{ route('admin.event-proposals.index') }}">Event Proposals</a></li>
                    <li class="breadcrumb-item active">View</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="app-content">
    <div class="container-fluid">
        <div class="row g-4">
            <div class="col-12 col-xl-7">
                <div class="card card-outline card-primary">
                    <div class="card-header d-flex justify-content-between align-items-center">
                        <h3 class="card-title mb-0">Proposal Details</h3>
                        <span class="badge bg-{{ $eventProposal->is_read ? 'secondary' : 'warning text-dark' }}">
                            {{ $eventProposal->is_read ? 'Read' : 'New' }}
                        </span>
                    </div>
                    <div class="card-body">
                        <table class="table table-bordered">
                            <tr>
                                <th style="width:160px;">Name</th>
                                <td>{{ $eventProposal->name }}</td>
                            </tr>
                            <tr>
                                <th>Email</th>
                                <td><a href="mailto:{{ $eventProposal->email }}">{{ $eventProposal->email }}</a></td>
                            </tr>
                            <tr>
                                <th>Organisation</th>
                                <td>{{ $eventProposal->organisation ?? '—' }}</td>
                            </tr>
                            <tr>
                                <th>Submitted</th>
                                <td>{{ $eventProposal->created_at->format('d M Y, H:i') }}</td>
                            </tr>
                            <tr>
                                <th>Proposal</th>
                                <td style="white-space:pre-wrap;">{{ $eventProposal->message }}</td>
                            </tr>
                        </table>
                    </div>
                    <div class="card-footer d-flex justify-content-between">
                        <a href="{{ route('admin.event-proposals.index') }}" class="btn btn-secondary">← Back</a>
                        <form action="{{ route('admin.event-proposals.destroy', $eventProposal) }}" method="POST" onsubmit="return confirm('Delete this proposal?')">
                            @csrf @method('DELETE')
                            <button type="submit" class="btn btn-danger"><i class="bi bi-trash"></i> Delete</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
