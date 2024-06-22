<?php

namespace Database\Seeders;

use App\Models\Feed;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class FeedSeeder extends Seeder
{
    public function run()
    {
        $feeds = [
            ['name' => 'Pelet Apung'],
            ['name' => 'Pelet Tenggelam'],
            ['name' => 'Cacing Sutera'],
            ['name' => 'Kutu Air'],
            ['name' => 'Artemia'],
        ];

        foreach ($feeds as $feed) {
            Feed::create($feed);
        }
    }
}
