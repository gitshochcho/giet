@extends('layouts.app')

@section('content')
    <div class="app-content-header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6">
                    <h3 class="mb-0">FAQ Management</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-end">
                        <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">FAQs</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="app-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    @if (session('success'))
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            {{ session('success') }}
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                    @endif

                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Manage FAQs</h3>
                            <div class="card-tools">
                                <a href="{{ route('admin.faq.create') }}" class="btn btn-primary btn-sm">
                                    <i class="bi bi-plus"></i> Add New FAQ
                                </a>
                            </div>
                        </div>
                        <div class="card-body">
                            @if ($faqs->count() > 0)
                                <p class="text-muted small mb-2">
                                    <i class="bi bi-info-circle"></i>
                                    Drag rows to reorder, then click <strong>Save Order</strong>.
                                </p>
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover" id="faq-table">
                                        <thead>
                                            <tr>
                                                <th width="36" class="text-center text-muted">#</th>
                                                <th>Question</th>
                                                <th>Answer</th>
                                                <th width="80">Order</th>
                                                <th width="90">Status</th>
                                                <th width="150">Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody id="sortable-faqs">
                                            @foreach ($faqs as $faq)
                                                <tr data-id="{{ $faq->id }}" style="cursor: grab;">
                                                    <td class="text-center text-muted">
                                                        <i class="bi bi-grip-vertical"></i>
                                                    </td>
                                                    <td>{{ Str::limit($faq->question, 80) }}</td>
                                                    <td>{{ Str::limit(strip_tags($faq->answer), 100) }}</td>
                                                    <td>{{ $faq->order }}</td>
                                                    <td>
                                                        @if ($faq->is_active)
                                                            <span class="badge bg-success">Active</span>
                                                        @else
                                                            <span class="badge bg-secondary">Inactive</span>
                                                        @endif
                                                    </td>
                                                    <td>
                                                        <a href="{{ route('admin.faq.edit', $faq->id) }}" class="btn btn-sm btn-warning">
                                                            <i class="bi bi-pencil"></i> Edit
                                                        </a>
                                                        <form action="{{ route('admin.faq.destroy', $faq->id) }}" method="POST" style="display:inline;">
                                                            @csrf
                                                            @method('DELETE')
                                                            <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Delete this FAQ?')">
                                                                <i class="bi bi-trash"></i>
                                                            </button>
                                                        </form>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                                <button id="save-order-btn" class="btn btn-success btn-sm mt-2" style="display:none;">
                                    <i class="bi bi-save"></i> Save Order
                                </button>
                                <span id="order-saved-msg" class="text-success ms-2 small" style="display:none;">Order saved!</span>
                            @else
                                <div class="alert alert-info">No FAQs found. <a href="{{ route('admin.faq.create') }}">Add one now</a>.</div>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    @if ($faqs->count() > 0)
    <script src="https://cdn.jsdelivr.net/npm/sortablejs@1.15.2/Sortable.min.js"></script>
    <script>
        const tbody = document.getElementById('sortable-faqs');
        const saveBtn = document.getElementById('save-order-btn');
        const savedMsg = document.getElementById('order-saved-msg');

        Sortable.create(tbody, {
            animation: 150,
            handle: 'tr',
            onEnd: function () {
                saveBtn.style.display = 'inline-block';
                savedMsg.style.display = 'none';
            }
        });

        saveBtn.addEventListener('click', function () {
            const rows = tbody.querySelectorAll('tr[data-id]');
            const orders = [];
            rows.forEach(function (row, index) {
                orders.push({ id: row.dataset.id, order: index + 1 });
            });

            fetch('{{ route('admin.faq.update-order') }}', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                },
                body: JSON.stringify({ orders: orders })
            })
            .then(res => res.json())
            .then(data => {
                if (data.success) {
                    saveBtn.style.display = 'none';
                    savedMsg.style.display = 'inline';
                    setTimeout(() => savedMsg.style.display = 'none', 2000);
                }
            });
        });
    </script>
    @endif
@endsection
