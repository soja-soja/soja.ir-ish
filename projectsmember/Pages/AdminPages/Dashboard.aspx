﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="projectsmember.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" type="image/png" href="../../Content/Image/img/usercoloredfavicon.png">
    <title>Dashboard</title>
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
    <!-- Nucleo Icons -->
    <link href="../../Content/CSS/css/nucleo-icons.css" rel="stylesheet" />
    <link href="../../Content/CSS/css/nucleo-svg.css" rel="stylesheet" />
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <!-- Material Icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
    <!-- CSS Files -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" />
    <link id="pagestyle" href="../../Content/CSS/css/material-dashboard.css" rel="stylesheet" />
</head>
<body class="g-sidenav-show  bg-gray-200">
    <form id="form1" runat="server">
        <aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3   bg-gradient-dark" id="sidenav-main">
            <div class="sidenav-header">
                <i class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
                <div class="navbar-brand m-0">
                    <img src="../../Content/Image/img/434-4349876_profile-icon-vector-png.png" class="navbar-brand-img  h-100" style="border-radius: 50%" alt="main_logo">

                    <asp:Label ID="lblName" class="ms-1 font-weight-bold text-white" runat="server" Text="Management panel"></asp:Label>

                    <i class="fa fa-circle text-success "></i>
                    <span style="color: white; font-size: small">online</span>

                </div>

            </div>
            <hr class="horizontal light mt-0 mb-2">
            <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link text-white active bg-gradient-primary" href="Dashboard.aspx">
                            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                                <!-- <i class="fa-solid fa-grid-2">dashboard</i>-->
                                <i class="material-icons opacity-10">dashboard</i>
                            </div>
                            <span class="nav-link-text ms-1">Dashboard</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white " href="tables.aspx">
                            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                                <!-- <i class="fa-light fa-table-list">table_view</i>-->
                                <i class="material-icons opacity-10">table_view</i>
                            </div>
                            <span class="nav-link-text ms-1">Tables</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white " href="projectManagement.aspx">
                            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                                <!-- <i class="fa-regular fa-money-check-dollar-pen">receipt_long</i>-->
                                <i class="material-icons opacity-10">receipt_long</i>
                            </div>
                            <span class="nav-link-text ms-1">project Management</span>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link text-white " href="MasterAdmin.aspx">
                            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                                <!--  <i class="fa-duotone fa-bell">notifications</i>-->
                                <i class="fa fa-user-secret"></i>
                            </div>
                            <span class="nav-link-text ms-1">Master Admin</span>
                        </a>
                    </li>

                </ul>
            </div>

        </aside>
        <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
            <!-- Navbar -->
            <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" data-scroll="true">
                <div class="container-fluid py-1 px-3">
                    <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
                        <div class="ms-md-auto pe-md-3 d-flex align-items-center">
                            <ul class="navbar-nav   ">
                                <li class="nav-item d-flex align-items-center">
                                    <a href="login_admin.aspx" class="nav-link text-body font-weight-bold px-0">
                                        <i class="fa fa-user me-sm-1"></i>
                                        <span class="d-sm-inline d-none">Sign Out</span>
                                    </a>
                                </li>
                                <%--test--%>
                                <li class="nav-item d-xl-none ps-3 d-flex align-items-center">
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
                                </li>
                                <%--test--%>
                                <li class="nav-item dropdown pe-2 d-flex align-items-center">
                                    <a href="javascript:;" class="nav-link text-body p-0" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                                        <i class="fa fa-bell cursor-pointer"><span class="bdgNotif">
                                            <asp:Label ID="lblNotif" runat="server" Style="color: yellow"></asp:Label></span></i>
                                    </a>
                                    <ul class="dropdown-menu  dropdown-menu-end  px-2 py-3 me-sm-n4" aria-labelledby="dropdownMenuButton">
                                        <li class="mb-2">
                                            <asp:Repeater ID="rptMsgNotif" runat="server">
                                                <ItemTemplate>
                                                    <a class="dropdown-item border-radius-md" href="tables.aspx?">
                                                        <div class="d-flex py-1">
                                                            <div class="d-flex flex-column justify-content-center">
                                                                <h6 class="text-sm font-weight-normal mb-1">
                                                                    <span class="font-weight-bold"><%# Eval("SojaID") %></span> New User
                                                                </h6>
                                                                <p class="text-xs text-secondary mb-0">
                                                                    <i class="fa fa-user-circle me-1"></i>
                                                                    and more...
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
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
                                    <p class="text-sm mb-0 text-capitalize">New Project</p>
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
                <div class="row mb-4 mt-4 ">
                    <div class="col-lg-8 col-md-6 mb-md-0 mb-4 px-1 ">
                        <div class="card">
                            <div class="card-header pb-0">
                                <div class="row">
                                    <div class="col-lg-6 col-7">
                                        <h6>Members</h6>
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
                            <div class="card-body px-1 pb-2">
                                <div class="table table-responsive">

                                    <asp:GridView ID="GViewMemeber" class="table table-condensed  table-hover " runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceMembers" AllowPaging="True">
                                        <Columns>
                                            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>
                                            <asp:BoundField DataField="SojaID" HeaderText="SojaID" SortExpression="SojaID"></asp:BoundField>
                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                                            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone"></asp:BoundField>
                                        </Columns>
                                    </asp:GridView>
                                    <asp:SqlDataSource runat="server" ID="SqlDataSourceMembers" ConnectionString='<%$ ConnectionStrings:sojaIrishConnectionString %>' DeleteCommand="DELETE FROM [Members] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Members] ([SojaID], [Email], [Phone]) VALUES (@SojaID, @Email, @Phone)" SelectCommand="SELECT [Id], [SojaID], [Email], [Phone] FROM [Members]" UpdateCommand="UPDATE [Members] SET [SojaID] = @SojaID, [Email] = @Email, [Phone] = @Phone WHERE [Id] = @Id">
                                        <DeleteParameters>
                                            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="SojaID" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="Phone" Type="String"></asp:Parameter>
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="SojaID" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="Phone" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 px-1">
                        <div class="card h-100">
                            <div class="card-header pb-0">
                                <h6>Projects</h6>
                                <p class="text-sm">
                                    <i class="fa fa-arrow-up text-success" aria-hidden="true"></i>
                                    <span class="font-weight-bold">24%</span> this month
                                </p>
                            </div>
                            <div class="card-body px-1">



                                <asp:GridView ID="GViewProject" class="table table-condensed  table-responsive table-hover" OnRowDataBound="GViewProject_RowDataBound" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceProjects" AllowPaging="True">
                                    <Columns>
                                        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                                        <%--<asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>--%>
                                        <asp:BoundField DataField="ProjectType" HeaderText="ProjectType" SortExpression="ProjectType" ItemStyle-CssClass=" text-wrap  "></asp:BoundField>
                                        <asp:BoundField DataField="Budget" HeaderText="Budget(T)" SortExpression="Budget"></asp:BoundField>
                                        <asp:BoundField DataField="Timeline" HeaderText="Timeline(D)" SortExpression="Timeline"></asp:BoundField>
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource runat="server" ID="SqlDataSourceProjects" ConnectionString='<%$ ConnectionStrings:sojaIrishConnectionString %>' DeleteCommand="DELETE FROM [Projects] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Projects] ([ProjectType], [Budget], [Timeline]) VALUES (@ProjectType, @Budget, @Timeline)" SelectCommand="SELECT [Id], [ProjectType], [Budget], [Timeline] FROM [Projects]" UpdateCommand="UPDATE [Projects] SET [ProjectType] = @ProjectType, [Budget] = @Budget, [Timeline] = @Timeline WHERE [Id] = @Id">
                                    <DeleteParameters>
                                        <%--<asp:Parameter Name="Id" Type="Int32"></asp:Parameter>--%>
                                        <asp:Parameter Name="ProjectType" Type="Int32"></asp:Parameter>
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="ProjectType" Type="Int32"></asp:Parameter>
                                        <asp:Parameter Name="Budget" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="Timeline" Type="String"></asp:Parameter>
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="ProjectType" Type="Int32"></asp:Parameter>
                                        <asp:Parameter Name="Budget" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="Timeline" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
                                    </UpdateParameters>
                                </asp:SqlDataSource>

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
                        </div>
                    </div>
                </footer>
            </div>
        </main>
        <div class="fixed-plugin">
            <%--<a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
                <i class="material-icons py-2">settings</i>
            </a>--%>
            <div class="card shadow-lg">
                <div class="card-header pb-0 pt-3">
                    <div class="float-start">
                        <h5 class="mt-3 mb-0">Material UI Configurator</h5>
                        <p>See our dashboard options.</p>
                    </div>
                    <div class="float-end mt-4">
                        <button class="btn btn-link text-dark p-0 fixed-plugin-close-button">
                            <i class="material-icons">clear</i>
                        </button>
                    </div>
                    <!-- End Toggle Button -->
                </div>
                <hr class="horizontal dark my-1">
                <div class="card-body pt-sm-3 pt-0">
                    <!-- Sidebar Backgrounds -->
                    <div>
                        <h6 class="mb-0">Sidebar Colors</h6>
                    </div>
                    <a href="javascript:void(0)" class="switch-trigger background-color">
                        <div class="badge-colors my-2 text-start">
                            <span class="badge filter bg-gradient-primary active" data-color="primary" onclick="sidebarColor(this)"></span>
                            <span class="badge filter bg-gradient-dark" data-color="dark" onclick="sidebarColor(this)"></span>
                            <span class="badge filter bg-gradient-info" data-color="info" onclick="sidebarColor(this)"></span>
                            <span class="badge filter bg-gradient-success" data-color="success" onclick="sidebarColor(this)"></span>
                            <span class="badge filter bg-gradient-warning" data-color="warning" onclick="sidebarColor(this)"></span>
                            <span class="badge filter bg-gradient-danger" data-color="danger" onclick="sidebarColor(this)"></span>
                        </div>
                    </a>
                    <!-- Sidenav Type -->
                    <div class="mt-3">
                        <h6 class="mb-0">Sidenav Type</h6>
                        <p class="text-sm">Choose between 2 different sidenav types.</p>
                    </div>
                    <div class="d-flex">
                        <button class="btn bg-gradient-dark px-3 mb-2 active" data-class="bg-gradient-dark" onclick="sidebarType(this)">Dark</button>
                        <button class="btn bg-gradient-dark px-3 mb-2 ms-2" data-class="bg-transparent" onclick="sidebarType(this)">Transparent</button>
                        <button class="btn bg-gradient-dark px-3 mb-2 ms-2" data-class="bg-white" onclick="sidebarType(this)">White</button>
                    </div>
                    <p class="text-sm d-xl-none d-block mt-2">You can change the sidenav type just on desktop view.</p>
                    <!-- Navbar Fixed -->
                    <div class="mt-3 d-flex">
                        <h6 class="mb-0">Navbar Fixed</h6>
                        <div class="form-check form-switch ps-0 ms-auto my-auto">
                            <input class="form-check-input mt-1 ms-auto" type="checkbox" id="navbarFixed" onclick="navbarFixed(this)">
                        </div>
                    </div>
                    <hr class="horizontal dark my-3">
                    <div class="mt-2 d-flex">
                        <h6 class="mb-0">Light / Dark</h6>
                        <div class="form-check form-switch ps-0 ms-auto my-auto">
                            <input class="form-check-input mt-1 ms-auto" type="checkbox" id="dark-version" onclick="darkMode(this)">
                        </div>
                    </div>
                    <hr class="horizontal dark my-sm-4">
                    <%--<a class="btn bg-gradient-info w-100" href="https://www.creative-tim.com/product/material-dashboard-pro">Free Download</a>
                    <a class="btn btn-outline-dark w-100" href="https://www.creative-tim.com/learning-lab/bootstrap/overview/material-dashboard">View documentation</a>
                    <div class="w-100 text-center">
                        <a class="github-button" href="https://github.com/creativetimofficial/material-dashboard" data-icon="octicon-star" data-size="large" data-show-count="true" aria-label="Star creativetimofficial/material-dashboard on GitHub">Star</a>
                        <h6 class="mt-3">Thank you for sharing!</h6>
                        <a href="https://twitter.com/intent/tweet?text=Check%20Material%20UI%20Dashboard%20made%20by%20%40CreativeTim%20%23webdesign%20%23dashboard%20%23bootstrap5&amp;url=https%3A%2F%2Fwww.creative-tim.com%2Fproduct%2Fsoft-ui-dashboard" class="btn btn-dark mb-0 me-2" target="_blank">
                            <i class="fab fa-twitter me-1" aria-hidden="true"></i>Tweet
                        </a>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://www.creative-tim.com/product/material-dashboard" class="btn btn-dark mb-0 me-2" target="_blank">
                            <i class="fab fa-facebook-square me-1" aria-hidden="true"></i>Share
                        </a>
                    </div>--%>
                </div>
            </div>
        </div>
        <!--   Core JS Files   -->
        <script src="../../Content/Scripts/popper.min.js"></script>
        <script src="../../Content/Scripts/bootstrap.min.js"></script>
        <script src="../../Content/Scripts/perfect-scrollbar.min.js"></script>
        <script src="../../Content/Scripts/smooth-scrollbar.min.js"></script>
        <script src="../../Content/Scripts/chartjs.min.js"></script>
        <script>
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
        <script src="../../Content/JS/js/material-dashboard.min.js?v=3.0.4"></script>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    </form>
</body>
</html>
