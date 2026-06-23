@extends('layouts.app')

@section('content')
<div class="app-content-header">
    <div class="container-fluid">
        <div class="row align-items-center">
            <div class="col-sm-6">
                <h3 class="mb-0">Project Categories</h3>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-end mb-0">
                    <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">Dashboard</a></li>
                    <li class="breadcrumb-item active">Project Categories</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="app-content">
    <div class="container-fluid">

        @if(session('message'))
        <div class="alert alert-{{ session('alert-type') === 'success' ? 'success' : 'danger' }} alert-dismissible fade show">
            {{ session('message') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
        @endif

        <div class="card card-outline card-primary">
            <div class="card-header d-flex align-items-center justify-content-between">
                <h3 class="card-title mb-0">All Categories</h3>
                <a href="{{ route('admin.project-categories.create') }}" class="btn btn-primary btn-sm">
                    <i class="bi bi-plus-lg me-1"></i> Add Category
                </a>
            </div>
            <div class="card-body p-0">
                <table class="table table-bordered table-striped mb-0">
                    <thead class="table-light">
                        <tr>
                            <th style="width:60px;">#</th>
                            <th>Name</th>
                            <th style="width:100px;">Sort</th>
                            <th style="width:100px;">Status</th>
                            <th style="width:120px;">Projects</th>
                            <th style="width:140px;">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($categories as $category)
                        <tr>
                            <td class="text-muted">{{ $loop->iteration }}</td>
                            <td><strong>{{ $category->name }}</strong></td>
                            <td>{{ $category->sort_order }}</td>
                            <td>
                                <span class="badge {{ $category->active ? 'bg-success' : 'bg-secondary' }}">
                                    {{ $category->active ? 'Active' : 'Hidden' }}
                                </span>
                            </td>
                            <td>
                                <span class="badge bg-info">{{ $category->projects()->count() }} projects</span>
                            </td>
                            <td>
                                <a href="{{ route('admin.project-categories.edit', $category) }}" class="btn btn-sm btn-outline-primary">Edit</a>
                                <form action="{{ route('admin.project-categories.destroy', $category) }}" method="POST" class="d-inline"
                                      onsubmit="return confirm('Delete category? Projects under it will become uncategorized.')">
                                    @csrf @method('DELETE')
                                    <button class="btn btn-sm btn-outline-danger">Delete</button>
                                </form>
                            </td>
                        </tr>
                        @empty
                        <tr>
                            <td colspan="6" class="text-center text-muted py-4">
                                No categories yet. <a href="{{ route('admin.project-categories.create') }}">Add the first one.</a>
                            </td>
                        </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>
        </div>

    </div>
</div>
@endsection
