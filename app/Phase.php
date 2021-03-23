<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Phase extends Model
{
    public function course(){
        return $this->belongsTo('App\Course', 'course_id');
    }
    public function areas(){
        return $this->hasMany('App\Area');
    }
}
