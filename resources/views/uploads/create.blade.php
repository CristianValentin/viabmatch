@extends('layouts.template')
@section('content')
        <a href="/uploads" class="btn btn-default pull-right">Go Back</a>
        <h1>{{$data['title']}}</h1>

        <!-- here we upload files to the database -->

        <div class="col-md-3">
            {!! Form::open(['action'=>'UploadsController@store','method' =>'POST', 'enctype' => 'multipart/form-data']) !!}
                <div class="form-group">
                    {{Form::label('type','Type')}}
                    <br>
                    <!-- I will have to replace this array with a dynamic array
                    but i will do it later -->
                    <select class="form-control" id="type" name="type">
                        @foreach($reports2 as $report)
                            <option value="{{$report}}">{{$report}}</option>
                        @endforeach
                    </select>  
                </div>
                <div class="form-group">
                     {{Form::file('cover_image')}}      
                </div>
                {{Form::submit('Submit',['class' =>'btn btn-primary'])}}
            {!! Form::close() !!}
        </div>  

@endsection
