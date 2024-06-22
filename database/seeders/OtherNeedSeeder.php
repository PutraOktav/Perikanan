<?php

namespace Database\Seeders;

use App\Models\OtherNeed;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class OtherNeedSeeder extends Seeder
{
    public function run()
    {
        $otherNeeds = [
            ['name' => 'Aerator'],
            ['name' => 'Filter Kolam'],
            ['name' => 'Jaring'],
            ['name' => 'Alat Ukur pH'],
            ['name' => 'Vitamin Ikan'],
        ];

        foreach ($otherNeeds as $otherNeed) {
            OtherNeed::create($otherNeed);
        }
    }
}
