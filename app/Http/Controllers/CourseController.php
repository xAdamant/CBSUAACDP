<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Area;
use App\Phase;

class CourseController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index($course_id, $phase, $review)
    {
        return view('course',['course_id' => $course_id, 'phase' => $phase, 'review' => $review]);
    }

    public function getSelectedCOurseInfo(Request $request)
    {
        $phase_id = Phase::select('id')->where('course_id', '=', $request->course_id)->where('phase', '=', $request->phase)->get();
        return Phase::with('course')->with('areas')->where('id', '=', $phase_id[0]->id)->orderBy( 'id' )->get();
    }
}
