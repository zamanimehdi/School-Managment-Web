<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changepass.aspx.cs" Inherits="changepass" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head runat="server">
    <title>سامانه اینترنتی نرم افزار مدیریت مدرسه</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
    </head>
<body style="padding-right: 0px; padding-left: 0px; font-size: 9pt; padding-bottom: 0px; margin: 0px; padding-top: 0px; font-family: tahoma;">
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr>
                <td align="center" style="background-image: url(images/top.png); width: 100%; height: 51px"
                    valign="top">
                    <table border="0" cellpadding="0" cellspacing="0" style="width: 850px">
                        <tr>
                            <td align="right" style="width: 100px; height: 26px" valign="middle">
                            </td>
                            <td align="right" style="width: 100px; height: 26px" valign="middle">
                            </td>
                            <td align="right" style="width: 100px; height: 26px" valign="middle">
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="font-size: 9pt; width: 650px; color: #ffffff; font-family: tahoma;
                                height: 25px" valign="middle" dir="rtl">
                                <asp:Label ID="lbl_stname" runat="server" ForeColor="#80FF80" Text="Label"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; آخرین بازدید شما در تاریخ
                                <asp:Label ID="lbl_lastv" runat="server" ForeColor="#FFE0C0" Text="Label"></asp:Label></td>
                            <td align="right" style="font-size: 9pt; color: #ffffff; font-family: tahoma;
                                height: 25px; text-align: left; border-left-style: 12;" valign="middle" 
                                colspan="2">
                                &nbsp;نمایش غیبت ها&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center" style="background-image: url('images/nav.png'); "
                    valign="top">
                    <table border="0" cellpadding="0" cellspacing="0" 
                        style="width: 800px; height: 47px;" width="800">
                        <tr>
                            <td align="right" style="font-size: 15pt; color: #800000; font-family: tahoma;
                                vertical-align: middle; height: 60px;" valign="middle" width="875">
                                <asp:Label ID="lbl_schooname" runat="server" Text="Label"></asp:Label>
                                &nbsp;
                            </td>
                            <td align="right" style="font-size: 9pt; color: #ffffff; font-family: tahoma;
                                text-align: center;" valign="middle" width="100">
                                <asp:ImageButton ID="img_mainpage" runat="server" 
                                    ImageUrl="~/images/home_icon.png" PostBackUrl="~/studentinformation.aspx" onmouseover="this.style.opacity=0.7;"
                                                                                                onmouseout="this.style.opacity=1;"/>
                                <br />
                                <asp:LinkButton ID="mainpage" runat="server" Font-Underline="False" ForeColor="Black"
                                    OnClick="logout_Click" style="text-align: left" 
                                    PostBackUrl="~/studentinformation.aspx">صفحه اصلی</asp:LinkButton>
                            </td>
                            <td align="right" style="font-size: 9pt; color: #ffffff; font-family: tahoma;
                                text-align: center;" valign="middle" dir="rtl" width="100">
                                <asp:ImageButton ID="img_logout" runat="server" ImageUrl="~/images/exit.png" onclick="img_logout_Click" 
                                    onmouseover="this.style.opacity=0.7;"
                                                                                                onmouseout="this.style.opacity=1;" />
                                <br />
                                <asp:LinkButton ID="btn_logout" runat="server" Font-Underline="False" ForeColor="Black"
                                    OnClick="logout_Click" style="text-align: left">خروج</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 100%" valign="top"><table border="0" cellpadding="0" cellspacing="0" style="width: 850px">
                    <tr>
                        <td align="center" colspan="3" dir="rtl">
                                    <table border="0" cellpadding="0" cellspacing="0" style="width: 840px" 
                                        ID="tb_schoolinfo" runat="server">
                                        <tr>
                                            <td align="right" colspan="2" style="background-repeat: repeat-x; height: 20px" 
                                                valign="middle">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 85px; background-repeat: repeat-x; height: 20px"
                                                valign="middle">
                                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt"
                                                    ForeColor="#01235A" Text="تغییر کلمه عبور"></asp:Label></td>
                                            <td align="right" style="background-image: url(images/ttop.png); width: 755px;
                                                background-repeat: repeat-x; height: 20px" valign="top">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" colspan="2" style="background-image: url(images/wtt.png); width: 840px;
                                                height: 23px" valign="top">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2" style="background-image: url(images/wtm.png)" 
                                                valign="top">
                                                <table class="style1">
                                                    <tr>
                                                        <td colspan="4">
                                                            <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="230">
                                                            &nbsp;</td>
                                                        <td style="text-align: left" width="120">
                                                            نام کاربری</td>
                                                        <td width="150">
                                                            <asp:TextBox ID="txt_username" runat="server" AutoPostBack="True" 
                                                                Enabled="False" ReadOnly="True"></asp:TextBox>
                                                        </td>
                                                        <td style="text-align: right">
                                                            - نام کاربری قابل تغییر نمی باشد</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td style="text-align: left">
                                                            کلمه عبور فعلی</td>
                                                        <td>
                                                            <asp:TextBox ID="txt_oldpass" runat="server" TextMode="Password" MaxLength="15"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td style="text-align: left">
                                                            کلمه عبور جدید</td>
                                                        <td>
                                                            <asp:TextBox ID="txt_newpass" runat="server" TextMode="Password" MaxLength="15"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td style="text-align: left">
                                                            تکرار کلمه عبور جدید</td>
                                                        <td>
                                                            <asp:TextBox ID="txt_newpass2" runat="server" TextMode="Password" 
                                                                MaxLength="15" ontextchanged="txt_newpass2_TextChanged"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td>
                                                            <asp:Button ID="Button1" runat="server" Font-Names="Tahoma" 
                                                                onclick="Button1_Click" Text="ثبت" Width="50px" />
&nbsp;
                                                            <asp:Button ID="Button2" runat="server" Font-Names="Tahoma" 
                                                                PostBackUrl="~/studentinformation.aspx" Text="انصراف" Width="50px" />
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" colspan="2" style="background-image: url(images/wtb.png); width: 840px;
                                                height: 33px" valign="top">
                                            </td>
                                        </tr>
                                    </table>
                        </td>
                    </tr>
                </table>
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 100%" valign="top">
                </td>
            </tr>
        </table>
    
    </div>
        <asp:SqlDataSource ID="sds_passchange" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
        SelectCommand="SELECT pass FROM userPassTable WHERE (usreName = @Param1)" 
        UpdateCommand="UPDATE userPassTable SET pass = @Param2 WHERE (usreName = @Param1)">
        <SelectParameters>
            <asp:ControlParameter ControlID="txt_username" Name="Param1" 
                PropertyName="Text" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Param2" />
            <asp:Parameter Name="Param1" />
        </UpdateParameters>
    </asp:SqlDataSource>
        <table style="position:fixed;bottom:0;width:100%;z-index:999;">
        <tr>
            <td style="height=100px;background-image: url('images/foot.png')">
                <img alt="" src="images/smandtell_small.png" /></td>
        </tr>
    </table>
    </form>
</body>
</html>
