<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\ContactInfo;
use Illuminate\Http\Request;

class ContactInfoController extends Controller
{
    public function index()
    {
        $contactInfos = ContactInfo::ordered()->get();
        return view('admin.contact-info.index', compact('contactInfos'));
    }

    public function create()
    {
        return view('admin.contact-info.create');
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'type'           => 'required|in:phone,email,address,career',
            'icon_class'     => 'nullable|string|max:255',
            'icon_image'     => 'nullable|image|mimes:jpg,jpeg,png,webp,svg|max:1024',
            'title'          => 'required|string|max:255',
            'primary_text'   => 'required|string|max:255',
            'secondary_text' => 'nullable|string',
            'name'           => 'nullable|string|max:255',
            'address'        => 'nullable|string',
            'map_location'   => 'nullable|string',
            'office_hours'   => 'nullable|string|max:255',
            'link_value'     => 'nullable|string|max:255',
            'order'          => 'nullable|integer',
            'is_active'      => 'nullable|boolean',
        ]);

        $validated['is_active'] = $request->has('is_active');
        $validated['order'] = $request->input('order', 0);
        if ($request->filled('address_name')) {
            $validated['name'] = $request->input('address_name');
        }

        unset($validated['icon_image']);
        $contactInfo = ContactInfo::create($validated);

        if ($request->hasFile('icon_image')) {
            $contactInfo->clearMediaCollection('icon');
            $contactInfo->addMedia($request->file('icon_image'))->toMediaCollection('icon');
        }

        return redirect()->route('admin.contact-info.index')->with('success', 'Contact info added successfully!');
    }

    public function edit(ContactInfo $contactInfo)
    {
        return view('admin.contact-info.edit', compact('contactInfo'));
    }

    public function update(Request $request, ContactInfo $contactInfo)
    {
        $validated = $request->validate([
            'type'           => 'required|in:phone,email,address,career',
            'icon_class'     => 'nullable|string|max:255',
            'icon_image'     => 'nullable|image|mimes:jpg,jpeg,png,webp,svg|max:1024',
            'title'          => 'required|string|max:255',
            'primary_text'   => 'required|string|max:255',
            'secondary_text' => 'nullable|string',
            'name'           => 'nullable|string|max:255',
            'address'        => 'nullable|string',
            'map_location'   => 'nullable|string',
            'office_hours'   => 'nullable|string|max:255',
            'link_value'     => 'nullable|string|max:255',
            'order'          => 'nullable|integer',
            'is_active'      => 'nullable|boolean',
        ]);

        $validated['is_active'] = $request->has('is_active');
        $validated['order'] = $request->input('order', 0);
        if ($request->filled('address_name')) {
            $validated['name'] = $request->input('address_name');
        }

        unset($validated['icon_image']);
        $contactInfo->update($validated);

        if ($request->hasFile('icon_image')) {
            $contactInfo->clearMediaCollection('icon');
            $contactInfo->addMedia($request->file('icon_image'))->toMediaCollection('icon');
        } elseif ($request->boolean('remove_icon')) {
            $contactInfo->clearMediaCollection('icon');
        }

        return redirect()->route('admin.contact-info.index')->with('success', 'Contact info updated successfully!');
    }

    public function destroy(ContactInfo $contactInfo)
    {
        $contactInfo->clearMediaCollection('icon');
        $contactInfo->delete();
        return redirect()->route('admin.contact-info.index')->with('success', 'Contact info deleted successfully!');
    }
}
