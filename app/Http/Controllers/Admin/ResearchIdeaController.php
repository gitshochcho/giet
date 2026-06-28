<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\ResearchIdea;

class ResearchIdeaController extends Controller
{
    public function index()
    {
        $ideas = ResearchIdea::latest()->paginate(15);
        return view('admin.research-ideas.index', compact('ideas'));
    }

    public function show(ResearchIdea $researchIdea)
    {
        $researchIdea->update(['is_read' => true]);
        return view('admin.research-ideas.show', compact('researchIdea'));
    }

    public function destroy(ResearchIdea $researchIdea)
    {
        $researchIdea->clearMediaCollection('attachment');
        $researchIdea->delete();
        return redirect()->route('admin.research-ideas.index')->with('success', 'Research idea deleted successfully.');
    }
}
