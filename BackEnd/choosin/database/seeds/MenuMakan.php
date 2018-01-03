<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;


class MenuMakan extends Seeder
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
        
               $limit = 50;
        
               for ($i = 0; $i < $limit; $i++) {
                   DB::table('menu_makanan')->insert([
                    'id_tempatmakan' => $faker->biasedNumberBetween($min = 1, $max = 20, $function = 'sqrt'),
                    
                    'nama' => $faker->randomElement($array = ['Cheese Pizza', 'Hamburger', 'Cheeseburger', 'Bacon Burger', 'Bacon Cheeseburger',
                    'Little Hamburger', 'Little Cheeseburger', 'Little Bacon Burger', 'Little Bacon Cheeseburger',
                    'Veggie Sandwich', 'Cheese Veggie Sandwich', 'Grilled Cheese',
                    'Cheese Dog', 'Bacon Dog', 'Bacon Cheese Dog', 'Pasta']),
                    
                    
                    'harga' => $faker->biasedNumberBetween($min = 5000, $max = 100000, $function = 'sqrt'),
                    'id_jenis_masakan' => $faker->biasedNumberBetween($min = 1, $max = 10, $function = 'sqrt'),
                    'status'=> '1'
                   ]);
               }
    }
}
