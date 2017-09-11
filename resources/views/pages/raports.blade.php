@extends('layouts.template')
@section('content')
        <a href="/" class="btn btn-default pull-right">Go Back</a>
        <h4>{{$title}}</h4>
        <div class="col-md-3">
            {!! Form::open(['action'=>'UploadsController@store','method' =>'POST', 'enctype' => 'multipart/form-data']) !!}
                <div class="form-group">
                    {{Form::label('name','Raport name')}}
                    {{Form::text('name','',['class' =>'form-control','placeholder'=>'Name'])}}
                </div>
                {{Form::submit('Submit',['class' =>'btn btn-primary'])}}
            {!! Form::close() !!}
        </div>  
        
@endsection
