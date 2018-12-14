<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;

class questionController extends Controller {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function insert(Request $request) {
        DB::table('question')->insert([
            "question" => $request->q_name,
            "option1" => $request->option1,
            "option2" => $request->option2,
            "option3" => $request->option3,
            "option4" => $request->option4,
            "ans_id" => $request->answer
        ]);
        return redirect()->route('show')->with('success', 'Insert Successfully');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id) {
        $question_edit = DB::table('question')
                ->where('id', $id)
                ->first();
        return view('question/edit', ['q_edit' => $question_edit]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id) {
        DB::table('question')
                ->where('id', $id)
                ->update([
                    "question" => $request->q_name,
                    "option1" => $request->option1,
                    "option2" => $request->option2,
                    "option3" => $request->option3,
                    "option4" => $request->option4,
                        //"ans_id" => $request->answer,
        ]);

        return redirect('question/show')->with('Success', 'Update success!!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function delete($id) {
        DB::table('question')->where('id', $id)->delete();
        return redirect('question/show')->with('success', 'delete success!!');
    }

    public function candidate_add(Request $request) {
        DB::table('candidate')->insert([
            "name" => $request->name
        ]);
        $id = DB::getPdo()->lastInsertId();
        ;
        //dd($id);
        session(['candidate_id' => $id]);
        return redirect('question/1');
    }

    public function question_show($id) {
        $question_show = DB::table('question')
                ->where('id', $id)
                ->first();
        return view('question/question_show', ['question' => $question_show]);
    }

    public function question_submit(Request $request, $id) {
        $question = DB::table('question')
                ->where('id', $id)
                ->first();
        $question_chk = DB::table('candidate_question_answer')
        ->where('candidate_id',session('candidate_id'))
        ->where('question_id', $id)
        ->first();
            if ($question_chk == null ) 
            {
               DB::table('candidate_question_answer')->insert([
            "candidate_id" => session('candidate_id'),
            "question_id" => $id,
            "option_id" => $request->answer,
            "is_right" => $request->answer == $question->ans_id ? 1 : 0,
            "answer_time" => date('Y-m-d H:i:s')
                ]); 
            }
            else
            {
             DB::table('candidate_question_answer')
          ->where('candidate_id',session('candidate_id'))
            ->where('question_id', $id)
            ->update([
            "option_id" => $request->answer,
            "is_right" => $request->answer == $question->ans_id ? 1 : 0,
            "answer_time" => date('Y-m-d H:i:s')
                ]);
            }
            $total_question = DB::table('question')->count();
           if($question->id == $total_question)
           {
                return redirect('question/success');
           } 
        return redirect('question/' . ($question->id + 1));
        
    }

    public function result() {
        //$result = DB::table('candidate_question_answer')->select()->get();
        //return view('question/result',['results' => $result]);
    }
    public function question_success()
    {
        return view('question/success');
    }
     
}
