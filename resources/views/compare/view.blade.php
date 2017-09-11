@extends('layouts.template')
@section('content')
    
    <h1>{{$data['title']}}</h1>
    <div class="col-md-3">
        <h3>{{$report_type_one}}</h3>
        <select id="select_table1" class="form-control">
            @foreach ($columns_one as $column_one)
                <option value="{{$report_type_one}}_{{$column_one}}">{{$column_one}}</option> 
            @endforeach
        </select>
    </div>
    <div class="col-md-3">
        <h3>{{$report_type_two}}</h3>
        <select id="select_table2" class="form-control">
            @foreach ($columns_two as $column_two)
                <option value="{{$report_type_two}}_{{$column_two}}">{{$column_two}}</option> 
            @endforeach
        </select>
    </div>
    <div class="col-md-3">
        <h5 id="selected_columns" class="hide_selection">Selected Columns {{$report_type_one}}</h5>
        <ul id="display_selection_table1" class="hide_selection">
                
        </ul>
    </div>
    <div class="col-md-3">
        <h5 id="selected_columns" class="hide_selection">Selected Columns {{$report_type_two}}</h5>
        <ul id="display_selection_table2" class="hide_selection">
                
        </ul>
    </div>
    <div class="clearfix"></div>
    <br>
    <div style="margin-right:10px;" class="col-md-1">
        <button id="confirmare" class="btn btn-default">Confirmare</button>
    </div>
    
    <div style="margin-right:10px;" class="col-md-1" >
        <button id="finalizare" class="btn btn-default">Vizualizare</button>
    </div>
        <div style="margin-right:50px;" class="col-md-1" >
        <button  id="anulare" class="btn btn-default">Anulare selectie</button>
    </div>
    <div style="margin-right:30px;" class="col-md-1" >
        <button id="autoselect" class="btn btn-default">Auto selectie</button>
    </div>
    <div class="col-md-1">
        {!! Form::open(['action'=>'CompareController@result','method' =>'POST', 'enctype' => 'multipart/form-data']) !!}
            <input type="hidden" name="array_table1" id="array_table1" value=""/>
            <input type="hidden" name="array_table2" id="array_table2" value=""/>
            <input type="hidden" name="table1" id="table1" value="{{$report_type_one}}"/>
            <input type="hidden" name="table2" id="table2" value="{{$report_type_two}}"/>
            <input type="hidden" name="array_view" id="array_view" value=""/>
            <input type="hidden" name="auto" id="auto" value=""/>
            {{Form::submit('Submit',['class' =>'btn btn-primary'])}}
            {{ csrf_field() }}
        {!! Form::close() !!} 
    </div>
    <!-- tabel viab-->
    <br><br><br>
    <table>
            <tr>
                @foreach ($columns_one as $column_one)
                    <th id="{{$report_type_one}}_{{$column_one}}">{{$column_one}}</th> 
                @endforeach
            </tr>
        @foreach ($table1 as $key =>$value1)
            <tr>
                @foreach ($columns_one as $column_one)
                    <td id="{{$report_type_one}}_$column_one">{{$value1->$column_one}}</td>
                @endforeach        
            </tr>
        @endforeach
    </table>
    <br>
    <!-- tabel mol -->
    <table>
            <tr>
                @foreach ($columns_two as $column_two)
                    <th id="{{$report_type_two}}_{{$column_two}}">{{$column_two}}</th> 
                @endforeach
            </tr>
        @foreach ($table2 as $key =>$value2)
            <tr>
                @foreach ($columns_two as $column_two)
                    <td id="{{$report_type_two}}_{{$column_two}}">{{$value2->$column_two}}</td>
                @endforeach
            </tr>
        @endforeach
    </table>
    <div class="clearfix"><br>

<script>


var values_table1 = [];
var values_table2 = [];
var values_view = [];
var value_table1 = '';
var value_table2 = '';
var values_view = '';
var array_table1 = ' ';
var array_table2 = ' ';
var array_view = ' ';


$( "#autoselect" ).click(function() {
    //alert( "Handler for .click() called." );
    document.getElementById("auto").value = 'true'; // this is viab
});

$('#select_table1').on('change', function() {
  value_table1 = $(this).val();
  //alert(value_viab);
});
$('#select_table2').on('change', function() {
  value_table2 = $(this).val();
  //alert(value_mol);
});

$( "#confirmare" ).click(function() {
    //alert( "Handler for .click() called." );
    values_table1.push(value_table1);
    values_table2.push(value_table2);
});

$( "#finalizare" ).click(function() {
// do not remove these from here
// they are being initialised and without it duplicates appear
array_table1 =' ';
array_table2 =' ';
array_view =' ';
  for(i=0; i<values_table1.length; ++i){
    array_table1 += values_table1[i] + ' ';
    array_table2 += values_table2[i] + ' ';
    array_view += values_table1[i] + ' ' + values_table2[i] + ' ';
    }
    //alert(array_table1 + ' ' + array_table2 + ' ');

    document.getElementById("array_table1").value = array_table1; // this is viab
    document.getElementById("array_table2").value = array_table2; // this is mol
    document.getElementById("array_view").value = array_view;


    //document.getElementById("display_selection_table1").innerHTML += array_table1;
    var txt1 = "<li>" + value_table1 + "</li>";
    var txt2 = "<li>" + value_table2 + "</li>";
    document.getElementById("display_selection_table1").innerHTML += txt1;
    document.getElementById("display_selection_table2").innerHTML += txt2;
    
    var elements = document.getElementsByClassName('hide_selection');
    //alert(elements[0].className + ' ' +elements[1].className + ' ' + elements[2].className + ' ' +elements[3].className);
    
    //this code generates errors
    // any code below these functions will not work
    for (var i in elements) {
    if (elements.hasOwnProperty(i)) {
        elements[i].className = 'show_selection';
    }
    }
    elements[0].className = 'show_selection';
    elements[1].className = 'show_selection';
    elements[2].className = 'show_selection';
    elements[3].className = 'show_selection';    
});
$( "#anulare" ).click(function() {
    //alert( "Handler for .click() called." );
    document.getElementById("array_table1").value =''; // this is viab
    document.getElementById("array_table2").value =''; // this is mol
    document.getElementById("array_view").value ='';
    array_table1 =' ';
    array_table2 =' ';
    array_view =' ';
    
    var elements = document.getElementsByClassName('show_selection');
    //alert(elements[0].className + ' ' +elements[1].className + ' ' + elements[2].className + ' ' +elements[3].className);

    $("#display_selection_table1").text("");
    $("#display_selection_table2").text("");  
    
    while (values_table1.length) { values_table1.pop(); }
    while (values_table2.length) { values_table2.pop(); }


    //this still generates errors
    // any code below these functions will not work
    for (var i in elements) {
        if (elements.hasOwnProperty(i)) {
            elements[i].className = 'hide_selection';
        }
    }
    elements[0].className = 'hide_selection';
    elements[1].className = 'hide_selection';
    elements[2].className = 'hide_selection';
    elements[3].className = 'hide_selection'; 

 
});


//$('#MyElement').addClass('MyClass');
//$('#MyElement').removeClass('MyClass');

//just to point out, the script generates around 33 errors
// which is not good


</script>

@endsection

