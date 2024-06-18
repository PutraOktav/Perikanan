<?php

namespace App\Livewire;

use App\Models\Riwayat;
use Livewire\Component;
use App\Models\FishFood;
use App\Models\FishType;
use App\Models\RiwayatSampling;

class Dashboard extends Component
{
    public $fishTypeCount;
    public $fishFoodCount;
    public $riwayatCount;
    public $riwayatSamplingCount;

    public function mount()
    {
        $this->fishTypeCount = FishType::count();
        $this->fishFoodCount = FishFood::count();
        $this->riwayatCount = Riwayat::count();
        $this->riwayatSamplingCount = RiwayatSampling::count(); // Assuming there's a model named RiwayatSampling
    }

    public function render()
    {
        return view('livewire.dashboard');
    }
}
