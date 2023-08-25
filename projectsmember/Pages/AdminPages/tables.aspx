﻿<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeBehind="tables.aspx.cs" Inherits="projectsmember.tables" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">--%>
    <link rel="icon" type="image/png" href="../../Content/Image/img/tablefavicon.png">
    <title>Tables</title>
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
                        <a class="nav-link text-white " href="Dashboard.aspx">
                            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                                <i class="material-icons opacity-10">dashboard</i>
                            </div>
                            <span class="nav-link-text ms-1">Dashboard</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white active bg-gradient-primary" href="tables.aspx">
                            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                                <i class="material-icons opacity-10">table_view</i>
                            </div>
                            <span class="nav-link-text ms-1">Tables</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white " href="projectManagement.aspx">
                            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                                <i class="material-icons opacity-10">receipt_long</i>
                            </div>
                            <span class="nav-link-text ms-1">project Management</span>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link text-white " href="MasterAdmin.aspx">
                            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                                <%--<i class="material-icons opacity-10">notifications</i>--%>
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
                                <%--test
                                <li class="nav-item dropdown pe-2 d-flex align-items-center">
                                    <a href="javascript:;" class="nav-link text-body p-0" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                                        <i class="fa fa-bell cursor-pointer"></i>
                                    </a>
                                    <ul class="dropdown-menu  dropdown-menu-end  px-2 py-3 me-sm-n4" aria-labelledby="dropdownMenuButton">
                                        <li class="mb-2">
                                            <a class="dropdown-item border-radius-md" href="javascript:;">
                                                <div class="d-flex py-1">
                                                    <div class="my-auto">
                                                        <img src="../assets/img/team-2.jpg" class="avatar avatar-sm  me-3 ">
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
                                                        <img src="../assets/img/small-logos/logo-spotify.svg" class="avatar avatar-sm bg-gradient-dark  me-3 ">
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
                                                                        test--%>
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
                    <div class="col-12">
                        <div class="card my-4">
                            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                                <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                                    <h6 class="text-white text-capitalize ps-3">Members table</h6>
                                </div>
                            </div>
                            <div class="card-body px-0 pb-2">
                                <div class="table-responsive">
                                    <asp:GridView ID="GViewFullMember" OnRowDataBound="GViewFullMember_RowDataBound" class="table  table-responsive table-hover  " runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceFullMembers" AllowPaging="True">
                                        <Columns>
                                            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>
                                            <asp:BoundField DataField="Subscribed" HeaderText="Ytube/Aparat" SortExpression="Subscribed"></asp:BoundField>
                                            <asp:BoundField DataField="WatchedVideos" HeaderText="WatchedVideos" SortExpression="WatchedVideos" ItemStyle-CssClass=" text-wrap  "></asp:BoundField>
                                            <asp:BoundField DataField="SojaID" HeaderText="SojaID" SortExpression="SojaID"></asp:BoundField>
                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                                            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone"></asp:BoundField>
                                            <asp:CheckBoxField DataField="Checked" HeaderText="Checked" SortExpression="Checked"></asp:CheckBoxField>
                                            <asp:CheckBoxField DataField="Contacted" HeaderText="Contacted" SortExpression="Contacted"></asp:CheckBoxField>
                                            <asp:CheckBoxField DataField="Engaged" HeaderText="Engaged" SortExpression="Engaged"></asp:CheckBoxField>
                                            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password"></asp:BoundField>
                                            <asp:BoundField DataField="URLs" HeaderText="URLs" SortExpression="URLs"></asp:BoundField>
                                        </Columns>
                                    </asp:GridView>
                                    <asp:SqlDataSource runat="server" ID="SqlDataSourceFullMembers" ConnectionString='<%$ ConnectionStrings:sojaIrishConnectionString %>' DeleteCommand="DELETE FROM [Members] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Members] ([Subscribed], [WatchedVideos], [SojaID], [Email], [Phone], [Checked], [Contacted], [Engaged], [Password], [URLs]) VALUES (@Subscribed, @WatchedVideos, @SojaID, @Email, @Phone, @Checked, @Contacted, @Engaged, @Password, @URLs)" SelectCommand="SELECT * FROM [Members]" UpdateCommand="UPDATE [Members] SET [Subscribed] = @Subscribed, [WatchedVideos] = @WatchedVideos, [SojaID] = @SojaID, [Email] = @Email, [Phone] = @Phone, [Checked] = @Checked, [Contacted] = @Contacted, [Engaged] = @Engaged, [Password] = @Password, [URLs] = @URLs WHERE [Id] = @Id">
                                        <DeleteParameters>
                                            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="Subscribed" Type="Int32"></asp:Parameter>
                                            <asp:Parameter Name="WatchedVideos" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="SojaID" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="Phone" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="Checked" Type="Boolean"></asp:Parameter>
                                            <asp:Parameter Name="Contacted" Type="Boolean"></asp:Parameter>
                                            <asp:Parameter Name="Engaged" Type="Boolean"></asp:Parameter>
                                            <asp:Parameter Name="Password" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="URLs" Type="String"></asp:Parameter>
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="Subscribed" Type="Int32"></asp:Parameter>
                                            <asp:Parameter Name="WatchedVideos" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="SojaID" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="Phone" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="Checked" Type="Boolean"></asp:Parameter>
                                            <asp:Parameter Name="Contacted" Type="Boolean"></asp:Parameter>
                                            <asp:Parameter Name="Engaged" Type="Boolean"></asp:Parameter>
                                            <asp:Parameter Name="Password" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="URLs" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
                                        </UpdateParameters>
                                    </asp:SqlDataSource>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="card my-4">
                            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                                <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                                    <h6 class="text-white text-capitalize ps-3">Projects table</h6>
                                </div>
                            </div>
                            <div class="card-body px-0 pb-2">
                                <div class="table-responsive">
                                    <asp:GridView ID="GViewFullProject" OnRowDataBound="GViewFullProject_RowDataBound" class="table table-responsive table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceFullProjects">
                                        <Columns>
                                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>
                                            <asp:BoundField DataField="ReferralSource" HeaderText="RefSource" SortExpression="ReferralSource"></asp:BoundField>
                                            <asp:BoundField DataField="ProjectType" HeaderText="ProjectType" SortExpression="ProjectType"></asp:BoundField>
                                            <asp:BoundField DataField="Budget" HeaderText="Budget(T)" SortExpression="Budget"></asp:BoundField>
                                            <asp:BoundField DataField="Timeline" HeaderText="Timeline(D)" SortExpression="Timeline"></asp:BoundField>
                                            <asp:BoundField DataField="ProjectFeatures" HeaderText="ProjFeatures" SortExpression="ProjectFeatures"></asp:BoundField>
                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                                            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone"></asp:BoundField>
                                            <asp:CheckBoxField DataField="checked" HeaderText="checked" SortExpression="checked"></asp:CheckBoxField>
                                            <asp:CheckBoxField DataField="contacted" HeaderText="contacted" SortExpression="contacted"></asp:CheckBoxField>
                                            <asp:CheckBoxField DataField="engaged" HeaderText="engaged" SortExpression="engaged"></asp:CheckBoxField>
                                            <asp:CheckBoxField DataField="offeredToMembers" HeaderText="offeredToMembers" SortExpression="offeredToMembers"></asp:CheckBoxField>
                                            <asp:BoundField DataField="Owners" HeaderText="Owners" SortExpression="Owners"></asp:BoundField>
                                            <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes"></asp:BoundField>
                                        </Columns>
                                    </asp:GridView>
                                    <asp:SqlDataSource runat="server" ID="SqlDataSourceFullProjects" ConnectionString='<%$ ConnectionStrings:sojaIrishConnectionString %>' DeleteCommand="DELETE FROM [Projects] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Projects] ([ReferralSource], [ProjectType], [Budget], [Timeline], [ProjectFeatures], [Email], [Phone], [checked], [contacted], [engaged], [offeredToMembers], [Owners], [Notes]) VALUES (@ReferralSource, @ProjectType, @Budget, @Timeline, @ProjectFeatures, @Email, @Phone, @checked, @contacted, @engaged, @offeredToMembers, @Owners, @Notes)" SelectCommand="SELECT * FROM [Projects]" UpdateCommand="UPDATE [Projects] SET [ReferralSource] = @ReferralSource, [ProjectType] = @ProjectType, [Budget] = @Budget, [Timeline] = @Timeline, [ProjectFeatures] = @ProjectFeatures, [Email] = @Email, [Phone] = @Phone, [checked] = @checked, [contacted] = @contacted, [engaged] = @engaged, [offeredToMembers] = @offeredToMembers, [Owners] = @Owners, [Notes] = @Notes WHERE [Id] = @Id">
                                        <DeleteParameters>
                                            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="ReferralSource" Type="Int32"></asp:Parameter>
                                            <asp:Parameter Name="ProjectType" Type="Int32"></asp:Parameter>
                                            <asp:Parameter Name="Budget" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="Timeline" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="ProjectFeatures" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="Phone" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="checked" Type="Boolean"></asp:Parameter>
                                            <asp:Parameter Name="contacted" Type="Boolean"></asp:Parameter>
                                            <asp:Parameter Name="engaged" Type="Boolean"></asp:Parameter>
                                            <asp:Parameter Name="offeredToMembers" Type="Boolean"></asp:Parameter>
                                            <asp:Parameter Name="Owners" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="Notes" Type="String"></asp:Parameter>
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="ReferralSource" Type="Int32"></asp:Parameter>
                                            <asp:Parameter Name="ProjectType" Type="Int32"></asp:Parameter>
                                            <asp:Parameter Name="Budget" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="Timeline" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="ProjectFeatures" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="Phone" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="checked" Type="Boolean"></asp:Parameter>
                                            <asp:Parameter Name="contacted" Type="Boolean"></asp:Parameter>
                                            <asp:Parameter Name="engaged" Type="Boolean"></asp:Parameter>
                                            <asp:Parameter Name="offeredToMembers" Type="Boolean"></asp:Parameter>
                                            <asp:Parameter Name="Owners" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="Notes" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <footer class="footer py-4  ">
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
    </form>
</body>
</html>
