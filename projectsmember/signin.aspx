<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" UnobtrusiveValidationMode="None" Inherits="projectsmember.signin" %>

<%@ Register Assembly="Recaptcha.Web" Namespace="Recaptcha.Web.UI.Controls" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ثبت نام / ورود </title>
   <!-- <link href="css/signinStyle.css" rel="stylesheet" />-->
    <link href="css/StyleSign.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.6.0.slim.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>

    <%--https://github.com/tanveery/recaptcha-net--%>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>

</head>
<body dir="rtl" style="font-family: bmitra">
    <form id="form1" runat="server">
        <div class="container register" style="margin-top: 0; padding: 150px 50px 50px 50px; position: ; max-width: 100%; height: vmax; margin-left: 0; margin-right: 0;">
            <div class="row">
                <div class="col-md-3 register-left">
                    <h3 style="margin-top: 60px">خوش آمدید</h3>
                    <p style="margin-top: 10px">3 مرحله تا ثبت نام کامل فاصله دارید!</p>
                    <asp:TextBox ID="txtUsername" Font-Size="Small" Font-Names="byekan,tahoma" Font-Italic="true" runat="server"></asp:TextBox>
                    <asp:Button ID="btnLogin" runat="server" name="" value="Login" OnClick="btnLogin_Click" Font-Names="broya" Font-Bold="true" Text="ورود" /><br />
                    <asp:Label ID="lblErr" runat="server" Font-Names="byakan" Font-Size="Small" Font-Bold="true" ForeColor="#ff0000" Text=""></asp:Label>
                </div>

                <div class="col-md-9 register-right">
                    <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active  " id="step1-tab" data-toggle="tab" href="#step1" role="tab" aria-controls="step1" aria-selected="true">مرحله1</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="step2-tab" data-toggle="tab" href="#step2" role="tab" aria-controls="step2" aria-selected="false">مرحله2</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="final-tab" data-toggle="tab" href="#final" role="tab" aria-controls="final" aria-selected="false">آخرین مرحله</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="step1" role="tabpanel" aria-labelledby="step1-tab">
                            <h3 class="register-heading">در کانال ما عضو شدید ؟</h3>
                            <br />
                            <div class="row register-form">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <asp:Label ID="lblYouTube" runat="server" Text="">کانال یوتیوب به آدرس :Youtube.com/SOJAA</asp:Label>
                                    </div>
                                    <div class="form-group ">
                                        <asp:RadioButtonList ID="rbtnYouTube" RepeatDirection="Horizontal" runat="server">
                                            <asp:ListItem Text="بله" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="خیر" Value="1"></asp:ListItem>

                                        </asp:RadioButtonList>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="lblAparat" runat="server" Text="">کانال آپارات به آدرس :aparat.com/sojaa</asp:Label>
                                    </div>
                                    <div class="form-group">
                                        <asp:RadioButtonList ID="rbtnAparat" RepeatDirection="Horizontal" runat="server">
                                            <asp:ListItem Text="بله" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="خیر" Value="1"></asp:ListItem>

                                        </asp:RadioButtonList>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group ">
                                        <asp:Label ID="lblUrl" runat="server" Text="">آدرس های مربوط به صفحات اجتماعی و وب سایت های خود را وارد کنید.</asp:Label>

                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtUrl" TextMode="MultiLine"  CssClass="form-control " runat="server"></asp:TextBox>
                                    </div>
                                    <div class="form-group"></div>
                                    <div class="form-group"></div>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade show " id="step2" role="tabpanel" aria-labelledby="step2-tab">
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
                                        <asp:ListItem Text="طراحی بازی با JAvaScript سطح مقدماتی" Value="1">طراحی بازی با JAvaScript سطح مقدماتی</asp:ListItem>
                                        <asp:ListItem Text="طراحی بازی با JAvaScript سطح متوسط" Value="2">طراحی بازی با JAvaScript سطح متوسط</asp:ListItem>
                                        <asp:ListItem Text="آموزش نصب و استفاده از GIT" Value="3">آموزش نصب و استفاده از GIT</asp:ListItem>

                                    </asp:CheckBoxList>

                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade show " id="final" role="tabpanel" aria-labelledby="final-tab">
                            <h3 class="register-heading">آیا در سایت سوال و جواب عضو هستید؟</h3>
                            <div class="row register-form">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <asp:Label ID="lblSojaSite" runat="server" Text="">در صورت عضویت لطفا نام کاربری را وارد کنید:</asp:Label>
                                    </div>
                                    <div class="form-group">
                                        <!-- <input type="text" class="form-control" placeholder="Last Name *" value="" />-->
                                        <asp:TextBox ID="txtSojaUserName" class="form-control" placeholder="نام کاربری سایت سوال جواب*" value="" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSojaUserName" Font-Names="byekan" Font-Size="Small" ForeColor="#0000ff" ErrorMessage="نام کاربری را وارد کنید." ValidationGroup="g1"></asp:RequiredFieldValidator>
                                        <asp:Label ID="lblSojaUserName" runat="server" Visible="false" Text="Label"></asp:Label>
                                    </div>
                                    <div class="form-group">
                                        <!-- <input type="email" class="form-control" placeholder="Email *" value="" />-->
                                        <asp:TextBox ID="txtEmail" TextMode="Email" class="form-control" placeholder="آدرس ایمیل" value="" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <!-- <input type="text" maxlength="10" minlength="10" class="form-control" placeholder="Phone *" value="" />-->
                                        <asp:TextBox ID="txtPhoneNumber" class="form-control" placeholder="شماره تماس*" value="" runat="server"></asp:TextBox>
                                    </div>


                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <p class="text-break">در صورت عضویت در سایت سوال جواب نام کاربری سایت سوال جواب خود را وارد کنید و پس از تایید قادر هستید باهمان نام کاربری در این سایت به فعالیت خود ادامه دهید. </p>


                                    </div>
                                    <div class="form-group ">
                                        <cc1:RecaptchaWidget ID="RecaptchaWidget1" RenderApiScript="false" runat="server" />

                                    </div>
                                    <div>
                                        <asp:Button ID="btnRegFinal" class="btnRegister" value="Register" OnClick="btnRegFinal_Click" runat="server" Style="margin-top: 10px; margin-right: 50px;" Text="ثبت اطلاعات" />

                                    </div>

                                </div>

                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </form>

</body>
</html>
