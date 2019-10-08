<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class test extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i=0; $i < 100; $i++) { 
        	DB::table('products')->insert([
	        	'title' => Str::random(10),
	        	'description' => Str::random(50),
	        ]);
        }
    }
}