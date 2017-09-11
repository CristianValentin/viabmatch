<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Upload extends Model
{
    public function reports(){
        return $this->belongsTo('App\Report');
    }
}
