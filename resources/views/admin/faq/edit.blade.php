@extends('layouts.app')

@section('content')
    <div class="app-content-header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6">
                    <h3 class="mb-0">Edit FAQ</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-end">
                        <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('admin.faq.index') }}">FAQs</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Edit</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="app-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Edit FAQ</h3>
                        </div>
                        <form action="{{ route('admin.faq.update', $faq->id) }}" method="POST" class="card-body">
                            @csrf
                            @method('PUT')

                            <div class="mb-3">
                                <label class="form-label">Question <span class="text-danger">*</span></label>
                                <input type="text" name="question"
                                    class="form-control @error('question') is-invalid @enderror"
                                    placeholder="e.g., How quickly will GIET respond to my enquiry?"
                                    value="{{ old('question', $faq->question) }}" required>
                                @error('question') <span class="text-danger">{{ $message }}</span> @enderror
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Answer <span class="text-danger">*</span></label>
                                <textarea name="answer" rows="5"
                                    class="form-control @error('answer') is-invalid @enderror"
                                    placeholder="Write the answer here...">{{ old('answer', $faq->answer) }}</textarea>
                                @error('answer') <span class="text-danger">{{ $message }}</span> @enderror
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Sort Order</label>
                                <input type="number" name="order"
                                    class="form-control @error('order') is-invalid @enderror"
                                    placeholder="0" value="{{ old('order', $faq->order) }}">
                                <small class="text-muted">ছোট সংখ্যা আগে দেখাবে। Drag করেও order পরিবর্তন করা যাবে।</small>
                                @error('order') <span class="text-danger">{{ $message }}</span> @enderror
                            </div>

                            <div class="mb-3">
                                <div class="form-check">
                                    <input type="checkbox" name="is_active" class="form-check-input" id="isActive"
                                        value="1" @checked(old('is_active', $faq->is_active))>
                                    <label class="form-check-label" for="isActive">Active</label>
                                </div>
                            </div>

                            <div class="card-footer px-0">
                                <a href="{{ route('admin.faq.index') }}" class="btn btn-secondary">Cancel</a>
                                <button type="submit" class="btn btn-primary">Update FAQ</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
