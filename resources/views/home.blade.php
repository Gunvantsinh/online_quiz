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

                <div class="panel-heading">Candidate List 
                  
                <!-- <a href="question/show" class="btn btn-primary pull-right">View Question</a> -->
                   <div class="clearfix"></div>
               </div> 

                <div class="panel-body">
                   @if (session('success'))
                        <div class="alert alert-success">
                            {{ session('success') }}
                        </div>
                    @endif 
                     <table class="table table-border" id="candidate-table">
                        <thead>
                        <tr>
                            <th>Sr. No.</th>
                            <th>Candidate Name</th>
                            <th>Actions</th>
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
    $('#candidate-table').DataTable({
        processing: true,
        serverSide: true,
        ajax: '{!! route('candidate_data') !!}',
        columns: [
            { data: 'id', name: 'id' },
            { data: 'name', name: 'name' },
            { data: 'actions', name: 'actions'}
        ]
    });
});
</script>
@endpush
