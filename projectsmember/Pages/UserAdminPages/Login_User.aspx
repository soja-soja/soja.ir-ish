<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Login_User.aspx.cs" Inherits="projectsmember.Login_User" %>

<%@ Register Assembly="Recaptcha.Web" Namespace="Recaptcha.Web.UI.Controls" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" type="image/png" href="../../Content/Image/img/signInfavicon.png">
    <title>ورود به بخش کاربری</title>
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
    <link id="pagestyle" href="../../Content/CSS/css/material-dashboard.css?v=3.0.4" rel="stylesheet" />
    <%--https://github.com/tanveery/recaptcha-net--%>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
</head>
<body class="">
    <form id="form1" runat="server">
        <div class="container position-sticky z-index-sticky top-0">
            <div class="row">
                <div class="col-12">
                </div>
            </div>
        </div>
        <main class="main-content  mt-0">
            <section>
                <div class="page-header min-vh-100">
                    <div class="container">
                        <div class="row">
                            <div class="col-6 d-lg-flex d-none h-100 my-auto pe-0 position-absolute top-0 start-0 text-center justify-content-center flex-column">
                                <div class="position-relative bg-gradient-primary h-100 m-3 px-7 border-radius-lg d-flex flex-column justify-content-center" style="background-image: url('../../Content/Image/img/illustration-signin.jpg'); background-size: cover;">
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-5 col-md-7 d-flex flex-column ms-auto me-auto ms-lg-auto me-lg-5">
                                <div class="card z-index-0 fadeIn3 fadeInBottom">
                                    <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                                        <div class="bg-gradient-primary shadow-primary border-radius-lg py-3 pe-1">
                                            <h4 class="text-white font-weight-bolder text-center mt-2 mb-0">ورود به سایت</h4>
                                            <div class="row mt-3">
                                                <div class="col-2 text-center ms-auto">
                                                    <a class="btn btn-link px-3" href="https://soja.ir">
                                                        <i class="fa fa-link text-white text-lg"></i>
                                                    </a>
                                                </div>
                                                <div class="col-2 text-center px-1">
                                                    <a class="btn btn-link px-3" href="https://github.com/soja-soja/soja.ir-ish">
                                                        <i class="fa fa-github text-white text-lg"></i>
                                                    </a>
                                                </div>
                                                <div class="col-2 text-center me-auto">
                                                    <a class="btn btn-link px-3" href="https://www.youtube.com/channel/UCgMjLuov_-BhSOXjmyFmOtQ">
                                                        <i class="fa fa-youtube text-white text-lg"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <form role="form" class="text-start">
                                            <div class="input-group input-group-outline my-3">
                                                <asp:TextBox ID="txtUserName" class="form-control" placeholder="Username" runat="server"></asp:TextBox>
                                            </div>
                                            <div class="input-group input-group-outline mb-3">
                                                <asp:TextBox ID="txtPass" type="password" class="form-control" placeholder="Password" runat="server"></asp:TextBox>
                                            </div>
                                            <div class="form-check form-switch d-flex align-items-center mb-3">
                                                <%--<input class="form-check-input" type="checkbox" id="rememberMe" checked>
                                            <label class="form-check-label mb-0 ms-3" for="rememberMe">Remember me</label>--%>
                                            </div>
                                            <div class="form-group ">
                                                <cc1:RecaptchaWidget ID="RecaptchaWidget3" RenderApiScript="false" runat="server" />

                                            </div>
                                            <div class="text-center">

                                                <asp:Button ID="btnLoginUser" runat="server" OnClick="btnLoginUser_Click" class="btn bg-gradient-primary w-100 my-4 mb-2" Text="Sign in" />
                                                <asp:Label ID="lblMessage" runat="server" Font-Names="byakan" Font-Size="Small" Font-Bold="true" Text=""></asp:Label>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
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
    </form>
</body>
</html>
