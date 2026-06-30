<?php

namespace App\Http\Controllers;

use App\Models\EventProposal;
use Illuminate\Http\Request;

class EventProposalController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'name'    => ['required', 'string', 'max:255'],
            'email'   => ['required', 'email', 'max:255'],
            'organisation' => ['nullable', 'string', 'max:255'],
            'message' => ['required', 'string'],
        ]);

        EventProposal::create($request->only('name', 'email', 'organisation', 'message'));

        return back()->with('proposal_success', 'Your event proposal has been submitted successfully. We will get back to you soon.');
    }
}
