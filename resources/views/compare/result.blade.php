@extends('layouts.template')
@section('content')
    <h1>{{$data['title']}}</h1>
    
    
    <small>Au fost gasite {{$count}} rezultate din {{$count_max}}</small><br>
    {!! Form::open(['action'=>'CompareController@final','method' =>'POST', 'enctype' => 'multipart/form-data']) !!}
    <table>
        <tr>
            <!-- definitely not elengant but I don't really know how else to quickly solve this
            check it back later -->
            <span style="display:none">{{$ok=0}}</span>
            @foreach($data_array_view as $dview)
                    @if($ok==0)
                        <th>{{$dview}} ({{$table1}})</th>
                        <span style="display:none">{{$ok=1}}</span>
                    @else
                        <th>{{$dview}} ({{$table2}})</th>
                        <span style="display:none">{{$ok=0}}</span>
                    @endif
            @endforeach
            <th> <input type="checkbox" id="check_all" name="vehicle" value="all">Confirmare</td></th>
        </tr>
    @foreach ($data2 as $key =>$value1)
        <tr>
        @foreach($data_array_view as $dview)
            <td><small>{{$value1->$dview}}</small></td>
        @endforeach
        
        <td><input type="checkbox" name="vehicle" id="check_{{$value1->id}}" value="{{$value1->id}}"></td>
        </tr>

    @endforeach
    </table>
    <input type="hidden" name="result" id="result" value=""/>
    <input id="btnSubmit" type="submit" value="submit" />
    {!! Form::close() !!}
   
    
    <div id="divResult"></div>
    
    <script type="text/javascript">
        
        var checked = [];
        var resultString = ' ';
        
        $(document).ready(function(){
            $('#btnSubmit').click(function(){
                var result = $('input[type="checkbox"]:checked');
                if(result.length>0){
                    result.each(function(){
                        if($(this).val() != "all"){
                            resultString += $(this).val() +" ";
                        }
                    });
                    //$('#divResult').html(resultString);
                }else{
                    resultString="Nothing is checked";
                    //$('#divResult').html(resultString);
                }
                if(resultString == "Nothing is checked"){
                    alert('Nothing is checked');
                    document.getElementById("result").value = resultString;
                }else{
                document.getElementById("result").value = resultString;

                }
            });
            $('#check_all').click(function(){
                //var checkboxes = $(this).closest('form').find(':checkbox').not($(this));
                var checkboxes = $(this).closest('form').find(':checkbox');
                if($(this).is(':checked')) {
                    checkboxes.prop('checked', true);
                } else {
                    checkboxes.prop('checked', false);
                }
            });
        });
    </script>

@endsection