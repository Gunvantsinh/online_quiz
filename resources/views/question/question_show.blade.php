<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">
        <!-- Styles -->
        <link href="{{ asset('css/app.css') }}" rel="stylesheet">
        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Raleway', sans-serif;
                font-weight: 100;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 12px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
        </style>
    </head>
    <body>
        <div class="flex-center position-ref full-height">
       
            <div class="content">
                                    
                <div class="panel-body">
                    <div class="container">
                    <form action="{{ route('question_submit',$question->id)}}" method="POST" class="form-horizontal">
                     {{ csrf_field()}}
                        
                        <div class="form-group">
                            <label for="name" class="control-label col-sm-2">Question Name:</label>
                            <div class="col-sm-6"> 
                               <p>{{ $question->question }}</p>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2" for="option1">Option-1:</label>
                            
                            <div class="col-sm-3">
                                <label class="radio-inline"><input type="radio" name="answer" value="1"   >{{ $question->option1 }}</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="option2">Option-2:</label>
                           
                            <div class="col-sm-3">
                                <label class="radio-inline"><input type="radio" name="answer" value="2" > {{ $question->option2 }}</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="option3">Option-3:</label>
                           
                            <div class="col-sm-3">
                                <label class="radio-inline"><input type="radio" name="answer" value="3" >{{ $question->option3 }}</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="option4">Option-4:</label>
                         
                            <div class="col-sm-3">
                                <label class="radio-inline"><input type="radio" name="answer" value="4">{{ $question->option4 }}</label>
                            </div>
                        </div>

                         <div class="form-group">
                            <button type="submit" class="btn btn-primary">Next</button>
                         </div>
                         <div class="form-group">
                            @if($question->id != 1)
                            <a href="{{ url('question/'.($question->id - 1))}}" class="btn btn-primary pull-left">Prvious</a>
                            @endif
                         </div>
                        
                    </form>

                </div>
                </div>
           </div>


            </div>

        </div>
    </body>
</html>
