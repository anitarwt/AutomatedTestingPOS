<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class Pembayaran extends Seeder
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
            DB::table('pembayaran')->insert([
             'id_booking' => $faker->unique()->biasedNumberBetween($min = 1, $max = 20, $function = 'sqrt'),
             'total_bayar' => $faker->biasedNumberBetween($min = 5000, $max = 500000, $function = 'sqrt'),
             'status'=> '1'
            ]);
        }
    }
}
