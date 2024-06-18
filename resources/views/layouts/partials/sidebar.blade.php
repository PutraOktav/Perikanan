<!-- Page Wrapper -->
<div id="wrapper" class="font-mono text-lg">
    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-laugh-wink"></i>
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
                <i class="fas fa-fw fa-table"></i>
                <span>{{ __('Kebutuhan') }}</span>
            </a>
        </li>

        <li class="nav-item hover:font-serif {{ Nav::isRoute('fish-farm-sampling-calculator') }}">
            <a class="nav-link" href="{{ route('fish-farm-sampling-calculator') }}">
                <i class="fas fa-fw fa-table"></i>
                <span>{{ __('Kebutuhan Sampling') }}</span>
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
                    <span>Copyright &copy; Putra Winly Octavianto 2021 - {{ date('Y') }}</span><br> Hubungi :
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
