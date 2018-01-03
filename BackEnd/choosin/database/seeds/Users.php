<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class Users extends Seeder
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
                   DB::table('users')->insert([
                    'nama' => $faker->name,
                    'no_hp' => $faker->phoneNumber,
                    'password' => bcrypt('password'),
                    'email' => $faker->unique()->email,
                    'jenis_kelamin' => $faker->randomElement($array = ['laki-laki', 'perempuan']),
                    'status'=> '1'
                   ]);
               }
    }
}
