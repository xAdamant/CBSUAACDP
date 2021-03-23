<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Area;

class SupportDocumentsController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index($id)
    {   
        $supp_docs = Area::select('supp_docs')->where('id', '=', $id)->get();
        return view('support',['supp_docs' => $supp_docs[0]->supp_docs]);
    }
}
