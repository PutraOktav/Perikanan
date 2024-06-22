<!-- Page Wrapper -->
<div id="wrapper" class="font-mono text-lg">
    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-fish"></i>
            </div>
            <div class="sidebar-brand-text mx-3 hover:font-serif">Aquatic Planning</div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            {{ __('Menu') }}
        </div>

        <!-- Nav Item -->
        <li class="nav-item hover:font-serif {{ Nav::isRoute('fish-calculator') }}">
            <a class="nav-link" href="{{ route('fish-calculator') }}">
                <i class="fas fa-fw fa-calculator"></i>
                <span>{{ __('Kebutuhan') }}</span>
            </a>
        </li>

        <li class="nav-item hover:font-serif {{ Nav::isRoute('fish-farm-sampling-calculator') }}">
            <a class="nav-link" href="{{ route('fish-farm-sampling-calculator') }}">
                <i class="fas fa-fw fa-vial"></i>
                <span>{{ __('Kebutuhan Sampling') }}</span>
            </a>
        </li>

        <!-- Heading -->
        <div class="sidebar-heading">
            {{ __('Transaksi Menu') }}
        </div>

        <li class="nav-item hover:font-serif {{ Nav::isRoute('transaksi') }}">
            <a class="nav-link" href="{{ route('transaksi') }}">
                <i class="fas fa-fw fa-exchange-alt"></i>
                <span>{{ __('Transaksi Utama') }}</span>
            </a>
        </li>

        <!-- Heading -->
        <div class="sidebar-heading">
            {{ __('Stok') }}
        </div>

        <li class="nav-item hover:font-serif {{ Nav::isRoute('feed-transactions') }}">
            <a class="nav-link" href="{{ route('feed-transactions') }}">
                <i class="fas fa-fw fa-seedling"></i>
                <span>{{ __('Stok Pakan') }}</span>
            </a>
        </li>

        <li class="nav-item hover:font-serif {{ Nav::isRoute('fish-transactions') }}">
            <a class="nav-link" href="{{ route('fish-transactions') }}">
                <i class="fas fa-fw fa-fish"></i>
                <span>{{ __('Stok Ikan') }}</span>
            </a>
        </li>

        <li class="nav-item hover:font-serif {{ Nav::isRoute('medicine-transactions') }}">
            <a class="nav-link" href="{{ route('medicine-transactions') }}">
                <i class="fas fa-fw fa-pills"></i>
                <span>{{ __('Stok Obat') }}</span>
            </a>
        </li>

        <li class="nav-item hover:font-serif {{ Nav::isRoute('other-need-transactions') }}">
            <a class="nav-link" href="{{ route('other-need-transactions') }}">
                <i class="fas fa-fw fa-tools"></i>
                <span>{{ __('Stok Lain') }}</span>
            </a>
        </li>
        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">
        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>
    </ul>
    <!-- End of Sidebar -->
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">
        <!-- Main Content -->
        <div id="content">
            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                <!-- Sidebar Toggle (Topbar) -->
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>
            </nav>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">
                @stack('notif')
                @yield('main-content')

            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- End of Main Content -->
        <!-- Footer -->
        <footer class="sticky-footer bg-white">
            <div class="container my-auto">
                <div class="copyright text-center my-auto">
                    <span>Copyright Aqua Planning 2021 - {{ date('Y') }}</span><br>
                    <a href="https://wa.me/6289506943980" class="text-blue-500 hover:text-blue-700">
                        📞 Putra Winly Octavianto
                    </a>
                </div>
            </div>
        </footer>
        <!-- End of Footer -->
    </div>
    <!-- End of Content Wrapper -->
</div>
