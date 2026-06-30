@extends('layouts.app')

@section('content')
<div class="app-content-header">
    <div class="container-fluid">
        <div class="row align-items-center">
            <div class="col-sm-6">
                <h3 class="mb-0">Edit Category: {{ $projectCategory->name }}</h3>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-end mb-0">
                    <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">Dashboard</a></li>
                    <li class="breadcrumb-item"><a href="{{ route('admin.project-categories.index') }}">Project Categories</a></li>
                    <li class="breadcrumb-item active">Edit</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="app-content">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-6">

                @if(session('message'))
                <div class="alert alert-{{ session('alert-type') === 'success' ? 'success' : 'danger' }} alert-dismissible fade show">
                    {{ session('message') }}
                    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                </div>
                @endif

                <div class="card card-outline card-primary">
                    <div class="card-header"><h3 class="card-title">Category Details</h3></div>
                    <div class="card-body">

                        <form action="{{ route('admin.project-categories.update', $projectCategory) }}" method="POST">
                            @csrf @method('PUT')

                            <div class="mb-3">
                                <label class="form-label fw-semibold">Category Name <span class="text-danger">*</span></label>
                                <input type="text" name="name" value="{{ old('name', $projectCategory->name) }}"
                                       class="form-control @error('name') is-invalid @enderror"
                                       placeholder="e.g. Governance Reform">
                                @error('name')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                <small class="text-muted">This name appears as a filter tab on the Projects page.</small>
                            </div>

                            <div class="mb-3">
                                <label class="form-label fw-semibold">Sort Order</label>
                                <input type="number" name="sort_order" value="{{ old('sort_order', $projectCategory->sort_order) }}"
                                       class="form-control @error('sort_order') is-invalid @enderror"
                                       min="0" style="width:120px;">
                                @error('sort_order')<div class="invalid-feedback">{{ $message }}</div>@enderror
                                <small class="text-muted">Lower number = appears first in the filter tabs.</small>
                            </div>

                            <div class="mb-3">
                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" name="active" id="activeSwitch"
                                           {{ old('active', $projectCategory->active) ? 'checked' : '' }}>
                                    <label class="form-check-label fw-semibold" for="activeSwitch">
                                        Active (visible on the Projects page filter)
                                    </label>
                                </div>
                            </div>

                            <div class="mb-4 p-3 bg-light rounded border">
                                <small class="text-muted d-block mb-1"><i class="bi bi-info-circle me-1"></i> Projects in this category</small>
                                <strong>{{ $projectCategory->projects()->count() }}</strong> project(s) assigned to this category.
                            </div>

                            <div class="d-flex justify-content-between">
                                <a href="{{ route('admin.project-categories.index') }}" class="btn btn-secondary">
                                    <i class="bi bi-arrow-left me-1"></i> Back
                                </a>
                                <button type="submit" class="btn btn-primary">
                                    <i class="bi bi-check-lg me-1"></i> Update Category
                                </button>
                            </div>
                        </form>

                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
@endsection
