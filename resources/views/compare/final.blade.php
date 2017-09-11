@extends('layouts.template')
@section('content')
    <h1>{{$data['title']}}</h1>
	<div class="container">
        {!! Form::open(['action'=>'CompareController@downloadExcel','method' =>'POST', 'enctype' => 'multipart/form-data']) !!}
                    <!-- this will be the first table -->
                    <div class="col-md-3">
                        <select class="form-control" id="type" name="type_first">
                            <option value="xls">Download Excel xls</option>
                            <option value="xlsx">Download Excel xlsx</option>
                            <option value="csv">Download CSV</option>
                        </select>  
                    </div>
                    <!-- this will be the second table -->
                    <div class="col-md-3">
                        <select class="form-control" id="type" name="type_second">
                            <option value="validate">Documente Validate</option>
                            <option value="invalidate">Documente Invalidate</option>
                        </select>     
                    </div>
                {{ csrf_field() }}
                {{Form::submit('Submit',['class' =>'btn btn-primary'])}}
            {!! Form::close() !!}
        <div class="clearfix"></div>      

	</div>
    <br>
    <!-- tabel viab -->
     <table>
        <tr>
            <th id="Viab_Nr">Nr</th>
            <th id="Viab_Masina">Masina</th>
            <th id="Viab_Data">Data</th>
            <th id="Viab_Localitate">Localitate</th>
            <th id="Viab_Tara">Tara</th>
            <th id="Viab_Valoare">Valoare</th>
            <th id="Viab_Valuta">Valuta</th>
            <th id="Viab_TVa">TVa</th>
            <th id="Viab_Litri">Litri</th>
            <th id="Viab_Document">Document</th>
            <th id="Viab_Metoda_Plata">Metoda Plata</th>
            <th id="Viab_Card">Card</th>
            <th id="Viab_Validat">Validat</th>
            <th id="Viab_Doc_Validare">Doc Validare</th>
            <th id="Viab_Data_Doc_Validare">Data Doc Validare</th>
        </tr>

    @foreach ($viab_validated as $key =>$value2)
        <tr style="background-color:#fff">
            <td id="Viab_Nr">{{$value2->Nr}}</td>
            <td id="Viab_Masina">{{$value2->Masina}}</td>
            <td id="Viab_Data">{{$value2->Data}}</td>
            <td id="Viab_Localitate">{{$value2->Localitate}}</td>
            <td id="Viab_Tara">{{$value2->Tara}}</td>
            <td id="Viab_Valoare">{{$value2->Valoare}}</td>
            <td id="Viab_Valuta">{{$value2->Valuta}}</td>
            <td id="Viab_TVa">{{$value2->TVa}}</td>
            <td id="Viab_Litri">{{$value2->Litri}}</td>
            <td id="Viab_Document">{{$value2->Document}}</td>
            <td id="Viab_Metoda_Plata">{{$value2->Metoda_Plata}}</td>
            <td id="Viab_Card">{{$value2->Card}}</td>
            <td id="Viab_Validat">{{$value2->Validat}}</td>
            <td id="Viab_Doc_Validare">{{$value2->Doc_Validare}}</td>
            <td id="Viab_Data_Doc_Validare">{{$value2->Data_Doc_Validare}}</td>
        </tr>     
    @endforeach
    @foreach ($viab_invalidated as $key =>$value2)
        <tr style="background-color:#ff9999">
            <td id="Viab_Nr">{{$value2->Nr}}</td>
            <td id="Viab_Masina">{{$value2->Masina}}</td>
            <td id="Viab_Data">{{$value2->Data}}</td>
            <td id="Viab_Localitate">{{$value2->Localitate}}</td>
            <td id="Viab_Tara">{{$value2->Tara}}</td>
            <td id="Viab_Valoare">{{$value2->Valoare}}</td>
            <td id="Viab_Valuta">{{$value2->Valuta}}</td>
            <td id="Viab_TVa">{{$value2->TVa}}</td>
            <td id="Viab_Litri">{{$value2->Litri}}</td>
            <td id="Viab_Document">{{$value2->Document}}</td>
            <td id="Viab_Metoda_Plata">{{$value2->Metoda_Plata}}</td>
            <td id="Viab_Card">{{$value2->Card}}</td>
            <td id="Viab_Validat">{{$value2->Validat}}</td>
            <td id="Viab_Doc_Validare">{{$value2->Doc_Validare}}</td>
            <td id="Viab_Data_Doc_Validare">{{$value2->Data_Doc_Validare}}</td>
        </tr>     
    @endforeach    
    </table>

@endsection