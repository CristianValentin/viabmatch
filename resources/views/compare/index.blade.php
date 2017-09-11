@extends('layouts.template')
@section('content')
    <h1>{{$data['title']}}</h1>
        <div class="col-md-3">
            {!! Form::open(['action'=>'CompareController@compare','method' =>'POST', 'enctype' => 'multipart/form-data']) !!}
                <div class="form-group">
                    <!-- this will be the first table -->
                    {{Form::label('type_first','Tabel 1')}}
                    <br>
                    <select class="form-control" id="type" name="type_first">
                            <option value="{{$main_table}}">{{$main_table}}</option>
                    </select>  
                    <br>
                    <!-- this will be the second table -->
                    {{Form::label('type_second','Tabel 2')}}
                    <br>
                    <select class="form-control" id="type" name="type_second">
                        @foreach($reports2 as $report)
                            <option value="{{$report}}">{{$report}}</option>
                        @endforeach
                    </select>     
                </div>
                {{ csrf_field() }}
                {{Form::submit('Submit',['class' =>'btn btn-primary'])}}
            {!! Form::close() !!}
        </div>
@endsection