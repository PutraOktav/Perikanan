<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Medicine;

class MedicineSeeder extends Seeder
{
    public function run()
    {
        $medicines = [
            ['name' => 'Metronidazole'],
            ['name' => 'Oxytetracycline'],
            ['name' => 'Methylene Blue'],
            ['name' => 'Acriflavine'],
            ['name' => 'Praziquantel'],
        ];

        foreach ($medicines as $medicine) {
            Medicine::create($medicine);
        }
    }
}
