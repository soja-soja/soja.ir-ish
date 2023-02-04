<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signindesign.aspx.cs" UnobtrusiveValidationMode="None" Inherits="projectsmember.signindesign" %>

<%@ Register Assembly="Recaptcha.Web" Namespace="Recaptcha.Web.UI.Controls" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" type="image/png" href="assets/img/Formfavicon.png">
    <title>ثبت نام / ورود </title>
    <!--<link href="css/signinStyle.css" rel="stylesheet" />-->
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
        <div class="container register" style="margin-top: 0; display: block; overflow:auto; padding: 70px 50px 50px 50px;  max-width: 100%; height: vmax; margin-left: 0; margin-right: 0;">
            <div class="row">
                <div class="col-md-3 register-left">
                    <br />
                    <br />
                    <br />
                    <br />
                    <h3>خوش آمدید</h3>
                    <p>لطفا اطلاعات  با دقت وارد کنید و پس از ثبت اطلاعات  منتظر دریافت ایمیل از طرف ما باشید .</p>
                    <!--  <input type="submit" name="" value="Login" /><br />-->
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="lblRegisterOk" runat="server" Text="" Font-Bold="True" ForeColor="Aqua"></asp:Label>
                </div>
                <div class="col-md-9 register-right  "  >
                    <div class="row register-form mt-0 p-lg-5 ">

                        <div class="col-md-6">

                            <div class="form-group">
                                <asp:Label ID="lblWhere" runat="server" Text="">از کجا  با ما آشنا شدید :</asp:Label>

                                <asp:DropDownList CssClass="form-control" ID="ddlOther" onchange="ShowHideDiv()" runat="server">
                                    <asp:ListItem Text="" Value="-1" Selected>انتخاب کنید</asp:ListItem>
                                    <asp:ListItem Text="یوتیوب" Value="0">یوتیوب (youtube.com/sojaaa)</asp:ListItem>
                                    <asp:ListItem Text="سایت سوال و جواب" Value="1">سایت سوال و جواب (soja.ir)</asp:ListItem>
                                    <asp:ListItem Text="دیگر" Value="7">دیگر</asp:ListItem>
                                </asp:DropDownList>

                            </div>
                            <div class="form-group" id="dvOther" style="display: none">
                                <asp:TextBox ID="txtOther" CssClass="form-control " runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="validOther" runat="server" ErrorMessage="از کجا با ما آشنا شدید؟" Font-Names="byekan" Font-Size="Small" ForeColor="#0000ff" Visible="true" ControlToValidate="txtOther" ValidationGroup="fillErr"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblProjectType" runat="server" Text="">نوع پروژه انتخابی </asp:Label>
                                <asp:DropDownList CssClass="form-control" ID="selProjectType" onchange="selProject()" runat="server">
                                    <asp:ListItem Text="" Value="-1" Selected>انتخاب کنید</asp:ListItem>
                                    <asp:ListItem Text="" Value="0">طراحی سایت</asp:ListItem>
                                    <asp:ListItem Text="" Value="1">تحلیل داده - ماشین لرنینگ</asp:ListItem>
                                    <asp:ListItem Text="" Value="2">رفع اشکال برنامه نویسی</asp:ListItem>
                                    <asp:ListItem Text="" Value="3">تدریس خصوصی</asp:ListItem>
                                    <asp:ListItem Text="" Value="4">پروژه های دیگر</asp:ListItem>
                                </asp:DropDownList>

                            </div>
                            <div class="form-group" id="dvOtherProject" style="display: none">
                                <asp:TextBox ID="txtOtherProject" CssClass="form-control " runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="validOtherProj" runat="server" ErrorMessage="لطفا پروژه مورد نظر خود را شرح دهید." Font-Names="byekan" Font-Size="Small" ForeColor="#0000ff" Visible="true" ControlToValidate="txtOtherProject" ValidationGroup="fillErr"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group" id="dvExmpWebPage" style="display: none">
                                <asp:Label ID="lblExmpWebPage" CssClass="text-break " runat="server" Text="Label">نمونه وب سایت های مشابه که از نظر ظاهری می پسندی و مایلی پروژه نهایی شبیهشون باشه (حداقل ۲ تا)</asp:Label>
                                <asp:TextBox ID="txtExmpWebPage" CssClass="form-control " TextMode="MultiLine" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="validExmpWebPage" runat="server" ErrorMessage="پروژه های مشابه مورد نظر خود را نام ببرید." Font-Names="byekan" Font-Size="Small" ForeColor="#0000ff" Visible="true" ControlToValidate="txtExmpWebPage" ValidationGroup="fillErr"></asp:RequiredFieldValidator>


                            </div>
                            <div class="form-group" id="dvSubject" style="display: none">
                                <asp:Label ID="lblTeachProficiency" runat="server" Text="Label">چه موضوع/موضوعاتی در نظر داری؟</asp:Label>
                                <asp:TextBox ID="txtTeachProficiency" CssClass="form-control " TextMode="MultiLine" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="validTeachProficiency" runat="server" ErrorMessage="موضوعات مورد نظر خود را بیان کنید." Font-Names="byekan" Font-Size="Small" ForeColor="#0000ff" Visible="true" ControlToValidate="txtTeachProficiency" ValidationGroup="fillErr"></asp:RequiredFieldValidator>

                            </div>

                        </div>
                        <div class="col-md-6" id="dvWebDesign" style="display: none">

                            <div class="form-group">

                                <asp:Label ID="lblFavMngment" CssClass="form-control text-center text-primary  border-0  " runat="server" Text="Label">کارکردهای مورد علاقه</asp:Label>
                                <asp:CheckBoxList ID="chbFavMngment" TextAlign="Right" CssClass="form-check  form-check-inline " runat="server">
                                    <asp:ListItem Text="مدیریت محتوی" Value="0">مدیریت محتوی</asp:ListItem>
                                    <asp:ListItem Text="مدیریت کاربران" Value="1">مدیریت کاربران</asp:ListItem>
                                    <asp:ListItem Text="موارد دیگر" Value="2">موارد دیگر</asp:ListItem>
                                </asp:CheckBoxList>
                            </div>
                            <div class="form-group ">
                                <asp:Label ID="lblTech" runat="server" CssClass="form-control text-center text-primary  border-0  " Text="Label">تکنولوژی سایت</asp:Label>
                                <asp:RadioButtonList ID="rbtTech" TextAlign="Right" CssClass="form-check form-check-inline" runat="server">
                                    <asp:ListItem Text="asp" Value="0">ASP.NET</asp:ListItem>
                                    <asp:ListItem Text="cms" Value="1">Cms (wordpress, etc)</asp:ListItem>
                                    <asp:ListItem Text="no matter" Value="2">مهم نیست/ فرق نداره</asp:ListItem>
                                </asp:RadioButtonList>

                            </div>


                        </div>
                        <div class="col-md-6" id="dvDataAnalys" style="display: none">

                            <div class="form-group">
                                <asp:Label ID="lblDetailsDescription" CssClass="form-label" runat="server" Text="Label">ویژگی های پروژه رو با جزییات فنی توضیح بدید:</asp:Label>
                                <asp:TextBox ID="txtDetailsDescription" CssClass="form-control " TextMode="MultiLine" Rows="7" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="validDetailsDescription" runat="server" ErrorMessage="توضیح جزییات پروژه الزامیست." Font-Names="byekan" Font-Size="Small" ForeColor="#0000ff" Visible="true" ControlToValidate="txtDetailsDescription" ValidationGroup="fillErr"></asp:RequiredFieldValidator>

                            </div>



                        </div>
                        <div class="col-md-6" id="dvFixProgramBug" style="display: none">

                            <div class="form-group">
                                <asp:Label ID="lblTeachSubject" CssClass="form-label" runat="server" Text="Label">چقدر روی موضوع/موضوعات تسلط داری؟</asp:Label>
                                <asp:TextBox ID="txtTeachSubject" CssClass="form-control " TextMode="MultiLine" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="validTeachSubject" runat="server" ErrorMessage="میزان تسلط؟؟؟؟" Font-Names="byekan" Font-Size="Small" ForeColor="#0000ff" Visible="true" ControlToValidate="txtTeachSubject" ValidationGroup="fillErr"></asp:RequiredFieldValidator>



                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblTeachVideo" runat="server" CssClass="form-control text-center text-primary  border-0 " Text="Label">کدوم ویدیوهامونو دیدی؟ </asp:Label>
                                <asp:CheckBoxList ID="chbTeachVideo" CssClass="form-check " TextAlign="Left" RepeatColumns="2" RepeatDirection="Horizontal" runat="server">
                                    <asp:ListItem Text="asp" Value="0">ASP.NET</asp:ListItem>
                                    <asp:ListItem Text="bootstrap" Value="1">Bootstrap</asp:ListItem>
                                    <asp:ListItem Text="python" Value="2">Pythone</asp:ListItem>
                                    <asp:ListItem Text="wordpress" Value="3"> Wordpress</asp:ListItem>
                                </asp:CheckBoxList>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblTeachTime" CssClass="form-label" runat="server" Text="Label">فکر میکنی چقدر زمان لازم داری؟</asp:Label>
                                <asp:TextBox ID="txtTeachTime" CssClass="form-control " TextMode="MultiLine" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="validTeachTime" runat="server" ErrorMessage="زمان مورد نظر؟؟؟؟" Font-Names="byekan" Font-Size="Small" ForeColor="#0000ff" Visible="true" ControlToValidate="txtTeachTime" ValidationGroup="fillErr"></asp:RequiredFieldValidator>

                            </div>


                        </div>
                        <div class="col-md-6" id="dvTeaching" style="display: none">

                            <div class="form-group">
                                <asp:Label ID="lblTeachSubject2" CssClass="form-label" runat="server" Text="Label">چقدر روی موضوع/موضوعات تسلط داری؟</asp:Label>
                                <asp:TextBox ID="txtTeachSubject2" CssClass="form-control " TextMode="MultiLine" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="validTeachSubj2" runat="server" ErrorMessage="میزان تسلط؟؟؟؟" Font-Names="byekan" Font-Size="Small" ForeColor="#0000ff" Visible="true" ControlToValidate="txtTeachSubject2" ValidationGroup="fillErr"></asp:RequiredFieldValidator>



                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblTeaching" runat="server" CssClass="form-control text-center text-primary  border-0 " Text="Label">کدوم ویدیوهامونو دیدی؟ </asp:Label>
                                <asp:CheckBoxList ID="chbTeaching" TextAlign="left" CssClass="form-check " RepeatColumns="2" RepeatDirection="Horizontal" runat="server">
                                    <asp:ListItem Text="ASP" Value="0">ASP.NET</asp:ListItem>
                                    <asp:ListItem Text="Bootstrap" Value="1">Bootstrap</asp:ListItem>
                                    <asp:ListItem Text="Python" Value="2">Pythone</asp:ListItem>
                                    <asp:ListItem Text="Wordpress" Value="3"> Wordpress</asp:ListItem>
                                </asp:CheckBoxList>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblTeachTime2" CssClass="form-label" runat="server" Text="Label">فکر میکنی چقدر زمان لازم داری؟</asp:Label>
                                <asp:TextBox ID="txtTeachTime2" CssClass="form-control " TextMode="MultiLine" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="validTeachTime2" runat="server" ErrorMessage="زمان مورد نظر؟؟؟؟" Font-Names="byekan" Font-Size="Small" ForeColor="#0000ff" Visible="true" ControlToValidate="txtTeachTime2" ValidationGroup="fillErr"></asp:RequiredFieldValidator>


                            </div>



                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblBudget" runat="server" Text="Label">حدود بودجه</asp:Label>
                            <asp:TextBox ID="txtBudget" CssClass="form-control " runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="validBudget" runat="server" ErrorMessage="لطفا بودجه مورد نظر خود را وارد کنید." Font-Names="byekan" Font-Size="Small" ForeColor="#0000ff" Visible="true" ControlToValidate="txtBudget" ValidationGroup="fillErr"></asp:RequiredFieldValidator>

                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblDeliveryTime" runat="server" Text="Label">حداکثر زمان تحویل</asp:Label>
                            <asp:TextBox ID="txtDeliveryTime" CssClass="form-control " runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="validDeliverTime" runat="server" ErrorMessage="لطفا حداکثر زمان تحویل را وارد نمایید." Font-Names="byekan" Font-Size="Small" ForeColor="#0000ff" Visible="true" ControlToValidate="txtDeliveryTime" ValidationGroup="fillErr"></asp:RequiredFieldValidator>

                        </div>
                        <div class="form-row">
                            <div class="col">
                                <asp:Label ID="lblEmailProj" runat="server" Text="Label">آدرس ایمیل فعال جهت هماهنگی های بعدی</asp:Label>
                                <asp:TextBox ID="txtEmailProj" TextMode="Email" CssClass="form-control ml-3" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="validEmailProj" runat="server" ErrorMessage="وارد کردن ایمیل معتبر الزامیست." Font-Names="byekan" Font-Size="Small" ForeColor="#0000ff" Visible="true" ControlToValidate="txtEmailProj" ValidationGroup="fillErr"></asp:RequiredFieldValidator>

                            </div>
                            <div class="col">
                                <asp:Label ID="lblPhoneProj" runat="server" Text="Label">شماره همراه</asp:Label>
                                <asp:TextBox ID="txtPhoneProj" TextMode="Phone" CssClass="form-control ml-3" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="validPhoneProj" runat="server" ErrorMessage="وارد کردن شماره همراه الزامیست." Font-Names="byekan" Font-Size="Small" ForeColor="#0000ff" Visible="true" ControlToValidate="txtPhoneProj" ValidationGroup="fillErr"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                        <div>
                            <cc1:RecaptchaWidget ID="RecaptchaWidget1" RenderApiScript="false" runat="server" />
                            <asp:Label ID="lblErr" runat="server" Text="" ForeColor="Red"></asp:Label>
                            <asp:Button ID="btnSubmit" type="submit" OnClick="btnSubmit_Click" runat="server" class="btnRegister" Style="margin-top: -70px; margin-right: 400px;" Text="ثبت اطلاعات" ValidationGroup="fillErr" />

                        </div>
                    </div>

                </div>

            </div>
        </div>
    </form>
    <script src="js/signDesign.js?v1"></script>

</body>
</html>
