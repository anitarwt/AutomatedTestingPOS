<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class TempatMakan extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('id_ID');
        
        $limit = 30;
        
               for ($i = 0; $i < $limit; $i++) {
                   DB::table('tempat_makan')->insert([
                    
                    'nama' => $faker->company,
                    'alamat' => $faker->address,
                    'id_pemilik' => $faker->biasedNumberBetween($min = 1, $max = 20, $function = 'sqrt'),
                    'latitude' => $faker->latitude($min = -7.798068, $max = -7.797068),
                    'longitude' => $faker->longitude($min = 110.360529, $max = 110.370529),
                    'kontak' => $faker->phoneNumber,
                    'status'=> '1'
                   ]);
               }
    }
}
