<div class="container mx-auto animate-fade-in">
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4">
        <div class="bg-white rounded-lg shadow-md animate-fade-in">
            <div class="p-4 bg-blue-500 text-white rounded-t-lg">Tipe Ikan</div>
            <div class="p-4">
                <p class="text-lg font-bold">Total Tipe Ikan: {{ $fishTypeCount }}</p>
            </div>
        </div>
        <div class="bg-white rounded-lg shadow-md animate-fade-in" x-init="setTimeout(() => $el.classList.add('animate-fade-in'), 100)">
            <div class="p-4 bg-green-500 text-white rounded-t-lg">Pakan Ikan</div>
            <div class="p-4">
                <p class="text-lg font-bold">Total Pakan Ikan: {{ $fishFoodCount }}</p>
            </div>
        </div>
        <div class="bg-white rounded-lg shadow-md animate-fade-in" x-init="setTimeout(() => $el.classList.add('animate-fade-in'), 200)">
            <div class="p-4 bg-yellow-500 text-white rounded-t-lg">Riwayat</div>
            <div class="p-4">
                <p class="text-lg font-bold">Total Riwayat: {{ $riwayatCount }}</p>
            </div>
        </div>
        <div class="bg-white rounded-lg shadow-md animate-fade-in" x-init="setTimeout(() => $el.classList.add('animate-fade-in'), 300)">
            <div class="p-4 bg-red-500 text-white rounded-t-lg">Riwayat Sampling</div>
            <div class="p-4">
                <p class="text-lg font-bold">Total Riwayat: {{ $riwayatSamplingCount }}</p>
            </div>
        </div>
        <!-- New Cards for Fish, Feed, Medicine, and Other Needs -->
        <div class="bg-white rounded-lg shadow-md animate-fade-in" x-init="setTimeout(() => $el.classList.add('animate-fade-in'), 400)">
            <div class="p-4 bg-purple-500 text-white rounded-t-lg">Kelola Ikan</div>
            <div class="p-4">
                <p class="text-lg font-bold">Total Ikan: {{ $fishCount }}</p>
            </div>
        </div>
        <div class="bg-white rounded-lg shadow-md animate-fade-in" x-init="setTimeout(() => $el.classList.add('animate-fade-in'), 500)">
            <div class="p-4 bg-indigo-500 text-white rounded-t-lg">Kelola Pakan</div>
            <div class="p-4">
                <p class="text-lg font-bold">Total Pakan: {{ $feedCount }}</p>
            </div>
        </div>
        <div class="bg-white rounded-lg shadow-md animate-fade-in" x-init="setTimeout(() => $el.classList.add('animate-fade-in'), 600)">
            <div class="p-4 bg-pink-500 text-white rounded-t-lg">Kelola Obat</div>
            <div class="p-4">
                <p class="text-lg font-bold">Total Obat: {{ $medicineCount }}</p>
            </div>
        </div>
        <div class="bg-white rounded-lg shadow-md animate-fade-in" x-init="setTimeout(() => $el.classList.add('animate-fade-in'), 700)">
            <div class="p-4 bg-yellow-900 text-white rounded-t-lg">Kelola Alat</div>
            <div class="p-4">
                <p class="text-lg font-bold">Total Alat: {{ $otherNeedCount }}</p>
            </div>
        </div>
    </div>
</div>
