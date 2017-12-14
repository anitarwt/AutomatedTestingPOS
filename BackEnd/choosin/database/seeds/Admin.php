<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class Admin extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $faker = Faker::create('id_ID');
        
               $limit = 20;
        
               for ($i = 0; $i < $limit; $i++) {
                   DB::table('admin')->insert([
                    'nama' => $faker->unique()->name,
                    'username' => $faker->unique()->username,
                    'password' => bcrypt('password'),
                    'status'=> '1'
                   ]);
               }
    }
}
