<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class Booking extends Seeder
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
        
               $limit = 30;
        
               for ($i = 0; $i < $limit; $i++) {
                   DB::table('booking')->insert([
                    'id_user' => $faker->biasedNumberBetween($min = 1, $max = 25, $function = 'sqrt'),
                    'kode' => $faker->unique()->bankAccountNumber,
                    'tanggal' => $faker->dateTime($max = 'now', $timezone = null),
                    'atas_nama' => $faker->name,
                    'id_tempat_makan' => $faker->biasedNumberBetween($min = 1, $max = 25, $function = 'sqrt'),
                    'keterangan' => $faker->word,
                    'status_bayar' => $faker->randomElement($array = ['1', '0']),
                    'metode_bayar' => $faker->randomElement($array = ['transfer', 'payment_gateway']),
                    'status'=> '1'
                   ]);
               }
    }
}
