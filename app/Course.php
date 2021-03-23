<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    public function phases(){
        return $this->hasMany('App\Phase');
    }
}
