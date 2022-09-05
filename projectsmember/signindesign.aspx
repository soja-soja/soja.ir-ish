<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signindesign.aspx.cs" UnobtrusiveValidationMode="None" Inherits="projectsmember.signindesign" %>

<%@ Register Assembly="Recaptcha.Web" Namespace="Recaptcha.Web.UI.Controls" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
        <div class="container register" style="margin-top: 0; padding: 70px 50px 50px 50px; position: ; max-width: 100%; height: vmax; margin-left: 0; margin-right: 0;">
            <div class="row">
                <div class="col-md-3 register-left">
                    <br />
                    <br />
                    <br />
                    <br />
                    <h3>خوش آمدید</h3>
                    <p>لطفا اطلاعات  با دقت وارد کنید و پس از ثبت اطلاعات  منتظر دریافت ایمیل از طرف ماباشید .</p>
                    <!--  <input type="submit" name="" value="Login" /><br />-->
                </div>
                <div class="col-md-9 register-right ">
                    <!-- <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Employee</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Hirer</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <h3 class="register-heading">Apply as a Employee</h3>-->
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
                                <!-- <select class="form-control" id="ddlOther" OnSelectedIndexChanged="ShowHideDiv()" onchange="ShowHideDiv()">
                                    <option class="hidden" value="-1" selected>انتخاب کنید</option>
                                    <option value="0">یوتیوب (youtube.com/sojaaa) </option>
                                    <option value="1">سایت سوال و جواب (soja.ir) </option>
                                    <option value="7">دیگر </option>
                                </select>-->
                            </div>
                            <div class="form-group" id="dvOther" style="display: none">
                                <asp:TextBox ID="txtOther" CssClass="form-control " runat="server"></asp:TextBox>
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
                                <!-- <select class="form-control" id="selProjectType" onchange="selProject()">
                                    <option class="hidden" value="-1" style="color: cornflowerblue" selected disabled>انتخاب کنید</option>
                                    <option value="0">طراحی سایت </option>
                                    <option value="1">تحلیل داده - ماشین لرنینگ </option>
                                    <option value="2">رفع اشکال برنامه نویسی </option>
                                    <option value="3">تدریس خصوصی </option>
                                    <option value="4">پروژه های دیگر </option>
                                </select>-->
                            </div>
                            <div class="form-group" id="dvOtherProject" style="display: none">
                                <asp:TextBox ID="txtOtherProject" CssClass="form-control " runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group" id="dvExmpWebPage" style="display: none">
                                <!--<label for="txtExmpWebPag" class="form-label text-primary text-break ">نمونه وب سایت های مشابه که از نظر ظاهری می پسندی و مایلی پروژه نهایی شبیهشون باشه (حداقل ۲ تا)</label>
                                <textarea class="form-control"  id="txtExmpWebPag" rows="3"></textarea>-->
                                <asp:Label ID="lblExmpWebPage" CssClass="text-break " runat="server" Text="Label">نمونه وب سایت های مشابه که از نظر ظاهری می پسندی و مایلی پروژه نهایی شبیهشون باشه (حداقل ۲ تا)</asp:Label>
                                <asp:TextBox ID="txtExmpWebPage" CssClass="form-control " TextMode="MultiLine" runat="server"></asp:TextBox>

                            </div>
                            <div class="form-group" id="dvSubject" style="display: none">
                                <!--  <label for="txtTeachProficiency" class="form-label text-primary">چه موضوع/موضوعاتی در نظر داری؟</label>
                                <textarea class="form-control" id="txtTeachProficiency" rows="3"></textarea>-->
                                <asp:Label ID="lblTeachProficiency" runat="server" Text="Label">چه موضوع/موضوعاتی در نظر داری؟</asp:Label>
                                <asp:TextBox ID="txtTeachProficiency" CssClass="form-control " TextMode="MultiLine" runat="server"></asp:TextBox>
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
                                <!-- <label for="txtDetailDescription" class="form-label text-primary">ویژگی های پروژه رو با جزییات فنی توضیح بدید:</label>
                                <textarea class="form-control" id="txtDetailDescription" rows="5"></textarea>
                               <asp:Label ID="lblDetailDescription" CssClass="form-control  text-center text-primary  border-0  " runat="server" Text="Label">ویژگی های پروژه رو با جزییات فنی توضیح بدید:</asp:Label>
                                <asp:TextBox ID="txtDetailDescription" Width="200" Height="200" runat="server"></asp:TextBox>-->
                                <asp:Label ID="lblDetailsDescription" CssClass="form-label" runat="server" Text="Label">ویژگی های پروژه رو با جزییات فنی توضیح بدید:</asp:Label>
                                <asp:TextBox ID="txtDetailsDescription" CssClass="form-control " TextMode="MultiLine" Rows="7" runat="server"></asp:TextBox>

                            </div>



                        </div>
                        <div class="col-md-6" id="dvFixProgramBug" style="display: none">

                            <div class="form-group">
                                <!-- <label for="txtTeachSubject" class="form-label text-primary">چقدر روی موضوع/موضوعات تسلط داری؟</label>
                                <textarea class="form-control" id="txtTeachSubject" rows="1"></textarea>-->
                                <asp:Label ID="lblTeachSubject" CssClass="form-label" runat="server" Text="Label">چقدر روی موضوع/موضوعات تسلط داری؟</asp:Label>
                                <asp:TextBox ID="txtTeachSubject" CssClass="form-control " TextMode="MultiLine" runat="server"></asp:TextBox>


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
                                <!--   <label for="txtTeachTime" class="form-label text-primary">فکر میکنی چقدر زمان لازم داری؟</label>
                                <textarea class="form-control" id="txtTeachTime" rows="1"></textarea>-->
                                <asp:Label ID="lblTeachTime" CssClass="form-label" runat="server" Text="Label">فکر میکنی چقدر زمان لازم داری؟</asp:Label>
                                <asp:TextBox ID="txtTeachTime" CssClass="form-control " TextMode="MultiLine" runat="server"></asp:TextBox>

                            </div>


                        </div>
                        <div class="col-md-6" id="dvTeaching" style="display: none">

                            <div class="form-group">
                                <!-- <label for="txtTeachSubject" class="form-label text-primary">چقدر روی موضوع/موضوعات تسلط داری؟</label>
                                <textarea class="form-control" id="txtTeachSubject" rows="1"></textarea>-->
                                <asp:Label ID="lblTeachSubject2" CssClass="form-label" runat="server" Text="Label">چقدر روی موضوع/موضوعات تسلط داری؟</asp:Label>
                                <asp:TextBox ID="txtTeachSubject2" CssClass="form-control " TextMode="MultiLine" runat="server"></asp:TextBox>


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
                                <!--  <label for="txtTeachTime" class="form-label text-primary">فکر میکنی چقدر زمان لازم داری؟</label>
                                <textarea class="form-control" id="txtTeachTime" rows="1"></textarea>-->
                                <asp:Label ID="lblTeachTime2" CssClass="form-label" runat="server" Text="Label">فکر میکنی چقدر زمان لازم داری؟</asp:Label>
                                <asp:TextBox ID="txtTeachTime2" CssClass="form-control " TextMode="MultiLine" runat="server"></asp:TextBox>

                            </div>



                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblBudget" runat="server" Text="Label">حدود بودجه</asp:Label>
                            <asp:TextBox ID="txtBudget" CssClass="form-control " runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblDeliveryTime" runat="server" Text="Label">حداکثر زمان تحویل</asp:Label>
                            <asp:TextBox ID="txtDeliveryTime" CssClass="form-control " runat="server"></asp:TextBox>
                        </div>
                        <div>
                            <cc1:RecaptchaWidget ID="RecaptchaWidget1" RenderApiScript="false" runat="server" />
                            <asp:Label ID="lblErr" runat="server" Text="" ForeColor="Red"></asp:Label>
                            <asp:Button ID="btnSubmit" type="submit" OnClick="btnSubmit_Click" runat="server" class="btnRegister" Style="margin-top: -70px; margin-right: 400px;" Text="ثبت اطلاعات" />

                        </div>
                    </div>

                </div>

            </div>
        </div>
    </form>
    <script src="js/signDesign.js?v1"></script>

</body>
</html>
