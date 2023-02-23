<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="projectsmember.index" %>

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
               <!-- <li class="sidebar-nav-item"><a href="#contact">فرم همکاری</a></li>-->
            </ul>
        </nav>
        <!-- Header-->
        <header class="masthead d-flex align-items-center" id="page-top" dir="rtl">
            <div class="container px-4 px-lg-5 text-center">
                <h1 class="mb-2">یه پیشنهاد جذاب</h1>
                <h3 class="mb-2">برای عضویت در تیم ما و همکاری با ما</h3>
                <h3 class="mb-5">یا برای سفارش پروژه های جدید</h3>
                <a class="btn btn-primary btn-xl" href="#about">می خوام همکارتون بشم</a>
                <a class="btn btn-primary btn-xl" href="#portfolio">سفارش طراحی پروژه </a>
            </div>
        </header>
        <!-- About-->
        <section class="content-section  bg-light " id="about" dir="rtl">
            <div class="container px-4 px-lg-5 text-center">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-10">
                        <h2>اول باید مراحل زیر را انجام بدی تا ثابت کنی پایه ای</h2>
                        <p class="lead mb-5">
                            بعد میشین عضو تیم ما، با هم شروع می کنیم به طراحی وب سایت و انجام پروژه های مختلف
                          
                            <!-- <a href="https://unsplash.com/">Unsplash</a>-->
                            !
                       
                        </p>
                        <a class="btn btn-dark btn-xl" href="#steps">کدوم مراحل ؟</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- steps-->
        <section class="content-section  " style ="padding-top :10px;" id="steps">
            <div class="container text-center   "  id="steps">
                <div class="row">
                    <div class="how-it-work clearfix">
                        <div class="main-how-it">
                            <h4>چهار مرحله  <span class="bg-theme">طلایی</span> </h4>
                        </div>
                        <div class="panel panel-default col-sm-10 col-sm-offset-2">
                            
                                <div class="panel-body ">
                                    <span>1 </span>
                                    <h3 class="step-heading">مرحله اول  </h3>
                                   <a href="https://www.youtube.com/c/SOJAA" style ="color:white; text-decoration :none ;"> عضویت توی کانال یوتیوب یا آپارات
				 </a>
                                </div>
                            
                        </div>

                        <div class="panel panel-default col-sm-10 col-sm-offset-2">
                            <div class="panel-body">
                                <span>2 </span>
                                <h3 class="step-heading">مرحله دوم  </h3>
                                <a href="https://soja.ir/Signup.aspx" style ="color:white; text-decoration :none ; ">عضویت توی سایت سوال و جواب</a>
				
                            </div>
                        </div>

                        <div class="panel panel-default col-sm-10 col-sm-offset-2">
                            <div class="panel-body">
                                <span>3 </span>
                                <h3 class="step-heading">مرحله سوم </h3>
                                <a href="https://www.youtube.com/c/SOJAA/playlists" style ="color:white; text-decoration :none ;">مشاهده ی همه یا ویدیوهایی که نیازتونه
				 </a>
                            </div>
                        </div>

                        <div class="panel panel-default col-sm-10 col-sm-offset-2">
                            <div class="panel-body">
                                <span>4 </span>
                                <h3 class="step-heading">مرحله چهارم</h3>
                                انجام چالش های مورد نظر
				 
                            </div>
                        </div>

                    </div>

                </div>
                <a class="btn btn-secondary    btn-xl " href="#letsgo">گام بعدی </a>
            </div>
        </section> 
        <!-- Services-->
        <section class="content-section bg-primary text-white text-center" id="services">
            <div class="container px-4 px-lg-5">
                <div class="content-section-heading">
                    <h3 class="text-secondary mb-0">مراحل ضروری</h3>
                    <h2 class="mb-5">اول عضویت در سایت های زیر انجام بده</h2>
                </div>
                <div class="row gx-4 gx-lg-5 justify-content-center  ">
                    <!--  <div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
                        <span class="service-icon rounded-circle mx-auto mb-3">
                            <img src="assets/img/chaleng.png" alt="chalenge" width="60px" height="60px" />
                        </span>
                        <h4><strong>مرحله چهارم</strong></h4>
                        <p class="text-faded mb-0">انجام چالش های توی این سایت</p>
                    </div>-->
                    <div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
                        <span class="service-icon rounded-circle mx-auto mb-3"><a href="#portfolio"><i class="fa fa-registered "></i></a></span>
                        <h4><strong>مرحله سوم</strong></h4>
                        <p class="text-faded mb-0">ثبت سفارش در سایت </p>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-5 mb-md-0">
                        <span class="service-icon rounded-circle mx-auto mb-3">
                            <a href="https://soja.ir/Signup.aspx">
                                <img src="assets/img/soja.jpg" alt="soja.ir" width="60px" height="60px" /></a></span>
                        <h4><strong>مرحله دوم</strong></h4>
                        <p class="text-faded mb-0">
                            عضویت توی سایت سوال و جواب
                           
                           <!-- <i class="fas fa-heart"></i>
                            Start Bootstrap!-->

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
            </div>
        </section>
        <!-- Callout-->
        <section class="callout" id="letsgo">
            <div class="container px-4 px-lg-5 text-center">
                <h2 class="mx-auto mb-5">بهت تبریک میگم چیزی نمونده که 
                   
                    <em>همکار</em>
                    بشیم
                </h2>
                <a class="btn btn-primary btn-xl" href="members.aspx">وقتشه ثبت نام کنی </a>
            </div>
        </section>
        <!-- Portfolio-->
        <section class="content-section " id="portfolio">
            <div class="container px-4 px-lg-5">
                <div class="content-section-heading text-center">
                    <h3 class="text-secondary mb-0">راستی قبل از اینکه ثبت نام کنی بگم که   </h3>
                    <h2 class="mb-5">هر طرحی دوست داشته باشی قابل اجراست
                        <br /><br />
                <a class="btn btn-xl btn-dark" href="signinDesign">سفارش طراحی سایت </a>
                        </h2>
                </div>
                <div class="row gx-0">
                    <div class="col-lg-6">
                        <a class="portfolio-item" href="#!">
                            <div class="caption">
                                <div class="caption-content ">
                                    <div dir="rtl" class="h2">طراحی پویا (Responsive)</div>
                                    <p dir="rtl" class="mb-0">طراحی وب سایت کاملا سازگار با صفحه های نمایش موبایل و تبلت و با رویکرد رسپانسیو </p>
                                </div>
                            </div>
                            <img class="img-fluid" src="assets/img/portfolio-1.jpg" alt="..." />
                        </a>
                    </div>
                    <div class="col-lg-6">
                        <a class="portfolio-item" href="#!">
                            <div class="caption">
                                <div class="caption-content">
                                    <div dir="rtl" class="h2">دسته بندی خدمات</div>
                                    <p dir="rtl" class="mb-0">بدون هیچ محدودیتی در ارائه طرح های متنوع و متناسب سفارش شما  </p>
                                </div>
                            </div>
                            <img class="img-fluid" src="assets/img/portfolio-2.jpg" alt="..." />
                        </a>
                    </div>
                    <div class="col-lg-6">
                        <a class="portfolio-item" href="#!">
                            <div class="caption">
                                <div class="caption-content">
                                    <div dir="rtl" class="h2">پشتیبانی فنی</div>
                                    <p dir="rtl" class="mb-0">پشتیبانی کامل در صورت هرگونه خرابی ، مشکلات نرم افزاری </p>
                                </div>
                            </div>
                            <img class="img-fluid" src="assets/img/portfolio-3.jpg" alt="..." />
                        </a>
                    </div>
                    <div class="col-lg-6">
                        <a class="portfolio-item" href="#!">
                            <div class="caption">
                                <div class="caption-content">
                                    <div dir="rtl" class="h2">مدت زمان اجرای پروژه</div>
                                    <p dir="rtl" class="mb-0">مدت زمان اجرای پروژه بر اساس حجم کاری شما تعیین می گردد</p>
                                </div>
                            </div>
                            <img class="img-fluid" src="assets/img/portfolio-4.jpg" alt="..." />
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <!-- Call to Action
        <section class="content-section bg-primary text-white" id="contact">
            <div class="container px-4 px-lg-5 text-center">
                <h2 class="mb-4">وقتی تمام مراحل کامل طی کردی برو برای ثبت نام </h2>
                <a class="btn btn-xl btn-dark" href="signinDesign">سفارش طراحی سایت </a>
            </div>
        </section>-->
        <!-- Map
        <div class="map" id="contact">
            <iframe src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A&amp;output=embed"></iframe>
            <br />
            <small><a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A"></a></small>
        </div>-->
        <!-- Footer-->
        <footer class="footer text-center">
            <div class="container px-4 px-lg-5">
                <ul class="list-inline mb-5">
                    <li class="list-inline-item">
                        <a class="social-link rounded-circle text-white mr-3" href="https://www.facebook.com"><i class="icon-social-facebook"></i></a>
                    </li>
                    <li class="list-inline-item">
                        <a class="social-link rounded-circle text-white mr-3" href="https://twitter.com/"><i class="icon-social-twitter"></i></a>
                    </li>
                    <li class="list-inline-item">
                        <a class="social-link rounded-circle text-white" href="https://github.com/"><i class="icon-social-github"></i></a>
                    </li>
                </ul>
                <p dir="rtl" class="text-muted small mb-0">Copyright &copy; تمامی حقوق مادی و معنوی، متعلق به وب سایت سوال جواب (soja.ir) و تیم مدیریتی آن می باشد.</p>
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
