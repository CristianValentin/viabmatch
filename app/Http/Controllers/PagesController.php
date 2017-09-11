<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
class PagesController extends Controller
{
    /**
     * Create a new controller instance. This prevents actions without authentification
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth', ['except' => ['index']]);
    }

    public function index(){
        $data = array(
            'title' => 'HomePage',
        );
        return view('pages.index')->with($data);
    }
    public function raports(){
        $data = array(
            'title' => 'Upload new raport type',            
        );
        return view('pages.raports')->with($data);
    }
    public function store(Request $request)
    {
        $this->validate($request,[
            'name' => 'required',
            
        ]);
        $raport = new Raport;
        $raport->type = $request->input('name');
        $raport->save();
        return redirect('/raports')->with('success', 'Raport added');

    }
}
