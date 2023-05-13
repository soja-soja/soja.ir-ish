<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" UnobtrusiveValidationMode="None" Inherits="projectsmember.signin" %>

<%@ Register Assembly="Recaptcha.Web" Namespace="Recaptcha.Web.UI.Controls" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" type="image/png" href="../../Content/Image/img/BlueSignInfavicon.png">
    <title>ثبت نام / ورود </title>
    <!-- <link href="css/signinStyle.css" rel="stylesheet" />-->
    <link href="../../Content/CSS/css/StyleSign.css" rel="stylesheet" />
    <link href="Content/Bootstrap/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Content/Scripts/jquery-3.6.0.slim.min.js"></script>
    <script src="../../Content/Scripts/popper.min.js"></script>
    <script src="../../Content/Scripts/bootstrap.min.js"></script>

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>

    <%--https://github.com/tanveery/recaptcha-net--%>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <style type="text/css">
        input[type="checkbox"] {
            margin-left: 10px;
        }
         input[type="radio"] {
        margin-left: 10px;
    }
    </style>

</head>
<body dir="rtl" style="font-family: bmitra">
    <form id="form1" runat="server">
        <div class="container register" style="margin-top: 0; padding: 150px 50px 50px 50px; position: ; max-width: 100%; height: vmax; margin-left: 0; margin-right: 0;">
            <div class="row">
                    <a href="../../default.aspx" dir="ltr" style="color:white" >صفحه اصلی ></a>
            </div>
            <div class="row">
                <div class="col-md-3 register-left">
                    <h3 style="margin-top: 60px">خوش آمدید</h3>
                    <p style="margin-top: 10px">3 مرحله تا ثبت نام کامل فاصله دارید!</p>
                    <hr />
                    <p>اگر قبلا ثبت نام کردی، برای ورود <a href="../UserAdminPages/Login_User.aspx">اینجا کلیک</a> کن! </p>
                </div>
                <asp:MultiView ID="multiViewReg" runat="server" ActiveViewIndex="0">
                    <asp:View ID="View1" runat="server">

                        <div class="col-md-9 register-right">
                            <!--   <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                                <li class="nav-item" style="font-family: byekan,tahoma">مرحله اول
                                </li>


                            </ul>-->
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active" id="step1" role="tabpanel" aria-labelledby="step1Tab">
                                    <h3 class="register-heading">در کانال ما عضو شدید ؟</h3>
                                    <br />
                                    <div class="row register-form">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <asp:Label ID="lblYouTube" runat="server" Text="">کانال یوتیوب به آدرس :Youtube.com/SOJAA</asp:Label>
                                            </div>
                                            <div class="form-group ">
                                                <asp:RadioButtonList ID="rbtnYouTube" RepeatDirection="Horizontal"  Width="30%" runat="server">
                                                    <asp:ListItem Text="بله"  Value="0">  </asp:ListItem>
                                                    <asp:ListItem Text="خیر" Value="1">  </asp:ListItem>

                                                </asp:RadioButtonList>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="lblAparat" runat="server" Text="">کانال آپارات به آدرس :aparat.com/sojaa</asp:Label>
                                            </div>
                                            <div class="form-group">
                                                <asp:RadioButtonList ID="rbtnAparat" RepeatDirection="Horizontal" Width="30%" runat="server">
                                                    <asp:ListItem Text="بله" Value="0"></asp:ListItem>
                                                    <asp:ListItem Text="خیر" Value="1"></asp:ListItem>

                                                </asp:RadioButtonList>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group ">
                                                <asp:Label ID="lblUrl" runat="server" Text="">نمونه کار اگه داری آدرسش رو بنویس : (صفحات اجتماعی ، سایت و ....)</asp:Label>

                                            </div>
                                            <div class="form-group">
                                                <asp:TextBox ID="txtUrl" TextMode="MultiLine" CssClass="form-control " runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="ValidatorTextUrl" runat="server" Font-Names="byekan" Font-Size="Small" ForeColor="#0000ff" ErrorMessage="لطفا جهت آشنایی بیشتر با شما و مهارت هایتان  آدرس های خواسته شده را وارد کنید." ControlToValidate="txtUrl" ValidationGroup="filErr"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <asp:Button ID="btnSendStep1" runat="server" Text="مرحله بعد" OnClick="btnSendStep1_Click" CssClass="btnRegister" ClientIDMode="Static" ValidationGroup="filErr" />
                                            </div>

                                        </div>
                                    </div>
                                </div>




                            </div>

                        </div>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <div class="col-md-9 register-right">
                            <!--    <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                                <li class="nav-item" style="font-family: byekan,tahoma">مرحله دوم
                                </li>
                            </ul>-->
                            <div class="tab-pane fade show " id="step2" role="tabpanel" aria-labelledby="step2Tab" runat="server">
                                <h3 class="register-heading">کدام یک از ویدئوهای ما را تماشا کردین؟</h3>
                                <br />
                                <div class="row register-form">
                                    <div class="col-md-6  ">
                                        <asp:CheckBoxList ID="ckbVideoYuotube" TextAlign="Right" CssClass="form-check form-reverse " runat="server">
                                            <asp:ListItem Text="آموزش مقدماتی وب سایت HTML" Value="0">آموزش مقدماتی وب سایت HTML</asp:ListItem>
                                            <asp:ListItem Text=">آموزش Wordpress" Value="1">آموزش Wordpress</asp:ListItem>
                                            <asp:ListItem Text="آموزش Pythone" Value="2">آموزش Pythone</asp:ListItem>
                                            <asp:ListItem Text="آموزش Bootstrap" Value="3">آموزش Bootstrap</asp:ListItem>

                                        </asp:CheckBoxList>
                                    </div>
                                    <div class="col-md-6 ">
                                        <asp:CheckBoxList ID="ckbVideoAparat" TextAlign="Right" CssClass="form-check form-check-reverse" runat="server">
                                            <asp:ListItem Text="آموزش ASP.NET" Value="0">آموزش ASP.NET</asp:ListItem>
                                            <asp:ListItem Text="طراحی بازی با JavaScript سطح مقدماتی" Value="1">طراحی بازی با JavaScript سطح مقدماتی</asp:ListItem>
                                            <asp:ListItem Text="طراحی بازی با JavaScript سطح متوسط" Value="2">طراحی بازی با JavaScript سطح متوسط</asp:ListItem>
                                            <asp:ListItem Text="آموزش نصب و استفاده از GIT" Value="3">آموزش نصب و استفاده از GIT</asp:ListItem>

                                        </asp:CheckBoxList>

                                        <div>
                                            <asp:Button ID="btnBackStep1" runat="server" Text="مرحله قبل" CssClass="btnBack" ClientIDMode="Static" OnClick="btnBackStep1_Click" />
                                            <asp:Button ID="btnSendStep2" runat="server" Text="مرحله آخر" OnClick="btnSendStep2_Click" CssClass="btnRegister" ClientIDMode="Static" ValidationGroup="g3" />

                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <div class="col-md-9 register-right">
                            <!-- <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                                <li class="nav-item" style="font-family: byekan,tahoma">مرحله سوم
                                </li>
                            </ul>-->
                            <div class="tab-pane fade show " id="final" role="tabpanel" aria-labelledby="finalTab" runat="server">
                                <h3 class="register-heading">آیا در سایت سوال و جواب عضو هستید؟</h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="lblSojaSite" runat="server" Text="">در صورت عضویت لطفا نام کاربری را وارد کنید:</asp:Label>
                                        </div>
                                        <div class="form-group">
                                            <!-- <input type="text" class="form-control" placeholder="Last Name *" value="" />-->
                                            <asp:TextBox ID="txtSojaUserName" class="form-control" placeholder="نام کاربری سایت سوال جواب*" value="" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validatorSojaUsername" runat="server" ControlToValidate="txtSojaUserName" Font-Names="byekan" Font-Size="Small" ForeColor="#0000ff" ErrorMessage="نام کاربری را وارد کنید." Visible="True" ValidationGroup="g1"></asp:RequiredFieldValidator>
                                            <asp:Label ID="lblSojaUserName" runat="server" Visible="false" Text="Label"></asp:Label>
                                        </div>
                                        <div class="form-group">
                                            <!-- <input type="email" class="form-control" placeholder="Email *" value="" />-->
                                            <asp:TextBox ID="txtEmail" TextMode="Email" class="form-control" placeholder="example@Email.com" value="" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validEmail" runat="server" ErrorMessage="وارد کردن ایمیل معتبر الزامیست." Font-Names="byekan" Font-Size="Small" ForeColor="#0000ff" Visible="true" ControlToValidate="txtEmail" ValidationGroup="g1"></asp:RequiredFieldValidator>

                                        </div>
                                        <div class="form-group">
                                            <!-- <input type="text" maxlength="10" minlength="10" class="form-control" placeholder="Phone *" value="" />-->
                                            <asp:TextBox ID="txtPhoneNumber" class="form-control" placeholder="09xxxxxxxxx" value="" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="ValidPhone" runat="server" ErrorMessage="وارد کردن شماره همراه الزامیست." Font-Names="byekan" Font-Size="Small" ForeColor="#0000ff" Visible="true" ControlToValidate="txtPhoneNumber" ValidationGroup="g1"></asp:RequiredFieldValidator>
                                        </div>


                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <p class="text-break text-justify">در صورت عضویت در سایت سوال جواب نام کاربری سایت سوال جواب خود را وارد کنید و پس از تایید قادر هستید باهمان نام کاربری در این سایت به فعالیت خود ادامه دهید. در غیر اینصورت ابتدا در سایت سوال و جواب عضو شوید. </p>


                                        </div>
                                        <div class="form-group">
                                            <cc1:RecaptchaWidget ID="RecaptchaWidget1" RenderApiScript="false" runat="server" />

                                        </div>

                                        <div>
                                            <asp:Button ID="btnBackStep2" CssClass="btnBack" runat="server" Text="مرحله قبل" OnClick="btnBackStep2_Click" />
                                            <asp:Button ID="btnRegFinal" class="btnRegister" value="Register" OnClick="btnRegFinal_Click" runat="server" Text="ثبت اطلاعات" ValidationGroup="g1" />
                                        </div>
                                        <div>
                                            <asp:Label ID="lblErr" runat="server" Font-Names="byakan" Font-Size="Small" Font-Bold="true" ForeColor="#ff0000" Text=""></asp:Label>
                                        </div>

                                    </div>

                                </div>

                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="View4" runat="server">
                        <div class="col-md-9 register-right">

                            <div class="row " style="margin-top: 80px; margin-right: 250px;">
                                <h3 style="margin-top: 60px; margin-right: 160px; color: darkblue">سپاس از شما
                                </h3>
                                <p class="text-break " style="margin-top: 10px; color: blue; font-size: larger">
                                    ثبت اطلاعات با موفقیت انجام شد .در صورت تایید مدیریت ، کلمه عبور به ایمیل شما ارسال می شود !
                               
                                </p>
                            </div>
                        </div>
                    </asp:View>
                </asp:MultiView>
            </div>
        </div>
    </form>
</body>
</html>
