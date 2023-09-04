<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>


    <div class="row">

        <h1>Grafik Statistik</h1>
        <canvas id="grafikHistory"></canvas>

        <script>
            // Ambil data statistik dari PHP
            var jumlahPengguna = <?= $allUser; ?>;
            var jumlahSlot = <?= $slot; ?>;
            var jumlahReservasi = <?= $reservasi; ?>;
            var jumlahHistory = <?= $history; ?>;

            // Inisialisasi grafik menggunakan Chart.js
            var ctx = document.getElementById('grafikHistory').getContext('2d');
            var myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: ['User', 'Slot Service', 'Reservasi', 'History'],
                    datasets: [{
                        label: 'Statistik ',
                        data: [jumlahPengguna, jumlahSlot, jumlahReservasi, jumlahHistory],
                        backgroundColor: 'rgba(75, 192, 192, 0.2)',
                        borderColor: 'rgba(75, 192, 192, 1)',
                        borderWidth: 1
                    }]
                }
            });
        </script>

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                User</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $allUser ?></div>
                        </div>
                        <div class="col-auto">
                            <i class="fa fa-users fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                Service Slot</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $allSlot ?></div>
                        </div>
                        <div class="col-auto">
                            <i class="fa-solid fa-check-to-slot fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-danger shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                Reservasi</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $allReservasi ?></div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-tools fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Pending Requests Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                History</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $allHistory ?></div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-fw fa-history fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-info shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-success mb-1">
                            PENDAPATAN (Rp)</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800">Rp <?= number_format($totalPendapatan, 0, ',', '.'); ?></div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

</div>
<!-- End of Main Content -->