<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="members.aspx.cs" Inherits="projectsmember.members.members" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" type="image/png" href="../../Content/Image/img/Puzzlefavicon.png">

    <title>صفحه کاربری</title>

    <!-- Theme CSS -->
    <link rel="stylesheet" href="../../Content/CSS/MemCss/memberstyle.css" />
    <link href="../../Content/Bootstrap/font-awesome.min.css" rel="stylesheet" />
    <script src="../../Content/Scripts/jquery-3.6.0.slim.min.js"></script>
    <script src="../../Content/Scripts/popper.min.js"></script>
    <script src="../../Content/Scripts/bootstrap.min.js"></script>

    <!-- FontAwesome JS-->
    <script src="../../Content/Font/fontawesome/js/all.min.js"></script>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://unpkg.com/placeholder-loading/dist/css/placeholder-loading.min.css" />
    <style>
        .list-inline-item {
            margin-right: 14px !important
        }
    </style>
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
                            <li class="list-inline-item text-center"><a href="https://github.com/soja-soja/soja.ir-ish"><i class="fab fa-github fa-fw"></i></a></li>
                            <li class="list-inline-item text-center"><a href="https://www.youtube.com/channel/UCgMjLuov_-BhSOXjmyFmOtQ"><i class="fab fa-youtube  fa-fw"></i></a></li>
                            <li class="list-inline-item"><a href="https://soja.ir"><i class="fa fa-link"></i></a></li>

                        </ul>
                        <!--//social-list-->
                        <a href="../UserAdminPages/Login_User.aspx" class="btn btn-primary d-none d-lg-flex">خروج</a>
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
                    <div class="row justify-content-center" id="parent" >
                        <div class="col-12 col-lg-8 py-3">
                            <div class="card shadow-sm" aria-hidden="true">
                                <div class="card-body">
                                    <h5 class="card-title mb-3  placeholder-glow ">
                                        <span class="theme-icon-holder card-icon-holder me-2">
                                            <i class="fab fa-github fa-fw "></i>
                                        </span>
                                        <!--//card-icon-holder-->
                                        <span class="card-title-text">چالش اول: ارسال رزومه با گیت</span>
                                    </h5>
                                    <div class="card-text placeholder-glow  ">
                                        این چالش دو هدف رو دنبال می کنه: 
                                       
                                        <br />
                                        اول: نشون میده تو دنبال یادگیری هستی، می تونی از پس یادگرفتن ابزارهای جدید و پیدا کردن راه و چاه بر بیای،
                                        دوم: ما همیشه از گیت برای اشتراک کد ها استفاده می کنیم! این راهیه برای اینکه تو یاد بگیری چجوری کدهای جدیدت رو با ما به اشتراک بذاری
                                       
                                        <br />
                                        برای این کار مراحل زیر رو لازمه که طی کنی: 
                                       
                                        <br />
                                        1. آوردن پروژه از گیت به کامپیوتر خودت
                                      
                                        <br />
                                        <code>git pull https://github.com/soja-soja/soja.ir-ish.git </code>
                                        <br />
                                        2. ایجاد تعییرات مورد نظر (برای این چالش، منظور فایل های مربوط به رزومه شماست)
                                        حداقل لازمه که یک فایل html جدید در مسیر زیر ایجاد کنید:
                                      
                                        <br />
                                        <code>Pages/CooperationRequest/Profiles/{YourName}.html</code>
                                        <br />
                                        ظاهر صفحه ای که می سازی هم برای ما مهمه، پس هرچیزی بلدی رو با حوصله و هنرمندی بهمون نشون بده.
                                        <br />
                                        3. آپلود کردن تغییرات روی گیت و ایجاد یک pull request
                                       
                                        <br />
                                        اگر هر کدوم از این مراحل رو نمی دونی، می تونی بخش مربوط به گیت رو توی همین صفحه دنبال کنی
                                        یا <a href="https://www.youtube.com/watch?v=cUc_O7dn2uA&t=2292s&ab_channel=SOJA">ویدیوی آموزشی ما در مورد گیت</a> رو ببینی. 
                                        
                                   
                                    </div>
                                    <!--<a class="card-link-mask" href="docs-page.aspx#section-2"></a>-->
                                </div>
                                <!--//card-body-->
                            </div>
                            <!--//card-->
                        </div>
                        <!--//col-->
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
                                <div class="card-body" id="chlng2" runat="server" >
                                    <h5 class="card-title mb-3 placeholder-glow "  >
                                        <span class="theme-icon-holder card-icon-holder placeholder-glow me-2 " >abca</span>
                                        <span class=" card-title-text placeholder-glow  col-6  " >
                                            <span class="placeholder col-8" >teyerherjfhjd</span>
                                        </span>
                                    </h5>
                                    <div class="card-text placeholder-glow  " >
                                        <span class="placeholder col-12  ">fdhgsfhshdisjds</span>
                                        <span class="placeholder col-12">bfsfsnlkeske</span>
                                        <span class="placeholder col-12">hihfihselkleskd</span>
                                        <span class="placeholder col-6">powireyiuefndjj</span>
                                        <span class="placeholder col-3">kjfieuyidopkpodjskpdkpodoh</span>

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
                                <div class="card-body"  id="chlng3" runat="server">
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
                                <div class="card-body"  id="chlng4" runat="server">
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
                                <div class="card-body"  id="chlng5" runat="server">
                                    <h5 class="card-title mb-3  placeholder-glow"  >
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
                                <div class="card-body"  id="chlng6" runat="server">
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
                                <div class="card-body"  id="chlng7" runat="server">
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

        <%-- <section class="cta-section text-center py-5 theme-bg-dark position-relative">
            <div class="theme-bg-shapes-right"></div>
            <div class="theme-bg-shapes-left"></div>
            <div class="container">
                <h3 class="mb-2 text-white mb-3">Launch Your Software Project Like A Pro</h3>
                <div class="section-intro text-white mb-3 single-col-max mx-auto">Want to launch your software project and start getting traction from your target users? Check out our premium <a class="text-white" href="https://themes.3rdwavemedia.com/bootstrap-templates/startup/coderpro-bootstrap-5-startup-template-for-software-projects/">Bootstrap 5 startup template CoderPro</a>! It has everything you need to promote your product.</div>
                <div class="pt-3 text-center">
                    <a class="btn btn-light" href="https://themes.3rdwavemedia.com/bootstrap-templates/startup/coderpro-bootstrap-5-startup-template-for-software-projects/">Get CoderPro<i class="fas fa-arrow-alt-circle-right ml-2"></i></a>
                </div>
            </div>
        </section>--%>
        <!--//cta-section-->

        <footer class="footer">

            <div class="footer-bottom text-center py-5">

                <ul class="social-list list-unstyled pb-4 mb-0">
                    <li class="list-inline-item"><a href="https://github.com/soja-soja/soja.ir-ish"><i class="fab fa-github fa-fw"></i></a></li>
                    <li class="list-inline-item"><a href="https://www.youtube.com/channel/UCgMjLuov_-BhSOXjmyFmOtQ"><i class="fab fa-youtube  fa-fw"></i></a></li>
                    <li class="list-inline-item"><a href="https://soja.ir"><i class="fa fa-link"></i></a></li>
                </ul>
                <p dir="rtl" class="text-muted small mb-0">Copyright &copy; تمامی حقوق مادی و معنوی، متعلق به <a href="https://soja.ir" style="color: #3dd584 !important;">وب سایت سوال جواب</a> (soja.ir) و تیم مدیریتی آن می باشد.</p>

            </div>
            <script src="../../Content/Scripts/bootstrap.min.js"></script>
        </footer>
        <!-- Javascript -->
        <script src="../../Content/Scripts/popper.min.js"></script>
        <script src="../../Content/Scripts/bootstrap.min.js"></script>

        <!-- Page Specific JS -->
        <script src="../../Content/Scripts/smoothscroll.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.8/highlight.min.js"></script>
        <script src="../../Content/JS/MemJS/highlight-custom.js"></script>
        <script src="../../Content/Scripts/simplelightbox/simple-lightbox.min.js"></script>
        <script src="../../Content/Scripts/gumshoe/gumshoe.polyfills.min.js"></script>

    </form>


</body>
</html>
