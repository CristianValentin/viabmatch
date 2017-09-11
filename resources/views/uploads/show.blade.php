@extends('layouts.template')
@section('content')
    <a href="/uploads" class="btn btn-default pull-right">Go Back</a>
    <h1>{{$up->file_name}}</h1>
    <!-- Ok now I will have to use ajax and Jquery to read the file and select columns to be inserted into db -->
    <div class="col-md-4" style="padding-left:0px!important;margin-top:20px;">
    <form style="" action="{{ URL::to('importExcel') }}{{$up->report_type}}" class="form-horizontal" method="post" enctype="multipart/form-data">
        <input type="hidden" name="file_path" value="/storage/cover_images/{{$up->file_path}}">
        <input type="hidden" name="report_type" value="{{$up->report_type}}">
		{!! csrf_field() !!}
        <button class="btn btn-primary">Import To Database</button>    
	</form>
    </div>
    <div class="clearfix"></div>


@endsection

