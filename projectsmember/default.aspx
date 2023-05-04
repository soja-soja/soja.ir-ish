<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="projectsmember.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>مراحل عضوگیری پروژه</title>
    <link href="../css/styleSteps.css?2" rel="stylesheet" />

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/font-awesome.min.css" rel="stylesheet" />

    <script src="Scripts/jquery-3.6.0.slim.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


    <!-- Favicon-->
    <link rel="icon" type="../image/x-icon" href="assets/img/soja.jpg" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Simple line icons-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.5.5/css/simple-line-icons.min.css" rel="stylesheet" />
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="../css/styles.css" rel="stylesheet" />


</head>
<body>
    <form id="form1" runat="server">
        <!-- Navigation-->
        <a class="menu-toggle rounded" href="#"><i class="fas fa-bars"></i></a>
        <nav id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand"><a href="#page-top">سفارش و همکاری </a></li>
                <li class="sidebar-nav-item"><a href="#page-top">مقدمه </a></li>
                <li class="sidebar-nav-item"><a href="#about">نحوه همکاری</a></li>
                <li class="sidebar-nav-item"><a href="#steps">مراحل همکاری </a></li>
                <li class="sidebar-nav-item"><a href="#services">مراحل ثبت سفارش</a></li>
                <li class="sidebar-nav-item"><a href="#portfolio">نکات قابل توجه  </a></li>
            </ul>
        </nav>
        <!-- Header-->
        <header class="masthead d-flex align-items-center" id="page-top" dir="rtl">
            <div class="container px-4 px-lg-5 text-center">
                <h1 class="mb-2">یه پیشنهاد جذاب</h1>
                <h3 class="mb-2">برای عضویت در تیم ما و همکاری با ما</h3>
                <h3 class="mb-5">یا برای سفارش پروژه های جدید</h3>
                <a class="btn btn-primary btn-xl" href="#services">می خوام همکارتون بشم</a>
                <a class="btn btn-primary btn-xl" href="#portfolio">سفارش  پروژه </a>
            </div>
        </header>
        <!-- Services-->
        <section class="content-section bg-primary text-white text-center" id="services">
            <div class="container px-4 px-lg-5">
                <div class="content-section-heading">
                    <h3 class="text-secondary mb-0">مراحل ضروری</h3>
                    <hr />
                    <h2>اول باید مراحل زیر را انجام بدی تا ثابت کنی پایه ای</h2>
                    <p class="lead mb-5">
                        بعد میشین عضو تیم ما، با هم شروع می کنیم به طراحی وب سایت و انجام پروژه های مختلف
                       
                    </p>
                </div>
                <div class="row gx-4 gx-lg-5 justify-content-center  ">
                    <div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
                        <span class="service-icon rounded-circle mx-auto mb-3">
                            <i class="fa fa-tasks"></i>
                        </span>
                        <h4><strong>مرحله چهارم</strong></h4>
                        <p class="text-faded mb-0">انجام چالش های آموزشی</p>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
                        <span class="service-icon rounded-circle mx-auto mb-3"><i class="fa fa-address-card"></i></span>
                        <h4><strong>مرحله سوم</strong></h4>
                        <p class="text-faded mb-0">ثبت نام نهایی در این سایت </p>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-5 mb-md-0">
                        <span class="service-icon rounded-circle mx-auto mb-3">
                            <a href="https://soja.ir/Signup.aspx">
                                <img src="assets/img/soja.jpg" alt="soja.ir" width="60px" height="60px" /></a></span>
                        <h4><strong>مرحله دوم</strong></h4>
                        <p class="text-faded mb-0">
                            عضویت توی سایت سوال و جواب
     </p>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <span class="service-icon rounded-circle mx-auto mb-3">
                            <a href="https://www.youtube.com/c/SOJAA">
                                <img src="assets/img/yt.png" alt="youtube" width="60px" height="60px" /></a></span>
                        <h4><strong>مرحله اول</strong></h4>
                        <p class="text-faded mb-0">عضویت توی کانال یوتیوب یا آپارات</p>
                    </div>
                </div>
                <br />
                <br />
            </div>
            <hr />
            <h1>آماده ی ثبت نام هستی؟ 
            </h1>
            <h5>اگه دو مرحله ی اول رو انجام دادی، می تونی ثبت نام رو شروع کنی
           
                <br />
                <br />
                <a class="btn btn-warning btn-xl" href="#letsgo">ثبت نام</a>
            </h5>

        </section>
        <!-- Callout-->
        <section class="callout" id="letsgo">
            <div class="container px-4 px-lg-5 text-center">
                <h2 class="mx-auto mb-5">بهت تبریک میگم چیزی نمونده که 
                   
                   

                    <em>همکار</em>
                    بشیم
                </h2>
                <a class="btn btn-primary btn-xl" href="Pages/CooperationRequest/signin.aspx">وقتشه ثبت نام کنی </a>
            </div>
        </section>
        <!-- Portfolio-->
        <section class="content-section " id="portfolio">
            <div class="container px-4 px-lg-5">
                <div class="content-section-heading text-center">
                    <h3 class="text-secondary mb-0">سپاس از حسن انتخاب شما   </h3>
                    <h2 class="mb-5">هر طرحی دوست داشته باشی قابل اجراست
                       
                        <br />
                        <br />
                        <a class="btn btn-lg btn-xl btn-warning" href="Pages/ProjectRegister/signinDesign.aspx">ثبت سفارش پروژه </a>
                    </h2>
                </div>
                <div class="row gx-0">
                    <div class="col-lg-6">
                        <a class="portfolio-item" href="#!">
                            <div class="caption">
                                <div class="caption-content " style="margin-top: 200px; margin-right: 160px; margin-left: 30px;">
                                    <div dir="rtl" class="h2">پروژه های داده محور</div>
                                    <p dir="rtl" class="mb-0">مشاوره ، جمع آوری داده ، پردازش داده به روشهای تحلیلی  Analytics  و یادگیری ماشین Machine Learning </p>
                                </div>
                            </div>
                            <img class="img-fluid" src="assets/img/portfolio-1.jpg" alt="...">
                        </a>
                    </div>
                    <div class="col-lg-6">
                        <a class="portfolio-item" href="#!">
                            <div class="caption">
                                <div class="caption-content" style="margin-right: 40px; margin-left: 140px;">
                                    <div dir="rtl" class="h5">طراحی وب سایت (Website Design)</div>
                                    <p dir="rtl" class="mb-0">طراحی انواع وب سایت با آخرین استاندارد های جهانی ، مطابق با سلیقه و کارکرد های مورد نظر شما  </p>
                                </div>
                            </div>
                            <img class="img-fluid" src="assets/img/portfolio-2.jpg" alt="...">
                        </a>
                    </div>
                    <div class="col-lg-6">
                        <a class="portfolio-item" href="#!">
                            <div class="caption">
                                <div class="caption-content" style="margin-top: 70px;">
                                    <div dir="rtl" class="h4">Sky is the limit</div>
                                    <p dir="rtl" class="mb-0">پروژه دیگه ای مدنظر داری ؟ نیاز به مشاوره و یا تخمین قیمت داری؟ با ما در میان  بذار </p>
                                </div>
                            </div>
                            <img class="img-fluid" src="assets/img/portfolio-3.jpg" alt="...">
                        </a>
                    </div>
                    <div class="col-lg-6">
                        <a class="portfolio-item" href="#!">
                            <div class="caption">
                                <div class="caption-content" style="margin-right: 210px; margin-left: 40px;">
                                    <div dir="rtl" class="h4">Mentorship</div>
                                    <p dir="rtl" class="mb-0">شامل مشاوره نقشه راه ، تدریس خصوصی و رفع اشکال پروژه محور برای آمادگی در بازار کار</p>
                                </div>
                            </div>
                            <img class="img-fluid" src="assets/img/portfolio-4.jpg" alt="...">
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <footer class="footer text-center">
            <div class="container px-4 px-lg-5">
                <ul class="list-inline mb-5">
                    <li class="list-inline-item">
                        <a class="social-link rounded-circle text-white mr-3" href="https://soja.ir"><i class="fa fa-link"></i></a>
                    </li>
                    <li class="list-inline-item">
                        <a class="social-link rounded-circle text-white mr-3" href="https://www.youtube.com/channel/UCgMjLuov_-BhSOXjmyFmOtQ"><i class="icon-social-youtube"></i></a>
                    </li>
                    <li class="list-inline-item">
                        <a class="social-link rounded-circle text-white" href="https://github.com/soja-soja/soja.ir-ish"><i class="icon-social-github"></i></a>
                    </li>
                </ul>
                <p dir="rtl" class="text-muted small mb-0">Copyright &copy; تمامی حقوق مادی و معنوی، متعلق به <a href="https://soja.ir" style="color:orange !important;">وب سایت سوال جواب</a> (soja.ir) و تیم مدیریتی آن می باشد.</p>
            </div>
        </footer>
        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top"><i class="fas fa-angle-up"></i></a>
    </form>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top"><i class="fas fa-angle-up"></i></a>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="../js/scripts.js">  </script>

</body>
</html>
