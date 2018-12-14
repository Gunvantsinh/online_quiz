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
                <div class="panel-heading">EDIT Question</div>
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                <div class="panel-body">
                    <div class="container">
                    <form action="{{ route('question/update',$q_edit->id)}}" method="POST" class="form-horizontal">
                     {{ csrf_field()}}
                        {{ method_field('PUT') }}
                        <div class="form-group">
                            <label for="name" class="control-label col-sm-2">Question Name:</label>
                            <div class="col-sm-6"> 
                                <input type="text" value="{{ $q_edit->question }}" name="q_name"class="form-control" id="firstname" placeholder="Enter Question ">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2" for="option1">Option-1:</label>
                            <div class="col-sm-3"> 
                              <input type="text" name="option1" value="{{ $q_edit->option1 }}" class="form-control" id="option1" placeholder="Option-1">
                            </div>
                            <div class="col-sm-3">
                                <label class="radio-inline"><input type="radio" name="answer" value="1"  {{ $q_edit->ans_id == '1' ? 'checked' : '' }} >Correct Answer</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="option2">Option-2:</label>
                            <div class="col-sm-3"> 
                              <input type="text" name="option2" value="{{ $q_edit->option2 }}" class="form-control" id="option2" placeholder="Option-2">
                            </div>
                            <div class="col-sm-3">
                                <label class="radio-inline"><input type="radio" name="answer" value="2" {{ $q_edit->ans_id == '2' ? 'checked' : '' }}>Correct Answer</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="option3">Option-3:</label>
                            <div class="col-sm-3"> 
                              <input type="text" name="option3" value="{{ $q_edit->option3 }}" class="form-control" id="option3" placeholder="Option-3">
                            </div>
                            <div class="col-sm-3">
                                <label class="radio-inline"><input type="radio" name="answer" value="3" {{ $q_edit->ans_id == '3' ? 'checked' : '' }}>Correct Answer</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="option4">Option-4:</label>
                            <div class="col-sm-3"> 
                              <input type="text" name="option4" value="{{ $q_edit->option4 }}" class="form-control" id="option4" placeholder="Option-4">
                            </div>
                            <div class="col-sm-3">
                                <label class="radio-inline"><input type="radio" name="answer" value="4" {{ $q_edit->ans_id == '4' ? 'checked' : '' }}>Correct Answer</label>
                            </div>
                        </div>

                         <div class="form-group">
                            <button type="submit" class="btn btn-primary">Update</button>
                            <a class="btn btn-default" href="{{ url('question/show')}}">Back</a>
                         </div>
                        
                    </form>
                </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
</body>
</html>
