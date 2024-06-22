<div>
    <h1 class="text-2xl font-semibold mb-4">List Stok Alat</h1>

    <!-- Form to add new Other Need -->
    <form wire:submit.prevent="store" class="mb-4">
        <div class="flex items-center mb-4">
            <label for="name" class="mr-2">Nama:</label>
            <input type="text" id="name" wire:model="name" placeholder="Masukkan Nama"
                class="border rounded-md px-3 py-1 w-60">
            @error('name')
                <span class="text-red-500">{{ $message }}</span>
            @enderror
        </div>

        <div class="flex items-center mb-4">
            <label for="stock" class="mr-2">Stok:</label>
            <input type="number" id="stock" wire:model="stock" placeholder="Masukkan Stok"
                class="border rounded-md px-3 py-1 w-32">
            @error('stock')
                <span class="text-red-500">{{ $message }}</span>
            @enderror
        </div>

        <button type="submit" class="bg-blue-500 hover:bg-blue-600 text-white px-4 py-2 rounded-md">Tambah
            Lain</button>
    </form>

    <!-- List of Other Needs -->
    <table class="w-full border-collapse">
        <thead>
            <tr>
                <th class="px-4 py-2 border">Nama</th>
                <th class="px-4 py-2 border">Stok</th>
                <th class="px-4 py-2 border">Aksi</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($otherNeeds as $need)
                <tr>
                    <td class="px-4 py-2 border">{{ $need->name }}</td>
                    <td class="px-4 py-2 border">{{ $need->stock }} Unit</td>
                    <td class="px-4 py-2 border">
                        <button wire:click="delete({{ $need->id }})"
                            class="bg-red-500 hover:bg-red-600 text-white px-2 py-1 rounded-md">Hapus</button>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
