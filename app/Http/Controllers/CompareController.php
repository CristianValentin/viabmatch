<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use App\Report;
use DB;
use Excel;
class CompareController extends Controller
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
    public function index(){
        $data = array(
            'title' => 'Compare tables'
        );
        $reports = Report::all();
        //this puts the database results into an array so I can read them within the form in select
        $i=0;
        // this will be taken from the database or from sessions
        // and it will point out towards the base table
        // so it can be selected for one of the options in select
        $user = 1;
        $main_table="viab";
        
        
        foreach($reports as $key => $report){
            //I will also make sure not to compare a table with itself here
            //but i need to change the database to store the user which uploaded the table
            //furthermore, the user is unable to create a table himself
            //a programmer will have to do it for him.
            //in this state of the application, I am not sure if I can change that without remaking the app
            if($report['report_type'] != $main_table){
            $reports2[$i] = $report['report_type'];
            $i++;
            }
        }
        return view('compare.index', compact('data','reports2','main_table')); 
    }

    public function view(){
        // What is this ??? this does nothing!!!
        return 123;
    }

    public function compare(Request $request){
            
        $report_type_one=$request->get('type_first');    
        $report_type_two=$request->get('type_second');

        $table1 = DB::table($report_type_one)->limit(5)->get();
        $table2 = DB::table($report_type_two)->limit(5)->get();
        
        //return view('service', ['services' => $service]);
        $data = array(
            'title' => 'Select Columns'
        );

        //let's get the auto selections 
        // $report_type_one (base_table_name)
        // $report_type_two (raport_table_name)
        

        $columns_one = \DB::connection()->getSchemaBuilder()->getColumnListing($report_type_one);
        $columns_two = \DB::connection()->getSchemaBuilder()->getColumnListing($report_type_two);
        
        // since Id is auto incremented I do not wish to show it in the view, so... i unset it
        if($columns_one[0] === 'id'){
            unset($columns_one[0]) ;
        }
        if($columns_two[0] === 'id'){
            unset($columns_two[0]) ;
        }
        return view('compare.view', compact('data','report_type_one','report_type_two','table1','table2','columns_one','columns_two'));    
    }
    public function result(Request $request){
         $data = array(
            'title' => 'Showing results'
        );
        $auto_check = $request->input('auto');
        if($auto_check === "true"){

            $table1 =$request->input('table1');//echo $table1;echo "<br>";
            $table2 =$request->input('table2');//echo $table2;echo "<br>";
            $query1= "SELECT * from `autocmp` where `base_table_name` = '" . $table1 . "' and raport_table_name = '" . $table2 . "'";
            $auto = DB::select($query1);
            
            $query = 'select distinct v.id, ';
            $i=0;
            foreach($auto as $aut){
                $base_table_column[$i] = $aut->base_table_column;
                $raport_table_column[$i] = $aut->raport_table_column;
                $i++;
            }

            $count = count($base_table_column);
            $j=0;
            for ($i = 0; $i < $count; $i++) {
            $data_array_view[$j] = $base_table_column[$i];
            $data_array_view[$j+1] = $raport_table_column[$i];
            $j=$j+2;
            }
            //this will do the query
            for ($i = 0; $i < $count; $i++) {
                $column_table1 = $base_table_column[$i];
                $column_table2 = $raport_table_column[$i];
                if($i<$count-1){
                    $query .= 'v.'.$column_table1.', m.'.$column_table2.', ';
                }else{
                    $query .= 'v.'.$column_table1.', m.'.$column_table2. ' ';
                }   
            }
            
            $query .=' from ' . $table1 . ' v, ' .  $table2 . ' m where ';
            for ($i = 0; $i < $count; $i++) {   
                $column_table1 = $base_table_column[$i];
                $column_table2 = $raport_table_column[$i];    
                if($i<$count-1){
                    $query .= 'v.'.$column_table1.' = m.'.$column_table2.' AND ';
                }else{
                    $query .= 'v.'.$column_table1.' = m.'.$column_table2;
                }
            }
            $data2 = DB::select($query);
            $count = count($data2);

            $count_max = DB::table($table1)->count();
            return view('compare.result', compact('data','data2','data_array_view','count','count_max','table1','table2'));
        }
        else{
            // below is what happens if auto is not selected

            // since i will get the base table name based on the user login input
            // i will require to also get the second table name, through an input
            // then I need to make sure that the values match so I can remove them from the array

            // I get the feeling that there are more advanced ways to do this
            // but since I am a beginner, no one should exect me to do something 
            // too awesome   

            // here is the input from the submit button in the form
            $array_table1 =$request->input('array_table1');//echo $array_table1;echo "<br>"; // this will point to the base table
            $array_table2 =$request->input('array_table2');//echo $array_table2;echo "<br>"; // this will point to the uploaded table
            $table1 =$request->input('table1') . "_";//echo $table1;echo "<br>";
            $table2 =$request->input('table2') . "_";//echo $table2;echo "<br>";
            $array_view =$request->input('array_view');// echo $array_view;echo "<br>"; 
            // this will remove the spaces
        
            $data_array_table1 = preg_split('/\s+/',  $array_table1);//var_dump($data_array_table1);echo "<br>";
            $data_array_table2 = preg_split('/\s+/', $array_table2);//var_dump($data_array_table2);echo "<br>";
            $data_array_view = preg_split('/\s+/', $array_view);
            // this will remove the prefix of table so we can get the column names
            $data_array_table1 = str_replace($table1, "", $data_array_table1);
            $data_array_table2 = str_replace($table2, "", $data_array_table2);
            
            // this is the only place where I switch the str_replace; however the switch is irelevant
            // i have to make sure that the issue which caused the switch never to occur
            // it is in the steps of implementation
            $data_array_view = str_replace($table2, "", $data_array_view);
            $data_array_view = str_replace($table1, "", $data_array_view);
            
            // I should find a better way to do this.
            // Actually I wanted to return base table in a different way
            // Maybe I should make a model called base table
            // But since now is not defined anywhere, this will do
            // so return to this after you change things
        
            $count = count($data_array_table1);
            

            // here the table names are the one from the database
            $table1 =str_replace("_", "", $table1);
            $table2 =str_replace("_", "", $table2);

            $count_max = DB::table($table1)->count();

            // I am going to have to build the query in here   
            // the id is mandatory - !!!!IMPORTANT!!!! - it actually revealed one extra result
                
            $query = 'select distinct v.id, ';
            for ($i = 0; $i < $count; $i++) {
                // need two variables that will point out to the tables - damn
                // i think i solved the problem with the variables, however I will have to check it out
                // since i have added the table names through variables, up to this point
                // i should be able to get them without additional problems
                $column_table1 = $data_array_table1[$i];
                $column_table2 = $data_array_table2[$i];
                
                if($i<$count-1){
                    $query .= 'v.'.$column_table1.', m.'.$column_table2.', ';
                }else{
                    $query .= 'v.'.$column_table1.', m.'.$column_table2. ' ';
                }
                
            }
            
            $query .=' from ' . $table1 . ' v, ' .  $table2 . ' m where ';
            for ($i = 0; $i < $count; $i++) {
                
                $column_table1 = $data_array_table1[$i];
                $column_table2 = $data_array_table2[$i];
                
                if($i<$count-1){
                    $query .= 'v.'.$column_table1.' = m.'.$column_table2.' AND ';
                }else{
                    $query .= 'v.'.$column_table1.' = m.'.$column_table2;
                }
                
            }
            
            $data2 = DB::select($query);
            
            //with this i count the number of rows that have been confirmed as matches
            $count = count($data2);
            
            // now I have to rewrite the return
            return view('compare.result', compact('data','data2','data_array_view','count','count_max','table1','table2'));
        }
        // end of what happens if autocheck is not selected
    }
    // this function may have to be duplicated or I need to find a way for it to work for different users.

    public function final(Request $request){
        // here I won't pass the base table name.
        // in fact I will abstain from passing the base table names through forms.
        // however I do not need to modify the program up to this point
        // 
        
        $data = array(
            'title' => 'Tabel viab'
        );
        $array =$request->input('result');
        
        if($array != 'Nothing is checked'){
            $array = preg_split('/\s+/',  $array);
            $count = count($array);
            foreach($array as $dar){
                $query = "UPDATE `viab` SET `Validat`='da' where id =" .$dar.";";
                $data1 = DB::update($query);
            }
        } 
        
  
        $viab_validated = DB::table('viab')->where('validat', '=', 'da')->get();
        $viab_invalidated = DB::table('viab')->where('validat', '=', 'nu')->get();
        return view('compare.final', compact('data','viab_validated','viab_invalidated')); 
    }
    public function downloadExcel(Request $request)
	{
		

        $file_type = $request->get('type_first');
        $doc_type = $request->get('type_second');
        // will have to change this based on user id and base table but for now, let's see if it works
        if($doc_type === 'validate'){
            $results = DB::table('viab')->where('validat', '=', 'da')->get();
        }
        if($doc_type === 'invalidate'){
            $results = DB::table('viab')->where('validat', '=', 'nu')->get();
        }
        //and now the conversion
        $data_to_export = array();
        foreach ($results as $result) {
            if($result->id){
                unset($result->id);
            }
            $data_to_export[] = (array)$result;  
        }    
        
        //this is to set the name of the raport
        //there are many ways to do this, will have to think of a good one
        // will get it differently later
        $table_name = 'viab';
        $file_name = $table_name . "_" . $doc_type;  

        // std class can not be converted to string - error - must fix
		return Excel::create($file_name, function($excel) use ($data_to_export) {
			$excel->sheet('mySheet', function($sheet) use ($data_to_export)
	        {
				$sheet->fromArray($data_to_export);
	        });
		})->download($file_type);
	}
}