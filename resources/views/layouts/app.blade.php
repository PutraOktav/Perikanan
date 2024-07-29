<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="icon" href="{{ asset('img/fish.png') }}" type="image/x-icon">
    <title>Aquatic Planning | @yield('title')</title>
    @include('layouts.partials.header')
</head>

<body id="page-top">
    @include('layouts.partials.sidebar')
</body>
@include('layouts.partials.footer')
@livewireScripts

</html>
<script>
    document.addEventListener('keydown', function(e) {
        if (e.ctrlKey && (e.key === 'c' || e.key === 'x' || e.key === 'v' || e.key === 'a')) {
            e.preventDefault();
        }
    });
</script>
