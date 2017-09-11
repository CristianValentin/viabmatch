<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Upload;
use App\Report;


class UploadsController extends Controller
{

    /**
     * Create a new controller instance. This prevents actions without authentification
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {    
        $data = array(
            'title' => 'Uploaded files',
        );  
     
        $nowDate = date('Y-m-d');
        
        //the line below will show only the files uploaded TODAY
        //$reports = Upload::whereDate('created_at', '=', $nowDate)->orderBy('created_at','desc')->paginate(10);

        //this includes Today + user auth
        $reports = Upload::whereDate('created_at', '=', $nowDate)
                    ->where('user_id', '=', auth()->user()->id)
                    ->orderBy('created_at','desc')
                    ->paginate(10);

        // so i'll use this line to see them while in development mode     
        //$reports = Upload::orderBy('created_at','desc')->paginate(10);

        return view('pages.upload', compact('data','reports'));
        //return view('pages.upload', compact('data','uploads'));
        
    }
    /**
     * Show the form for creating a new resource.
     * 
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data = array(
            'title' => 'Upload a new file'
        );
        $reports = Report::all();
        //this puts the database results into an array so I can read them within the form in select
        $i=0;
        foreach($reports as $key => $report){
            $reports2[$i] = $report['report_type'];
            $i++;
        }
        return view('uploads.create', compact('data','reports2'));     
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'type' => 'required',
            'cover_image' => 'required|max:1999'

        ]);
        // I need to check the file type and make sure that it is csv or xls. Then we can add an if else statement with error that requires to upload csv or xls
 
            //I really don't care that this sais cover_image. it's from tutorials
            //Handle File Upload
            if($request->hasFile('cover_image')){
                // Get filename with the extension
                $filenameWithExt = $request->file('cover_image')->getClientOriginalName();
                // Get just filename
                $filename = pathinfo($filenameWithExt,PATHINFO_FILENAME);    
                // Get just extension    
                $extension = $request->file('cover_image')->getClientOriginalExtension();
                // Filename to store
                $fileNameToStore = $filename.'_'.time().'.'.$extension;
                //Upload Image
                $path = $request->file('cover_image')->storeAs('public/cover_images',$fileNameToStore);
            }else{
                return 123;
                $data = array(
                    'title' => 'Upload a new file'
                );
                return view('uploads.create',compact('data','reports'));     
            }
            //Upload the file
            $upload = new Upload;
            $table_type = 0;
            $upload->file_name = $filename . '.' . $extension;
            $upload->file_extension = '.'.$extension;
            $upload->file_path = $fileNameToStore;
            //i should think of a better way to do this; but for now...
            $upload->report_type=$request->get('type');
            $upload->user_id = auth()->user()->id;
            $upload->imported ='nu';
            //this saves the form so do not delete
            $upload->save();
            //this is important; do not delete
            return redirect('/uploads')->with('success','File Uploaded');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $up = Upload::find($id);
        // not sure if i can read file with laravel
        // if i can't i will have to use php
        $up->file_path;
        //echo $up['file_name']; 
        return view('uploads.show', compact('up'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
       // 
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
