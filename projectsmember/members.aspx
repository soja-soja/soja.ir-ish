<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="members.aspx.cs" Inherits="projectsmember.members.members" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link rel="icon" type="image/png" href="assets/img/Puzzlefavicon.png">

    <title>چالش ها</title>


    <!-- Theme CSS -->
    <link rel="stylesheet" href="members/assets/css/memberstyle.css" />
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.6.0.slim.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

    <!-- FontAwesome JS-->
    <script src="members/assets/fontawesome/js/all.min.js"></script>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://unpkg.com/placeholder-loading/dist/css/placeholder-loading.min.css" />
</head>
<body dir="rtl">
    <form id="form1" runat="server">

        <header class="header fixed-top">

            <div class="branding docs-branding">
                <div class="container-fluid position-relative  py-2 ">
                    <!--  <div class="docs-logo-wrapper ">
                        <div class="site-logo">
                            <a class="navbar-brand" href="members.aspx">
                                <img class="logo-icon " src="members/assets/images/coderdocs-logo.svg" alt="logo"><span class="logo-text">Coder<span class="text-alt">Docs</span></span></a>
                        </div>
                    </div>-->
                    <!--//docs-logo-wrapper-->
                    <div class="docs-top-utilities d-flex justify-content-end align-items-center">

                        <ul class="social-list list-inline mx-md-3 mx-lg-5 mb-0 d-none d-lg-flex">
                            <li class="list-inline-item"><a href="#"><i class="fab fa-github fa-fw"></i></a></li>
                            <li class="list-inline-item"><a href="#"><i class="fab fa-twitter fa-fw"></i></a></li>
                            <!-- <li class="list-inline-item"><a href="#"><i class="fab fa-slack fa-fw"></i></a></li>
                            <li class="list-inline-item"><a href="#"><i class="fab fa-product-hunt fa-fw"></i></a></li>-->
                            <li class="list-inline-item"><a href="#"><i class="fab fa-youtube  fa-fw"></i></a></li>

                        </ul>
                        <!--//social-list-->
                        <a href="signin.aspx" class="btn btn-primary d-none d-lg-flex">خروج</a>
                    </div>
                    <!--//docs-top-utilities-->
                </div>
                <!--//container-->
            </div>
            <!--//branding-->
        </header>
        <!--//header-->


        <div class="page-header theme-bg-dark py-5 text-center position-relative">
            <div class="theme-bg-shapes-right"></div>
            <div class="theme-bg-shapes-left"></div>
            <div class="container">
                <asp:Label ID="lblWelcome" CssClass="page-heading single-col-max mx-auto" runat="server" Text="عزیز ، خوش آمدی !"></asp:Label>
                <div class="page-intro single-col-max mx-auto">برای محک شما چالش هایی در نظر گرفتیم تا بتونید به توانایی های خودتون پی ببرید.</div>
                <div class="page-intro single-col-max mx-auto">با کامل کردن هر چالش و کسب امتیاز مورد نیاز چالش بعدی برای شما نمایان خواهد شد .</div>
                <!-- <div class="main-search-box pt-3 d-block mx-auto">
                    <form class="search-form w-100">
                        <input type="text" placeholder="Search the docs..." name="search" class="form-control search-input">
                        <button type="submit" class="btn search-btn" value="Search"><i class="fas fa-search"></i></button>
                    </form>-->
            </div>

        </div>

        <!--//page-header-->
        <div class="page-content">
            <div class="container">
                <div class="docs-overview py-5">
                    <div class="row justify-content-center">
                        <div class="col-12 col-lg-4 py-3">
                            <div class="card shadow-sm">
                                <div class="card-body">
                                    <h5 class="card-title mb-3 ">
                                        <span class="theme-icon-holder card-icon-holder me-2">
                                            <i class="fab fa-github fa-fw "></i>
                                        </span>
                                        <!--//card-icon-holder-->
                                        <span class="card-title-text">آموزش گیت و گیت هاب</span>
                                    </h5>
                                    <div class="card-text ">
                                  دوست عزیز در اولین چالش شما باید رزومه خود را در قالب فایل html تهیه کرده و با توجه به توضیحات راهنمای گیت و گیت هاب که در این بخش آمده است ، رزومه خود را برای ما بفرستید .

							   
                                    </div>
                                    <a class="card-link-mask" href="git-doc.aspx#section-1"></a>
                                </div>
                                <!--//card-body-->
                            </div>
                            <!--//card-->
                        </div>
                        <!--//col-->
                        <div class="col-12 col-lg-4 py-3">
                            <div class="card shadow-sm" aria-hidden="true">
                                <div class="card-body">
                                    <h5 class="card-title mb-3  placeholder-glow ">
                                        <span class="theme-icon-holder card-icon-holder placeholder-glow  me-2 "></span>
                                        <span class=" card-title-text placeholder-glow  col-6  mb  ">
                                            <span class="placeholder col-6"></span>
                                        </span>
                                    </h5>
                                    <div class="card-text placeholder-glow  ">
                                        <span class="placeholder col-12  "></span>
                                        <span class="placeholder col-12"></span>
                                        <span class="placeholder col-12"></span>
                                        <span class="placeholder col-12"></span>
                                        <span class="placeholder col-6"></span>

                                    </div>
                                    <!--<a class="card-link-mask" href="docs-page.aspx#section-2"></a>-->
                                </div>
                                <!--//card-body-->
                            </div>
                            <!--//card-->
                        </div>
                        <!--//col-->
                        <div class="col-12 col-lg-4 py-3">
                            <div class="card shadow-sm" aria-hidden="true">
                                <div class="card-body">
                                    <h5 class="card-title mb-3  placeholder-glow">
                                        <span class="theme-icon-holder card-icon-holder placeholder-glow  me-2 "></span>
                                        <span class=" card-title-text placeholder-glow  col-6  ">
                                            <span class="placeholder col-5"></span>
                                        </span>
                                    </h5>
                                    <div class="card-text placeholder-glow  ">
                                        <span class="placeholder col-12  "></span>
                                        <span class="placeholder col-12"></span>
                                        <span class="placeholder col-12"></span>
                                        <span class="placeholder col-9"></span>
                                        <span class="placeholder col-4"></span>

                                    </div>
                                    <!-- <a class="card-link-mask" href="docs-page.aspx#section-2"></a>-->
                                </div>
                                <!--//card-body-->
                            </div>
                            <!--//card-->
                        </div>
                        <!--//col-->
                        <div class="col-12 col-lg-4 py-3">
                            <div class="card shadow-sm" aria-hidden="true">
                                <div class="card-body">
                                    <h5 class="card-title mb-3  placeholder-glow">
                                        <span class="theme-icon-holder card-icon-holder placeholder-glow  me-2 "></span>
                                        <span class=" card-title-text placeholder-glow  col-6  ">
                                            <span class="placeholder col-8"></span>
                                        </span>
                                    </h5>
                                    <div class="card-text placeholder-glow  ">
                                        <span class="placeholder col-12  "></span>
                                        <span class="placeholder col-12"></span>
                                        <span class="placeholder col-12"></span>
                                        <span class="placeholder col-6"></span>
                                        <span class="placeholder col-3"></span>

                                    </div>
                                    <!--  <a class="card-link-mask" href="docs-page.aspx#section-2"></a>-->
                                </div>
                                <!--//card-body-->
                            </div>
                            <!--//card-->
                        </div>
                        <!--//col-->
                        <div class="col-12 col-lg-4 py-3">
                            <div class="card shadow-sm" aria-hidden="true">
                                <div class="card-body">
                                    <h5 class="card-title mb-3  placeholder-glow">
                                        <span class="theme-icon-holder card-icon-holder placeholder-glow  me-2 "></span>
                                        <span class=" card-title-text placeholder-glow  col-6  ">
                                            <span class="placeholder col-6"></span>
                                        </span>
                                    </h5>
                                    <div class="card-text placeholder-glow  ">
                                        <span class="placeholder col-12  "></span>
                                        <span class="placeholder col-12"></span>
                                        <span class="placeholder col-12"></span>
                                        <span class="placeholder col-12"></span>
                                        <span class="placeholder col-9"></span>

                                    </div>
                                    <!-- <a class="card-link-mask" href="docs-page.aspx#section-2"></a>-->
                                </div>
                                <!--//card-body-->
                            </div>
                            <!--//card-->
                        </div>
                        <!--//col-->
                        <div class="col-12 col-lg-4 py-3">
                            <div class="card shadow-sm" aria-hidden="true">
                                <div class="card-body">
                                    <h5 class="card-title mb-3  placeholder-glow">
                                        <span class="theme-icon-holder card-icon-holder placeholder-glow  me-2 "></span>
                                        <span class=" card-title-text placeholder-glow  col-6  ">
                                            <span class="placeholder col-5"></span>
                                        </span>
                                    </h5>
                                    <div class="card-text placeholder-glow  ">
                                        <span class="placeholder col-12  "></span>
                                        <span class="placeholder col-12"></span>
                                        <span class="placeholder col-4"></span>
                                        <span class="placeholder col-12"></span>
                                        <span class="placeholder col-6"></span>

                                    </div>
                                    <!-- <a class="card-link-mask" href="docs-page.aspx#section-2"></a>-->
                                </div>
                                <!--//card-body-->
                            </div>
                            <!--//card-->
                        </div>
                        <!--//col-->
                        <div class="col-12 col-lg-4 py-3">
                            <div class="card shadow-sm" aria-hidden="true">
                                <div class="card-body">
                                    <h5 class="card-title mb-3  placeholder-glow">
                                        <span class="theme-icon-holder card-icon-holder placeholder-glow  me-2 "></span>
                                        <span class=" card-title-text placeholder-glow  col-6  ">
                                            <span class="placeholder col-9"></span>
                                        </span>
                                    </h5>
                                    <div class="card-text placeholder-glow  ">
                                        <span class="placeholder col-12  "></span>
                                        <span class="placeholder col-12"></span>
                                        <span class="placeholder col-12"></span>
                                        <span class="placeholder col-12"></span>
                                        <span class="placeholder col-4"></span>

                                    </div>
                                    <!-- <a class="card-link-mask" href="docs-page.aspx#section-2"></a>-->
                                </div>
                                <!--//card-body-->
                            </div>
                            <!--//card-->
                        </div>
                        <!--//col-->
                        <div class="col-12 col-lg-4 py-3">
                            <div class="card shadow-sm" aria-hidden="true">
                                <div class="card-body">
                                    <h5 class="card-title mb-3  placeholder-glow">
                                        <span class="theme-icon-holder card-icon-holder placeholder-glow  me-2 "></span>
                                        <span class=" card-title-text placeholder-glow  col-6  ">
                                            <span class="placeholder col-7"></span>
                                        </span>
                                    </h5>
                                    <div class="card-text placeholder-glow  ">
                                        <span class="placeholder col-12  "></span>
                                        <span class="placeholder col-12"></span>
                                        <span class="placeholder col-6"></span>
                                        <span class="placeholder col-12"></span>
                                        <span class="placeholder col-6"></span>

                                    </div>
                                    <!--  <a class="card-link-mask" href="docs-page.aspx#section-2"></a>-->
                                </div>
                                <!--//card-body-->
                            </div>
                            <!--//card-->
                        </div>
                        <!--//col-->
                        <div class="col-12 col-lg-4 py-3">
                            <div class="card shadow-sm" aria-hidden="true">
                                <div class="card-body">
                                    <h5 class="card-title mb-3  placeholder-glow">
                                        <span class="theme-icon-holder card-icon-holder placeholder-glow  me-2 "></span>
                                        <span class=" card-title-text placeholder-glow  col-6  ">
                                            <span class="placeholder col-6"></span>
                                        </span>
                                    </h5>
                                    <div class="card-text placeholder-glow  ">
                                        <span class="placeholder col-12  "></span>
                                        <span class="placeholder col-12"></span>
                                        <span class="placeholder col-9"></span>
                                        <span class="placeholder col-12"></span>
                                        <span class="placeholder col-2"></span>

                                    </div>
                                    <!-- <a class="card-link-mask" href="docs-page.aspx#section-2"></a>-->
                                </div>
                                <!--//card-body-->
                            </div>
                            <!--//card-->
                        </div>
                        <!--//col-->
                    </div>
                    <!--//row-->
                </div>
                <!--//container-->
            </div>
            <!--//container-->
        </div>
        <!--//page-content-->

        <section class="cta-section text-center py-5 theme-bg-dark position-relative">
            <div class="theme-bg-shapes-right"></div>
            <div class="theme-bg-shapes-left"></div>
            <div class="container">
                <h3 class="mb-2 text-white mb-3">Launch Your Software Project Like A Pro</h3>
                <div class="section-intro text-white mb-3 single-col-max mx-auto">Want to launch your software project and start getting traction from your target users? Check out our premium <a class="text-white" href="https://themes.3rdwavemedia.com/bootstrap-templates/startup/coderpro-bootstrap-5-startup-template-for-software-projects/">Bootstrap 5 startup template CoderPro</a>! It has everything you need to promote your product.</div>
                <div class="pt-3 text-center">
                    <a class="btn btn-light" href="https://themes.3rdwavemedia.com/bootstrap-templates/startup/coderpro-bootstrap-5-startup-template-for-software-projects/">Get CoderPro<i class="fas fa-arrow-alt-circle-right ml-2"></i></a>
                </div>
            </div>
        </section>
        <!--//cta-section-->

        <footer class="footer">

            <div class="footer-bottom text-center py-5">

                <ul class="social-list list-unstyled pb-4 mb-0">
                    <li class="list-inline-item"><a href="#"><i class="fab fa-github fa-fw"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="fab fa-twitter fa-fw"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="fab fa-youtube  fa-fw"></i></a></li>
                    <!-- <li class="list-inline-item"><a href="#"><i class="fab fa-slack fa-fw"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="fab fa-product-hunt fa-fw"></i></a></li>-->
                    <li class="list-inline-item"><a href="#"><i class="fab fa-facebook-f fa-fw"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="fab fa-instagram fa-fw"></i></a></li>
                </ul>
                <!--//social-list-->

                <!--/* This template is free as long as you keep the footer attribution link. If you'd like to use the template without the attribution link, you can buy the commercial license via our website: themes.3rdwavemedia.com Thank you for your support. :) */-->
                <!--   <small class="copyright">Designed with <span class="sr-only">love</span><i class="fas fa-heart" style="color: #fb866a;"></i> by <a class="theme-link" href="http://themes.3rdwavemedia.com" target="_blank">Xiaoying Riley</a> for developers</small>-->
                <small class="copyright">تمامی حقوق مادی و معنوی، متعلق به وب سایت سوال جواب (soja.ir) و تیم مدیریتی آن می باشد.

                </small>

            </div>

        </footer>
        <!-- Javascript -->
        <script src="members/assets/plugins/popper.min.js"></script>
        <script src="members/assets/plugins/bootstrap/js/bootstrap.min.js"></script>

        <!-- Page Specific JS -->
        <script src="members/assets/plugins/smoothscroll.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.8/highlight.min.js"></script>
        <script src="members/assets/js/highlight-custom.js"></script>
        <script src="members/assets/plugins/simplelightbox/simple-lightbox.min.js"></script>
        <script src="members/assets/plugins/gumshoe/gumshoe.polyfills.min.js"></script>
        <script src="members/assets/js/docs.js"></script>


    </form>


</body>
</html>
