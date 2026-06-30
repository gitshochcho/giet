<?php

namespace App\Http\Controllers;

use App\Models\ResearchIdea;
use Illuminate\Http\Request;

class ResearchIdeaController extends Controller
{
    public function store(Request $request)
    {
        $validated = $request->validate([
            'name'         => ['required', 'string', 'max:255'],
            'email'        => ['required', 'email', 'max:255'],
            'organisation' => ['nullable', 'string', 'max:255'],
            'message'      => ['nullable', 'string'],
            'attachment'   => ['nullable', 'file', 'mimes:pdf,doc,docx,jpg,jpeg,png', 'max:5120'],
        ]);

        $idea = ResearchIdea::create([
            'name'         => $validated['name'],
            'email'        => $validated['email'],
            'organisation' => $validated['organisation'] ?? null,
            'message'      => $validated['message'] ?? null,
        ]);

        if ($request->hasFile('attachment')) {
            $idea->addMedia($request->file('attachment'))->toMediaCollection('attachment');
        }

        return back()->with('research_success', 'Your research idea has been submitted successfully. We will get back to you soon.');
    }
}
