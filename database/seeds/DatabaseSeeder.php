<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;




class DatabaseSeeder extends Seeder {

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run() {
        $faker = Faker::create();
        DB::table('candidate')->truncate();
        for ($i = 0; $i < 10; $i++) {
            DB::table('candidate')->insert([
                'name' => $faker->name(10),
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s'),
            ]);
        }

        DB::table('question')->truncate();
        for ($i = 0; $i < 10; $i++) {
            DB::table('question')->insert([
                'question' => $faker->sentence(6),
                'option1' => $faker->name(5),
                'option2' => $faker->name(5),
                'option3' => $faker->name(4),
                'option4' => $faker->name(4),
                'ans_id' => $faker->randomElement([1,2,3,4]),
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s')
            ]);
        }


        DB::table('candidate_question_answer')->truncate();
        for($j = 1; $j <= 10; $j++){
            for ($i = 0; $i < 10; $i++) {
                DB::table('candidate_question_answer')->insert([
                    'candidate_id' => $j,
                    'question_id' => ($i + 1),
                    'option_id' => $faker->randomElement([1,2,3,4]),
                    'is_right' => $faker->boolean,
                    'answer_time' => $faker->dateTime($max = 'now', $timezone = null),
                    'created_at' => date('Y-m-d H:i:s'),
                    'updated_at' => date('Y-m-d H:i:s')
                ]);
            }
        }
    }


}
