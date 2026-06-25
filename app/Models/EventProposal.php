<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EventProposal extends Model
{
    protected $fillable = ['name', 'email', 'organisation', 'message', 'is_read'];
}
