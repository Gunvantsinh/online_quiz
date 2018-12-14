@extends('layouts.app')

@section('content')
<!DOCTYPE html>
<html>
<head>
    <title></title>

</head>
<body>

    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">

                <div class="panel-heading">{{ $candidate->name }}
                    <a href="{{ url('/home')}}" class="btn btn-warning pull-right">Back</a>
                   <div class="clearfix"></div>
               </div> 

                <div class="panel-body">
                   @if (session('success'))
                        <div class="alert alert-success">
                            {{ session('success') }}
                        </div>
                    @endif 
                     <table class="table table-border" id="candidate_result">
                        <thead>
                        <tr>
                            <th>Sr. No.</th>                       
                            <th>Question Name</th>                         
                            <th>Option 1</th>                 
                            <th>Option 2</th>                 
                            <th>Option 3</th>                 
                            <th>Option 4</th>                 
                            <th>Selected Option</th>                   
                            <th>Is correct?</th>
                        </tr>
                    </thead>
                        <tbody></tbody>
                     </table>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>

@endsection

@push('scripts')
<script>
$(function() {
    $('#candidate_result').DataTable({
        processing: true,
        serverSide: true,
        ajax: '{!! route('candidate_result',$candidate->id) !!}',
        columns: [
            { data: 'id', name: 'id' },
            { data: 'question', name: 'question' },
            { data: 'option1', name: 'option1' },
            { data: 'option2', name: 'option2' },
            { data: 'option3', name: 'option3' },
            { data: 'option4', name: 'option4' },
            { data: 'option_id', name: 'option_id' },
            { data: 'answer_id', name: 'answer_id' },
        ]
    });
});
</script>
@endpush