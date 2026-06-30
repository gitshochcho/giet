<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\EventProposal;

class EventProposalController extends Controller
{
    public function index()
    {
        $proposals = EventProposal::latest()->paginate(15);
        return view('admin.event-proposals.index', compact('proposals'));
    }

    public function show(EventProposal $eventProposal)
    {
        $eventProposal->update(['is_read' => true]);
        return view('admin.event-proposals.show', compact('eventProposal'));
    }

    public function destroy(EventProposal $eventProposal)
    {
        $eventProposal->delete();
        return redirect()->route('admin.event-proposals.index')->with('success', 'Proposal deleted successfully.');
    }
}
