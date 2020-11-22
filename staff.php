<?php
session_start();

require_once "pdo.php";

if ( !isset($_SESSION['userid']) || strlen($_SESSION['userid']) < 1  ) {
    die('Name parameter missing');
}

 ?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title> Dashboard</title>

    <!-- Custom fonts for this template-->
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Dashboard</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="dashboard_admin.php">
                    <i class="fas fa-tachometer-alt"></i>
                    <span>Add Hospital Staff</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">



            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="delete.php" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">

                    <span>Delete Hospital Staff</span>
                </a>


            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="patdet.php" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-chevron-right"></i>
                    <span>patients details</span>
                </a>
                            </li>
 <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-chevron-right"></i>
                    <span>staff details</span>
                </a>
                            </li>


            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">



            <!-- Sidebar Message -->
            <div class="sidebar-card">
                <img class="sidebar-card-illustration mb-2" src="img/undraw_rocket.svg" alt="">
                <a class="btn btn-success btn-sm" href="logout.php">logout</a>
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

                    <!-- Topbar Search -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <!-- Counter - Alerts -->

                            </a>
                            <!-- Dropdown - Alerts -->

                        </li>

                        <!-- Nav Item - Messages -->

                        <div class="topbar-divider d-none d-sm-block"></div>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->


                    <!-- Content Row -->
                          <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>UserID</th>
                                            <th>Name</th>
                                            <th>address </th>
                                            <th>Adhar</th>
                                            <th>Education</th>
                                            <th>Age</th>
                                            <th>DOJ</th>
                                            <th>gender</th>
                                            <th>Designation</th>
                                        </tr>
                                    </thead>

                                    <?php
                                    if(isset($_SESSION['userid'])){
                                      $stmtf = $pdo->query('SELECT * FROM staffdet');
                                      $rowf = $stmtf->fetchAll(PDO::FETCH_ASSOC);
                                      foreach ( $rowf as $rowsf ) {
                                          echo "<tr><td>";
                                          echo(htmlentities($rowsf['userid']));
                                          echo "</td><td>";
                                          echo(htmlentities($rowsf['name']));
                                          echo "</td><td>";
                                          echo(htmlentities($rowsf['address']));
                                          echo "</td><td>";
                                          echo(htmlentities($rowsf['adhar']));
                                          echo "</td><td>";
                                          echo(htmlentities($rowsf['education']));
                                          echo "</td><td>";
                                          echo(htmlentities($rowsf['age']));
                                          echo "</td><td>";
                                          echo(htmlentities($rowsf['doj']));
                                          echo "</td><td>";
                                          if($rowsf['gender']==1)echo "Male";
                                          else if($rowsf['gender']==2)echo "Female";
                                          else if($rowsf['gender']==3)echo "Other";
                                          echo "</td><td>";
                                          if($rowsf['desg']==1)echo "Doctor";
                                          else if($rowsf['desg']==2)echo "Nurse";
                                          else if($rowsf['desg']==3)echo "other staff";
                                          echo('</td></tr>');
                                      }
                                    }
                                ?>



                                </table>
                            </div>
                        </div>
                    </div>

                </div>

                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span></span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->


    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>

</body>

</html>