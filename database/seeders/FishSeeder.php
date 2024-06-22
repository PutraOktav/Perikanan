<?php

namespace Database\Seeders;

use App\Models\Fish;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class FishSeeder extends Seeder
{
    public function run()
    {
        $fishes = [
            ['name' => 'Gurame'],
            ['name' => 'Nila'],
            ['name' => 'Bawal'],
            ['name' => 'Lele'],
            ['name' => 'Mujahir'],
            ['name' => 'Koi'],
            ['name' => 'Koki'],
            ['name' => 'Cupang'],
        ];

        foreach ($fishes as $fish) {
            Fish::create($fish);
        }
    }
}
