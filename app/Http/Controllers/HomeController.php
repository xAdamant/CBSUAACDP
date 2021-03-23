<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Course;
use App\Phase;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    public function getAllCourses()
    {
        return Course::with('phases')->orderBy('id')->get();
    }

    public function getLastPhase()
    {
        return Phase::orderBy('id', 'DESC')->first();
    }
}
