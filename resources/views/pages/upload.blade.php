@extends('layouts.template')
@section('content')
        <a href="/uploads/create/" class="btn btn-default pull-right">Upload File</a>
        <div class="col-md-3">
            <h1>{{$data['title']}}</h1>
        </div>

        <!-- Here is a dropdown with the tables that have been uploaded
        Step 2: In the future i will select them not by file_type but by date_added
        Step 3: And probably add some ajax to handle them in the same page 
        -->
        <div class="clearfix"></div>
        

        <!--Files that have been stored in the database so far-->
        <div class="col-md-5">

            @if(count($reports)>0)
                @foreach($reports as $report)
                    @if($report->imported === 'da')
                        <div class="well" style="background-color:#bbff99!important">
                            <h3><a href="/uploads/{{$report->id}}">{{$report->file_name}}</a></h3>
                            <small>Uploaded on {{$report->created_at}}</small><br>
                            <small>Tip raport: {{$report->report_type}}</small>
                        </div>
                    @else
                        <div class="well">
                            <h3><a href="/uploads/{{$report->id}}">{{$report->file_name}}</a></h3>
                            <small>Uploaded on {{$report->created_at}}</small><br>
                            <small>Tip raport: {{$report->report_type}}</small>
                        </div>
                    @endif
                @endforeach
            @else
                No files found
            @endif


        </div>
@endsection