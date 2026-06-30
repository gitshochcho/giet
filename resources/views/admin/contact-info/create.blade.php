@extends('layouts.app')

@section('content')
    <div class="app-content-header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6">
                    <h3 class="mb-0">Add Contact Information</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-end">
                        <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('admin.contact-info.index') }}">Contact Info</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Add New</li>
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
                            <h3 class="card-title">Add New Contact Information</h3>
                        </div>
                        <form action="{{ route('admin.contact-info.store') }}" method="POST" enctype="multipart/form-data" class="card-body">
                            @csrf

                            <div class="mb-3">
                                <label class="form-label">Type <span class="text-danger">*</span></label>
                                <select name="type" class="form-select @error('type') is-invalid @enderror" required onchange="updateFields()">
                                    <option value="">Select Type</option>
                                    <option value="phone" @selected(old('type') === 'phone')>Phone</option>
                                    <option value="email" @selected(old('type') === 'email')>Email</option>
                                    <option value="address" @selected(old('type') === 'address')>Address</option>
                                    <option value="career" @selected(old('type') === 'career')>Career / Fellowship</option>
                                </select>
                                @error('type') <span class="text-danger">{{ $message }}</span> @enderror
                            </div>

                            {{-- Icon Upload --}}
                            <div class="mb-3">
                                <label class="form-label fw-semibold">Icon Image <span class="text-muted fw-normal">(PNG, SVG, WebP — recommended 48×48px)</span></label>
                                <input type="file" name="icon_image" accept="image/*" class="form-control @error('icon_image') is-invalid @enderror"
                                       onchange="previewIcon(this)">
                                <div id="iconPreview" class="mt-2"></div>
                                @error('icon_image') <div class="invalid-feedback d-block">{{ $message }}</div> @enderror
                                <small class="text-muted">Icon upload করলে FontAwesome class এর চেয়ে এটি priority পাবে।</small>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Icon Class (Font Awesome) <span class="text-muted fw-normal">(icon upload না করলে এটি ব্যবহার হবে)</span></label>
                                <input type="text" name="icon_class" class="form-control @error('icon_class') is-invalid @enderror"
                                    placeholder="e.g., fas fa-phone-alt, fas fa-envelope, fas fa-map-marker-alt" value="{{ old('icon_class') }}">
                                @error('icon_class') <span class="text-danger">{{ $message }}</span> @enderror
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Title <span class="text-danger">*</span></label>
                                <input type="text" name="title" class="form-control @error('title') is-invalid @enderror" 
                                    placeholder="e.g., Head Office, General Enquiries" value="{{ old('title') }}" required>
                                @error('title') <span class="text-danger">{{ $message }}</span> @enderror
                            </div>

                            <div class="mb-3">
                                <label class="form-label" id="primaryLabel">Primary Text <span class="text-danger">*</span></label>
                                <input type="text" name="primary_text" class="form-control @error('primary_text') is-invalid @enderror"
                                    placeholder="e.g., +880 1715-056952 or contact@example.com" value="{{ old('primary_text') }}" required>
                                @error('primary_text') <span class="text-danger">{{ $message }}</span> @enderror
                            </div>

                            {{-- Secondary Text: phone/email এ primary_text এর নিচে --}}
                            <div class="mb-3" id="secondaryTextField" style="display: none;">
                                <label class="form-label">Secondary Text</label>
                                <input type="text" name="secondary_text" class="form-control @error('secondary_text') is-invalid @enderror"
                                    placeholder="e.g., General enquiries · We reply within 2 business days" value="{{ old('secondary_text') }}">
                                <small class="text-muted">Phone/email number এর নিচে ছোট করে দেখাবে।</small>
                                @error('secondary_text') <span class="text-danger">{{ $message }}</span> @enderror
                            </div>

                            {{-- Career Fields --}}
                            <div id="careerFields" style="display: none;">
                                <div class="mb-3">
                                    <label class="form-label">Label / Sub-title</label>
                                    <input type="text" name="name" class="form-control @error('name') is-invalid @enderror"
                                        placeholder="e.g., Career & Fellowship Enquiries" value="{{ old('name') }}">
                                    <small class="text-muted">Primary Text এর উপরে bold দেখাবে।</small>
                                    @error('name') <span class="text-danger">{{ $message }}</span> @enderror
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Secondary Text</label>
                                    <input type="text" name="secondary_text" class="form-control @error('secondary_text') is-invalid @enderror"
                                        placeholder="e.g., We reply within 3 business days" value="{{ old('secondary_text') }}">
                                    <small class="text-muted">Primary Text এর নিচে ছোট করে দেখাবে।</small>
                                    @error('secondary_text') <span class="text-danger">{{ $message }}</span> @enderror
                                </div>
                            </div>

                            <!-- Address Fields (Hidden by default) -->
                            <div id="addressFields" style="display: none;">
                                <div class="mb-3">
                                    <label class="form-label">Office Name</label>
                                    <input type="text" name="address_name" class="form-control @error('name') is-invalid @enderror"
                                        placeholder="e.g., GIET Foundation" value="{{ old('name') }}">
                                    @error('name') <span class="text-danger">{{ $message }}</span> @enderror
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Full Address</label>
                                    <textarea name="address" class="form-control @error('address') is-invalid @enderror" rows="3"
                                        placeholder="Full address">{{ old('address') }}</textarea>
                                    @error('address') <span class="text-danger">{{ $message }}</span> @enderror
                                </div>

                                {{-- Secondary Text: address এ Full Address এর নিচে --}}
                                <div class="mb-3">
                                    <label class="form-label">Secondary Text</label>
                                    <input type="text" name="secondary_text" class="form-control @error('secondary_text') is-invalid @enderror"
                                        placeholder="e.g., Dhaka, Bangladesh" value="{{ old('secondary_text') }}">
                                    <small class="text-muted">Full Address এর নিচে দেখাবে।</small>
                                    @error('secondary_text') <span class="text-danger">{{ $message }}</span> @enderror
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Map Location Text</label>
                                    <input type="text" name="map_location" class="form-control @error('map_location') is-invalid @enderror"
                                        placeholder="e.g., View on Google Maps →" value="{{ old('map_location') }}">
                                    @error('map_location') <span class="text-danger">{{ $message }}</span> @enderror
                                </div>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Link Value (tel:, mailto:, or URL)</label>
                                <input type="text" name="link_value" class="form-control @error('link_value') is-invalid @enderror" 
                                    placeholder="e.g., tel:+8801715056952 or mailto:contact@example.com" value="{{ old('link_value') }}">
                                @error('link_value') <span class="text-danger">{{ $message }}</span> @enderror
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Sort Order</label>
                                <input type="number" name="order" class="form-control @error('order') is-invalid @enderror" 
                                    placeholder="0" value="{{ old('order', 0) }}">
                                @error('order') <span class="text-danger">{{ $message }}</span> @enderror
                            </div>

                            <div class="mb-3">
                                <div class="form-check">
                                    <input type="checkbox" name="is_active" class="form-check-input" id="isActive" value="1" 
                                        @checked(old('is_active', true))>
                                    <label class="form-check-label" for="isActive">Active</label>
                                </div>
                            </div>

                            <div class="card-footer d-flex justify-content-end gap-2">
                                <a href="{{ route('admin.contact-info.index') }}" class="btn btn-secondary">Cancel</a>
                                <button type="submit" class="btn btn-primary">Save Contact Info</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function previewIcon(input) {
            const preview = document.getElementById('iconPreview');
            preview.innerHTML = '';
            if (input.files && input.files[0]) {
                const img = document.createElement('img');
                img.src = URL.createObjectURL(input.files[0]);
                img.style.cssText = 'width:48px;height:48px;object-fit:contain;border:1px solid #dee2e6;border-radius:8px;padding:4px;background:#f8f9fa;';
                preview.appendChild(img);
            }
        }

        function setInputsDisabled(container, disabled) {
            container.querySelectorAll('input, textarea, select').forEach(el => el.disabled = disabled);
        }

        function updateFields() {
            const type = document.querySelector('select[name="type"]').value;
            const addressFields = document.getElementById('addressFields');
            const secondaryTextField = document.getElementById('secondaryTextField');
            const careerFields = document.getElementById('careerFields');

            addressFields.style.display = 'none';
            secondaryTextField.style.display = 'none';
            careerFields.style.display = 'none';

            setInputsDisabled(addressFields, true);
            setInputsDisabled(secondaryTextField, true);
            setInputsDisabled(careerFields, true);

            if (type === 'address') {
                addressFields.style.display = 'block';
                setInputsDisabled(addressFields, false);
            } else if (type === 'phone' || type === 'email') {
                secondaryTextField.style.display = 'block';
                setInputsDisabled(secondaryTextField, false);
            } else if (type === 'career') {
                careerFields.style.display = 'block';
                setInputsDisabled(careerFields, false);
            }
        }

        updateFields();
    </script>
@endsection
