<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class JenisMasakan extends Seeder
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
        $faker->addProvider(new \FakerRestaurant\Provider\en_US\FakerProvider($faker));
        
               $limit = 10;
        
               for ($i = 0; $i < $limit; $i++) {
                   DB::table('jenis_masakan')->insert([
                    'nama' => $faker->randomElement($array = ['Asia', 'Europa','Italian',
                    'Chinese','Indonesia','Jawa','Bandung','amerika','junkfood','yogyakarta']),
                    'status'=> '1'
                   ]);
               }
    }
}
