<div class="p-6 bg-white rounded-lg shadow-md">
    <h1 class="text-lg font-semibold text-gray-800 mb-4">{{ __('Kebutuhan Perikanan') }}</h1>
    @if (!$isCalculated)
        <div>
            <form wire:submit.prevent="calculate" class="space-y-4">
                <div>
                    <label for="fishType" class="block text-sm font-medium text-gray-700">Jenis Ikan</label>
                    <select id="fishType" wire:model="fishType"
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
                    <label for="area" class="block text-sm font-medium text-gray-700">Luas Kolam
                        (m<sup>2</sup>)</label>
                    <input type="number" id="area" wire:model="area"
                        class="mt-1 block w-full pl-3 pr-3 py-2 border-2 border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                    @error('area')
                        <span class="text-red-500">{{ $message }}</span>
                    @enderror
                </div>
                <button type="submit"
                    class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md shadow-sm text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                    Calculate
                </button>
            </form>
        </div>
    @else
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
                <label class="block text-sm font-medium text-gray-700">Biomassa Panen (kg) : </td>
                    <span>{{ $result['biomassa_panen_kg'] }}Kg</span>
            </div>
            <div>
                <label class="block text-sm font-medium text-gray-700">Total Pakan : </td>
                    <span>{{ $result['total_feed'] }} Kg</span>
            </div>
            <div>
                <label class="block text-sm font-medium text-gray-700">Perkiraan Waktu Panen : </td>
                    <span>{{ $result['waktu_panen'] }} Minggu</span>
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
                <label class="block text-sm font-medium text-gray-700">Harga Pakan : </td>
                    <span>Rp.{{ $result['feed_cost'] }}</span>
            </div>
            <div>
                <label class="block text-sm font-medium text-gray-700">Harga Ikan : </td>
                    <span>Rp. {{ $result['fish_cost'] }}</td>
            </div>
            <div>
                <label class="block text-sm font-medium text-gray-700">Total Harga : </td>
                    <span>Rp. {{ $result['all_cost'] }}</td>
            </div>
            <div>
                <label class="block text-sm font-medium text-gray-700">Waktu Sampling : </td>
                    <span>{{ $result['sampling'] }} Minggu</td>
            </div>
            <button wire:click="$set('isCalculated', false)"
                class="mt-4 inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md shadow-sm text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                Calculate Again
            </button>
        </div>
    @endif
</div>
