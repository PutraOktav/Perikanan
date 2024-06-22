<div class="container mx-auto">
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4">
        <div class="bg-white rounded-lg shadow-md">
            <div class="p-4 bg-blue-500 text-white rounded-t-lg">Fish Type</div>
            <div class="p-4">
                <p class="text-lg font-bold">Total Fish Type: {{ $fishTypeCount }}</p>
            </div>
        </div>
        <div class="bg-white rounded-lg shadow-md">
            <div class="p-4 bg-green-500 text-white rounded-t-lg">Fish Food</div>
            <div class="p-4">
                <p class="text-lg font-bold">Total Fish Food: {{ $fishFoodCount }}</p>
            </div>
        </div>
        <div class="bg-white rounded-lg shadow-md">
            <div class="p-4 bg-yellow-500 text-white rounded-t-lg">Histories</div>
            <div class="p-4">
                <p class="text-lg font-bold">Total Histories: {{ $riwayatCount }}</p>
            </div>
        </div>
        <div class="bg-white rounded-lg shadow-md">
            <div class="p-4 bg-red-500 text-white rounded-t-lg">Histories Sampling</div>
            <div class="p-4">
                <p class="text-lg font-bold">Total Histories: {{ $riwayatSamplingCount }}</p>
            </div>
        </div>
    </div>
</div>
