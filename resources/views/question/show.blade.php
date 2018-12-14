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

                <div class="panel-heading">Question List 
                    <a href="{{ url('question/add')}}" class="btn btn-warning pull-right">Add Question</a>
                   <div class="clearfix"></div>
               </div> 

                <div class="panel-body">
                   @if (session('success'))
                        <div class="alert alert-success">
                            {{ session('success') }}
                        </div>
                    @endif 
                     <table class="table table-border" id="question_data">
                        <tr><thead>
                            <th>Sr. No.</th>
                            <th>Question Name</th>                         
                            <th>Option 1</th>                         
                            <th>Option 2</th>                         
                            <th>Option 3</th>                         
                            <th>Option 4</th>                         
                            <th>Answer</th>                         
                            <th>Actions</th>
                        </thead>s
                        </tr>
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
    $('#question_data').DataTable({
        processing: true,
        serverSide: true,
        ajax: '{!! route('question_data') !!}',
        columns: [
            { data: 'id', name: 'id' },
            { data: 'question', name: 'question' },
            { data: 'option1', name: 'option1' },
            { data: 'option2', name: 'option2' },
            { data: 'option3', name: 'option3' },
            { data: 'option4', name: 'option4' },
            { data: 'ans_id', name: 'ans_id' },
            { data: 'actions', name: 'actions' }

        ]
    });
});
</script>
@endpush
