<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Area extends Model
{
    public function getphases(){
        return $this->hasMany('App\Phase');
    }
}
