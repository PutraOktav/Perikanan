<div class="p-6 bg-white rounded-lg shadow-md">
    <h1 class="text-lg font-semibold text-gray-800 mb-4">{{ __('Kebutuhan Perikanan Sampling') }}</h1>
    <div class="container">
        <div class="space-y-4">
            {{-- Menampilkan formulir --}}
            @if (!$result)
                <form wire:submit.prevent="calculate" class="space-y-4">
                    @csrf

                    <div>
                        <label for="fishType" class="block text-sm font-medium text-gray-700">Jenis Ikan</label>
                        <select wire:model="fishType" id="fishType" name="fish_type"
                            class="mt-1 block w-full pl-3 pr-10 py-2 text-base border-2 border-gray-300 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm rounded-md">
                            <option value="">Pilih Jenis Ikan</option>
                            @foreach ($fishTypes as $type)
                                <option value="{{ $type->id }}">{{ $type->name }}</option>
                            @endforeach
                        </select>
                        @error('fishType')
                            <span class="text-red-500">{{ $message }}</span>
                        @enderror
                    </div>

                    <div>
                        <label for="ukuranIkanSampling" class="block text-sm font-medium text-gray-700">Ukuran Ikan
                            (gram)</label>
                        <input wire:model="ukuranIkanSampling" type="number" id="ukuranIkanSampling"
                            name="ukuran_ikan_sampling"
                            class="mt-1 block w-full pl-3 pr-3 py-2 border-2  border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                        @error('ukuranIkanSampling')
                            <span class="text-red-500">{{ $message }}</span>
                        @enderror
                    </div>

                    <div>
                        <label for="area" class="block text-sm font-medium text-gray-700">Luas Kolam
                            (m<sup>2</sup>)</label>
                        <input wire:model="area" type="number" id="area" name="area"
                            class="mt-1 block w-full pl-3 pr-3 py-2 border-2 border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                        @error('area')
                            <span class="text-red-500">{{ $message }}</span>
                        @enderror
                    </div>
                    <button type="submit"
                        class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md shadow-sm text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                        Hitung
                    </button>
                </form>
            @endif

            {{-- Menampilkan hasil perhitungan --}}
            @if ($result)
                <div class="mt-4 bg-gray-100 rounded-lg p-4">
                    <h3 class="text-lg font-semibold text-gray-800 mb-2">Hasil Perhitungan</h3>
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Nama Ikan : </td>
                            <span>{{ $fishTypeName }}</span>
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Total Ikan : </td>
                            <span>{{ $result['total_fish'] }} Ekor</span>
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Pakan Per Hari : </td>
                            <span>{{ $result['feed_per_day'] }} Gram</span>
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Biomassa (kg) : </td>
                            <span>{{ $result['biomassa_kg'] }} Kg</span>
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Nama Pakan : </td>
                            <span>{{ $result['nama_pakan'] }}</span>
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Waktu Sampling : </td>
                            <span>{{ $result['sampling'] }} Minggu</td>
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-gray-700">Pakan Pra Sampling : </td>
                            <span>{{ $result['feedSampling'] }} Kg</td>
                    </div>
                </div>
            @endif
        </div>
    </div>
</div>
