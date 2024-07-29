<!-- Page Wrapper -->
<div id="wrapper" class="font-mono text-lg bg-gray-100">
    <!-- Sidebar -->
    <ul class="navbar-nav bg-gray-900 sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-fish text-blue-500"></i>
            </div>
            <div class="sidebar-brand-text mx-3 text-blue-500 hover:text-blue-700">Aquatic Planning</div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Nav Item - Dashboard -->
        <li class="nav-item">
            <a class="nav-link" href="/">
                <i class="fas fa-fw fa-home"></i>
                <span>{{ __('Dashboard') }}</span>
            </a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading text-blue-500">
            {{ __('Menu') }}
        </div>

        <!-- Nav Item - Pages -->
        <li class="nav-item">
            <a class="nav-link" href="{{ route('fish-calculator') }}">
                <i class="fas fa-fw fa-calculator"></i>
                <span>{{ __('Kebutuhan') }}</span>
            </a>
        </li>

        <!-- Nav Item - Sampling -->
        <li class="nav-item">
            <a class="nav-link" href="{{ route('fish-farm-sampling-calculator') }}">
                <i class="fas fa-fw fa-seedling"></i>
                <span>{{ __('Kebutuhan Sampling') }}</span>
            </a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Nav Item - Utilities -->

        <li class="nav-item">
            <a class="nav-link" href="{{ route('hpp') }}">
                <i class="fas fa-fw fa-money-bill-alt"></i>
                <span>{{ __('HPP') }}</span>
            </a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading text-blue-500">
            {{ __('Transaksi Menu') }}
        </div>

        <!-- Nav Item - Charts -->
        <li class="nav-item">
            <a class="nav-link" href="{{ route('transaksi') }}">
                <i class="fas fa-fw fa-exchange-alt"></i>
                <span>{{ __('Transaksi') }}</span>
            </a>
        </li>

        <!-- Nav Item - Tables -->
        <li class="nav-item">
            <a class="nav-link" href="{{ route('feed-transactions') }}">
                <i class="fas fa-fw fa-seedling"></i>
                <span>{{ __('Pakan') }}</span>
            </a>
        </li>

        <!-- Nav Item - Tables -->
        <li class="nav-item">
            <a class="nav-link" href="{{ route('fish-transactions') }}">
                <i class="fas fa-fw fa-fish"></i>
                <span>{{ __('Ikan') }}</span>
            </a>
        </li>

        <!-- Nav Item - Tables -->
        <li class="nav-item">
            <a class="nav-link" href="{{ route('medicine-transactions') }}">
                <i class="fas fa-fw fa-pills"></i>
                <span>{{ __('Obat') }}</span>
            </a>
        </li>

        <!-- Nav Item - Tables -->
        <li class="nav-item">
            <a class="nav-link" href="{{ route('other-need-transactions') }}">
                <i class="fas fa-fw fa-tools"></i>
                <span>{{ __('Alat') }}</span>
            </a>
        </li>

        <!-- Nav Item - Logout -->
        <li class="nav-item">
            <form method="POST" action="{{ route('logout') }}">
                @csrf
                <button type="submit" class="nav-link bg-transparent border-0 w-full text-left">
                    <i class="fas fa-fw fa-sign-out-alt"></i>
                    <span>{{ __('Logout') }}</span>
                </button>
            </form>
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
