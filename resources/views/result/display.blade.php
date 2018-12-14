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

                <div class="panel-heading">
                    <a href="{{ url('/home')}}" class="btn btn-warning pull-right">Back</a>
                   <div class="clearfix"></div>
               </div> 

                <div class="panel-body">
                   @if (session('success'))
                        <div class="alert alert-success">
                            {{ session('success') }}
                        </div>
                    @endif 
                     <table class="table table-border" id="result_datatable_display">
                        <tr><thead>
                            <th>Sr. No.</th>                       
                            <th>Candidate Name</th>                         
                            <th>Obtain Question</th>                 
                            <th>Correct answer</th>
                            <th>Incorrect answer</th>
                            </thead>
                            <tbody></tbody>
                        </tr>
             
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
    $('#result_datatable_display').DataTable({
        processing: true,
        serverSide: true,
        ajax: '{!! route('result_datatable_display') !!}',
        columns: [
            { data: 'id', name: 'id' },
            { data: 'name', name: 'name' },
            { data: 'total', name: 'total' },
            { data: 'correct', name: 'correct' },
            { data: 'incorrect', name: 'incorrect' }
           

        ]
    });
});
</script>
@endpush
