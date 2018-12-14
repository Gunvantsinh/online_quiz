<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Yajra\DataTables\Facades\DataTables;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function candidate_data(){
        return DataTables::queryBuilder(DB::table('candidate'))
        ->addColumn('actions', function ($candidate) {
                return view('candidate_actions', ['candidate' => $candidate]);
            })
        ->rawColumns(['actions'])
        ->make(true);
    }

    public function index()
    {
        return view('home');
    }

    public function delete($id)
    {
        DB::table('candidate')->where('id', $id)->delete();
     return redirect('home')->with('success', 'Delete success!!'); 

    }

    public function add()
    {
       return view('question/add');
    }

    public function show($id)
    {
        $candidate = DB::table('candidate')->where('id',$id)->first();
        return view('question/result',['candidate' => $candidate]);
      
    }

    public function candidate_result($id)
    {
     return DataTables::queryBuilder(DB::table('candidate_question_answer')
            ->join('question', 'question.id', '=', 'candidate_question_answer.question_id')
            ->select('candidate_question_answer.id AS id', 'question.question AS question'
            , 'question.option1 AS option1'
            , 'question.option2 AS option2'
            , 'question.option3 AS option3'
            , 'question.option4 AS option4',
              'candidate_question_answer.option_id AS option_id',
              'question.ans_id AS answer_id'
            )
            ->where('candidate_id', $id))
    ->make(true);

    }

    public function result_display()
    {
     
        return view('result/display');
    }
    public function result_datatable_display()
    {
        return DataTables::queryBuilder(DB::table('candidate_question_answer as can_out')
        ->join('candidate', 'candidate.id', '=', 'can_out.candidate_id')
        ->select('candidate.id as id','candidate.name AS name',
            DB::raw('( SELECT count(*) FROM candidate_question_answer as can_in
                WHERE 
                can_in.candidate_id = can_out.candidate_id ) as total'),
            DB::raw('( SELECT count(*) FROM candidate_question_answer as can_in
              WHERE 
              can_in.candidate_id = can_out.candidate_id and can_in.is_right = 1 ) as correct'
                    ),
            DB::raw('( SELECT count(*) FROM candidate_question_answer as can_in
                        WHERE can_in.candidate_id = can_out.candidate_id and can_in.is_right = 0 )
                        as incorrect')
            )
        ->groupBy('can_out.candidate_id'))
        ->make(true);


    }

    public function question_list() {
        return view('question/show');
    }
    public function question_data() 
    {
       return DataTables::queryBuilder(DB::table('question'))
        ->addColumn('actions', function ($question) {
                return view('question_data', ['question' => $question]);
            })
        ->rawColumns(['actions'])
        ->make(true);
    }

}
