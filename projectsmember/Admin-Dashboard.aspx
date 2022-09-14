<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin-Dashboard.aspx.cs" Inherits="projectsmember.Admin_Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- <meta charset="utf-8" />-->
    <!--  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">-->
    <title>Admin Dashboard</title>
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
    <!-- Nucleo Icons -->
    <link href="css/nucleo-icons.css" rel="stylesheet" />
    <link href="css/nucleo-svg.css" rel="stylesheet" />
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <!-- Material Icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
    <!-- CSS Files -->
    <link id="pagestyle" href="css/material-dashboard.css" rel="stylesheet" />

</head>
<body class="g-sidenav-show  bg-gray-200">
    <form id="form1" runat="server">
        <aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3   bg-gradient-dark" id="sidenav-main">
            <div class="sidenav-header">
                <i class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
                <div class="navbar-brand m-0">
                    <img src="assets/img/logo-ct.png" class="navbar-brand-img h-100" alt="main_logo">
                    <asp:Label ID="lblName" class="ms-1 font-weight-bold text-white" runat="server" Text="Label"></asp:Label>
                   <!-- <span class="ms-1 font-weight-bold text-white">Management panel</span>-->
                </div>
            </div>
            <hr class="horizontal light mt-0 mb-2">
            <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link text-white active bg-gradient-primary" href="Admin-Dashboard.aspx">
                            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                                <i class="material-icons opacity-10">dashboard</i>
                            </div>
                            <span class="nav-link-text ms-1">Dashboard</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white " href="tables.aspx">
                            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                                <i class="material-icons opacity-10">table_view</i>
                            </div>
                            <span class="nav-link-text ms-1">Tables</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white " href="billing.aspx">
                            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                                <i class="material-icons opacity-10">receipt_long</i>
                            </div>
                            <span class="nav-link-text ms-1">Billing</span>
                        </a>
                    </li>
          
                    <li class="nav-item">
                        <a class="nav-link text-white " href="notifications.aspx">
                            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                                <i class="material-icons opacity-10">notifications</i>
                            </div>
                            <span class="nav-link-text ms-1">Notifications</span>
                        </a>
                    </li>
                 
                </ul>
            </div>
           
        </aside>
        <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
            <!-- Navbar -->
            <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" data-scroll="true">
                <div class="container-fluid py-1 px-3">
                    <!-- <nav aria-label="breadcrumb">
          <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
            <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;">Pages</a></li>
            <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Dashboard</li>
          </ol>
          <h6 class="font-weight-bolder mb-0">Dashboard</h6>
        </nav>-->
                    <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
                        <div class="ms-md-auto pe-md-3 d-flex align-items-center">
                            <ul class="navbar-nav   ">
                                <li class="nav-item d-flex align-items-center">
                                    <a href="login_admin.aspx" class="nav-link text-body font-weight-bold px-0">
                                        <i class="fa fa-user me-sm-1"></i>
                                        <span class="d-sm-inline d-none">Sign Out</span>
                                    </a>
                                </li>
                              <!--  <li class="nav-item d-xl-none ps-3 d-flex align-items-center">
                                    <a href="javascript:;" class="nav-link text-body p-0" id="iconNavbarSidenav">
                                        <div class="sidenav-toggler-inner">
                                            <i class="sidenav-toggler-line"></i>
                                            <i class="sidenav-toggler-line"></i>
                                            <i class="sidenav-toggler-line"></i>
                                        </div>
                                    </a>
                                </li>
                                <li class="nav-item px-3 d-flex align-items-center">
                                    <a href="javascript:;" class="nav-link text-body p-0">
                                        <i class="fa fa-cog fixed-plugin-button-nav cursor-pointer"></i>
                                    </a>
                                </li>-->
                                <li class="nav-item dropdown pe-2 d-flex align-items-center" style="padding-left:10px">
                                    <a href="javascript:;" class="nav-link text-body p-0" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                                        <i class="fa fa-bell cursor-pointer"></i>
                                    </a>
                                    <ul class="dropdown-menu  dropdown-menu-end  px-2 py-3 me-sm-n4" aria-labelledby="dropdownMenuButton">
                                        <li class="mb-2">
                                            <a class="dropdown-item border-radius-md" href="javascript:;">
                                                <div class="d-flex py-1">
                                                    <div class="my-auto">
                                                        <img src="assets/img/marie.jpg" class="avatar avatar-sm  me-3 ">
                                                    </div>
                                                    <div class="d-flex flex-column justify-content-center">
                                                        <h6 class="text-sm font-weight-normal mb-1">
                                                            <span class="font-weight-bold">New message</span> from Laur
                                                        </h6>
                                                        <p class="text-xs text-secondary mb-0">
                                                            <i class="fa fa-clock me-1"></i>
                                                            13 minutes ago
                                                        </p>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="mb-2">
                                            <a class="dropdown-item border-radius-md" href="javascript:;">
                                                <div class="d-flex py-1">
                                                    <div class="my-auto">
                                                        <img src="assets/img/small-logos/logo-spotify.svg" class="avatar avatar-sm bg-gradient-dark  me-3 ">
                                                    </div>
                                                    <div class="d-flex flex-column justify-content-center">
                                                        <h6 class="text-sm font-weight-normal mb-1">
                                                            <span class="font-weight-bold">New album</span> by Travis Scott
                                                        </h6>
                                                        <p class="text-xs text-secondary mb-0">
                                                            <i class="fa fa-clock me-1"></i>
                                                            1 day
                                                        </p>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item border-radius-md" href="javascript:;">
                                                <div class="d-flex py-1">
                                                    <div class="avatar avatar-sm bg-gradient-secondary  me-3  my-auto">
                                                        <svg width="12px" height="12px" viewBox="0 0 43 36" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                                            <title>credit-card</title>
                                                            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                <g transform="translate(-2169.000000, -745.000000)" fill="#FFFFFF" fill-rule="nonzero">
                                                                    <g transform="translate(1716.000000, 291.000000)">
                                                                        <g transform="translate(453.000000, 454.000000)">
                                                                            <path class="color-background" d="M43,10.7482083 L43,3.58333333 C43,1.60354167 41.3964583,0 39.4166667,0 L3.58333333,0 C1.60354167,0 0,1.60354167 0,3.58333333 L0,10.7482083 L43,10.7482083 Z" opacity="0.593633743"></path>
                                                                            <path class="color-background" d="M0,16.125 L0,32.25 C0,34.2297917 1.60354167,35.8333333 3.58333333,35.8333333 L39.4166667,35.8333333 C41.3964583,35.8333333 43,34.2297917 43,32.25 L43,16.125 L0,16.125 Z M19.7083333,26.875 L7.16666667,26.875 L7.16666667,23.2916667 L19.7083333,23.2916667 L19.7083333,26.875 Z M35.8333333,26.875 L28.6666667,26.875 L28.6666667,23.2916667 L35.8333333,23.2916667 L35.8333333,26.875 Z"></path>
                                                                        </g>
                                                                    </g>
                                                                </g>
                                                            </g>
                                                        </svg>
                                                    </div>
                                                    <div class="d-flex flex-column justify-content-center">
                                                        <h6 class="text-sm font-weight-normal mb-1">Payment successfully completed
                                                        </h6>
                                                        <p class="text-xs text-secondary mb-0">
                                                            <i class="fa fa-clock me-1"></i>
                                                            2 days
                                                        </p>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <!--<div class="input-group input-group-outline">
              <label class="form-label">Type here...</label>
              <input type="text" class="form-control">
            </div>-->
                        </div>

                    </div>
                </div>
            </nav>
            <!-- End Navbar -->
            <div class="container-fluid py-4">
                <div class="row">
                    <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
                        <div class="card">
                            <div class="card-header p-3 pt-2">
                                <div class="icon icon-lg icon-shape bg-gradient-dark shadow-dark text-center border-radius-xl mt-n4 position-absolute">
                                    <i class="material-icons opacity-10">weekend</i>
                                </div>
                                <div class="text-end pt-1">
                                    <p class="text-sm mb-0 text-capitalize">Today's Money</p>
                                    <h4 class="mb-0">$53k</h4>
                                </div>
                            </div>
                            <hr class="dark horizontal my-0">
                            <div class="card-footer p-3">
                                <p class="mb-0"><span class="text-success text-sm font-weight-bolder">+55% </span>than last week</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
                        <div class="card">
                            <div class="card-header p-3 pt-2">
                                <div class="icon icon-lg icon-shape bg-gradient-primary shadow-primary text-center border-radius-xl mt-n4 position-absolute">
                                    <i class="material-icons opacity-10">person</i>
                                </div>
                                <div class="text-end pt-1">
                                    <p class="text-sm mb-0 text-capitalize">Today's Users</p>
                                    <h4 class="mb-0">2,300</h4>
                                </div>
                            </div>
                            <hr class="dark horizontal my-0">
                            <div class="card-footer p-3">
                                <p class="mb-0"><span class="text-success text-sm font-weight-bolder">+3% </span>than last month</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
                        <div class="card">
                            <div class="card-header p-3 pt-2">
                                <div class="icon icon-lg icon-shape bg-gradient-success shadow-success text-center border-radius-xl mt-n4 position-absolute">
                                    <i class="material-icons opacity-10">person</i>
                                </div>
                                <div class="text-end pt-1">
                                    <p class="text-sm mb-0 text-capitalize">New Clients</p>
                                    <h4 class="mb-0">3,462</h4>
                                </div>
                            </div>
                            <hr class="dark horizontal my-0">
                            <div class="card-footer p-3">
                                <p class="mb-0"><span class="text-danger text-sm font-weight-bolder">-2%</span> than yesterday</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6">
                        <div class="card">
                            <div class="card-header p-3 pt-2">
                                <div class="icon icon-lg icon-shape bg-gradient-info shadow-info text-center border-radius-xl mt-n4 position-absolute">
                                    <i class="material-icons opacity-10">weekend</i>
                                </div>
                                <div class="text-end pt-1">
                                    <p class="text-sm mb-0 text-capitalize">Sales</p>
                                    <h4 class="mb-0">$103,430</h4>
                                </div>
                            </div>
                            <hr class="dark horizontal my-0">
                            <div class="card-footer p-3">
                                <p class="mb-0"><span class="text-success text-sm font-weight-bolder">+5% </span>than yesterday</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row  m-5 ">
                    <div class="col-lg-8 col-md-6 mb-md-0 mb-4">
                        <div class="card">
                            <div class="card-header pb-0">
                                <div class="row">
                                    <div class="col-lg-6 col-7">
                                        <h6>Projects</h6>
                                        <p class="text-sm mb-0">
                                            <i class="fa fa-check text-info" aria-hidden="true"></i>
                                            <span class="font-weight-bold ms-1">30 done</span> this month
                                        </p>
                                    </div>
                                    <div class="col-lg-6 col-5 my-auto text-end">
                                        <div class="dropdown float-lg-end pe-4">
                                            <a class="cursor-pointer" id="dropdownTable" data-bs-toggle="dropdown" aria-expanded="false">
                                                <i class="fa fa-ellipsis-v text-secondary"></i>
                                            </a>
                                            <ul class="dropdown-menu px-2 py-3 ms-sm-n4 ms-n5" aria-labelledby="dropdownTable">
                                                <li><a class="dropdown-item border-radius-md" href="javascript:;">Action</a></li>
                                                <li><a class="dropdown-item border-radius-md" href="javascript:;">Another action</a></li>
                                                <li><a class="dropdown-item border-radius-md" href="javascript:;">Something else here</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body px-0 pb-2">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="card h-100">
                            <div class="card-header pb-0">
                                <h6>Members</h6>
                                <p class="text-sm">
                                    <i class="fa fa-arrow-up text-success" aria-hidden="true"></i>
                                    <span class="font-weight-bold">24%</span> this month
                                </p>
                            </div>
                            <div class="card-body p-3">
                            </div>
                        </div>
                    </div>
                </div>
                <footer class="footer py-4 ">
                    <div class="container-fluid">
                        <div class="row align-items-center justify-content-lg-between">
                            <div class="copyright text-center text-sm text-muted ">
                                <p dir="rtl" class="text-muted small mb-0">Copyright &copy; تمامی حقوق مادی و معنوی، متعلق به وب سایت سوال جواب (soja.ir) و تیم مدیریتی آن می باشد.</p>
                            </div>

                            <!-- <div class="col-lg-6">
              <ul class="nav nav-footer justify-content-center justify-content-lg-end">
                <li class="nav-item">
                  <a href="https://www.creative-tim.com" class="nav-link text-muted" target="_blank">Creative Tim</a>
                </li>
                <li class="nav-item">
                  <a href="https://www.creative-tim.com/presentation" class="nav-link text-muted" target="_blank">About Us</a>
                </li>
                <li class="nav-item">
                  <a href="https://www.creative-tim.com/blog" class="nav-link text-muted" target="_blank">Blog</a>
                </li>
                <li class="nav-item">
                  <a href="https://www.creative-tim.com/license" class="nav-link pe-0 text-muted" target="_blank">License</a>
                </li>
              </ul>
            </div>-->
                        </div>
                    </div>
                </footer>
            </div>
        </main>

        <!--   Core JS Files   -->
        <script src="Scripts/popper.min.js"></script>
        <script src="Scripts/bootstrap.min.js"></script>
        <script src="assets/plugins/perfect-scrollbar.min.js"></script>
        <script src="assets/plugins/smooth-scrollbar.min.js"></script>
        <script src="assets/plugins/chartjs.min.js"></script>

        <!-- <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>
  <!-- Github buttons -->
        <script async defer src="https://buttons.github.io/buttons.js"></script>
        <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
        <script src="js/material-dashboard.min.js?v=3.0.4"></script>
    </form>
</body>
</html>
