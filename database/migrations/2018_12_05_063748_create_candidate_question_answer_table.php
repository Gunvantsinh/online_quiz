<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCandidateQuestionAnswerTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('candidate_question_answer', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('candidate_id');
            $table->integer('question_id');
            $table->integer('option_id');
            $table->boolean('is_right');
            $table->datetime('answer_time');
            $table->timestamps();
  
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('candidate_question_answer');
    }
}
