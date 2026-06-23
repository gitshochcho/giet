<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\ProjectCategory;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;

class ProjectCategoryController extends Controller
{
    public function index()
    {
        $categories = ProjectCategory::orderBy('sort_order')->orderBy('name')->get();
        return view('admin.project-category.index', compact('categories'));
    }

    public function create()
    {
        return view('admin.project-category.create');
    }

    public function store(Request $request): RedirectResponse
    {
        $request->validate([
            'name'       => 'required|string|max:255|unique:project_categories,name',
            'sort_order' => 'nullable|integer|min:0',
        ]);

        ProjectCategory::create([
            'name'       => $request->name,
            'sort_order' => $request->sort_order ?? 0,
            'active'     => $request->has('active'),
        ]);

        return redirect()->route('admin.project-categories.index')->with([
            'message'    => 'Category created successfully.',
            'alert-type' => 'success',
        ]);
    }

    public function edit(ProjectCategory $projectCategory)
    {
        return view('admin.project-category.edit', compact('projectCategory'));
    }

    public function update(Request $request, ProjectCategory $projectCategory): RedirectResponse
    {
        $request->validate([
            'name'       => 'required|string|max:255|unique:project_categories,name,' . $projectCategory->id,
            'sort_order' => 'nullable|integer|min:0',
        ]);

        $projectCategory->update([
            'name'       => $request->name,
            'sort_order' => $request->sort_order ?? 0,
            'active'     => $request->has('active'),
        ]);

        return redirect()->route('admin.project-categories.index')->with([
            'message'    => 'Category updated successfully.',
            'alert-type' => 'success',
        ]);
    }

    public function destroy(ProjectCategory $projectCategory): RedirectResponse
    {
        $projectCategory->projects()->update(['project_category_id' => null]);
        $projectCategory->delete();

        return redirect()->route('admin.project-categories.index')->with([
            'message'    => 'Category deleted. Projects under it are now uncategorized.',
            'alert-type' => 'success',
        ]);
    }
}
