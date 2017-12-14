<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class BookingDetail extends Seeder
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
            $harga = $faker->biasedNumberBetween($min = 5000, $max = 500000, $function = 'sqrt');
            $jumlah = $faker->biasedNumberBetween($min = 1, $max = 10, $function = 'sqrt');
            $total = $harga * $jumlah;

            DB::table('booking_detail')->insert([
             'id_booking' => $faker->unique()->biasedNumberBetween($min = 1, $max = 20, $function = 'sqrt'),
             'id_menu' => $faker->biasedNumberBetween($min = 1, $max = 70, $function = 'sqrt'),
             'jumlah' => $jumlah,
             'total_harga' => $total,
             'status'=> '1'
            ]);
        }
    }
}
