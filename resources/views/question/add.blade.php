@extends('layouts.app')

@section('content')
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Add Question</div>
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
                    <form action="{{ url('question/insert')}}" method="POST" class="form-horizontal">
                     {{ csrf_field()}}

                        <div class="form-group">
                            <label for="name" class="control-label col-sm-2">Question Name:</label>
                            <div class="col-sm-6"> 
                                <input type="text" name="q_name"class="form-control" id="firstname" placeholder="Enter Question ">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2" for="option1">Option-1:</label>
                            <div class="col-sm-3"> 
                              <input type="text" name="option1" class="form-control" id="option1" placeholder="Option-1">
                            </div>
                            <div class="col-sm-3">
                                <label class="radio-inline"><input type="radio" name="answer" value="1">Correct Answer</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="option2">Option-2:</label>
                            <div class="col-sm-3"> 
                              <input type="text" name="option2" class="form-control" id="option2" placeholder="Option-2">
                            </div>
                            <div class="col-sm-3">
                                <label class="radio-inline"><input type="radio" name="answer" value="2">Correct Answer</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="option3">Option-3:</label>
                            <div class="col-sm-3"> 
                              <input type="text" name="option3" class="form-control" id="option3" placeholder="Option-3">
                            </div>
                            <div class="col-sm-3">
                                <label class="radio-inline"><input type="radio" name="answer" value="3">Correct Answer</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="option4">Option-4:</label>
                            <div class="col-sm-3"> 
                              <input type="text" name="option4" class="form-control" id="option4" placeholder="Option-4">
                            </div>
                            <div class="col-sm-3">
                                <label class="radio-inline"><input type="radio" name="answer" value="4">Correct Answer</label>
                            </div>
                        </div>

                         <div class="form-group">
                            <button type="submit" class="btn btn-primary">Insert</button>
                            <a class="btn btn-default" href="{{ url('question/show')}}">Back</a>
                         </div>
                        
                    </form>
                </div>
                </div>
            </div>
        </div>
    </div>
@endsection
