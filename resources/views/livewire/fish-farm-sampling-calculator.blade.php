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
                            name="ukuranIkanSampling"
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
                        Calculate
                    </button>
                </form>
            @endif

            {{-- Menampilkan hasil perhitungan --}}
            @if ($result)
                <div class="mt-4 bg-gray-100 rounded-lg p-4">
                    <h3 class="text-lg font-semibold text-gray-800 mb-2">Hasil Perhitungan</h3>
                    <table class="min-w-full divide-y divide-gray-200">
                        <tbody class="bg-white divide-y divide-gray-200">
                            <tr>
                                <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">Nama Ikan</td>
                                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">{{ $fishTypeName }}</td>
                            </tr>
                            <tr>
                                <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">Luas Kolam
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">{{ $area }}
                                    m<sup>2</sup></td>
                            </tr>
                            <tr>
                                <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">Total Ikan
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                                    {{ $result['total_fish'] }} Ekor</td>
                            </tr>
                            <tr>
                                <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">Pakan Per Hari
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                                    {{ $result['feed_per_day'] }} Kg</td>
                            </tr>
                            <tr>
                                <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">Biomassa (kg)
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                                    {{ $result['biomassa_kg'] }} Kg</td>
                            </tr>
                            <tr>
                                <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">Nama Pakan
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                                    {{ $result['nama_pakan'] }}</td>
                            </tr>
                            <tr>
                                <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">Waktu Sampling
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">{{ $result['sampling'] }}
                                    Minggu</td>
                            </tr>
                            <tr>
                                <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">Pakan Pra
                                    Sampling</td>
                                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                                    {{ $result['feedSampling'] }} Kg</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            @endif
        </div>
    </div>
</div>
