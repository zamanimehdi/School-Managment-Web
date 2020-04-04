<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manage.aspx.cs" Inherits="manage" %>

<%@ Register assembly="obout_ImageZoom_NET" namespace="OboutInc.ImageZoom" tagprefix="obout" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>سامانه اینترنتی نرم افزار مدیریت مدرسه</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        #td_payam_koli
        {
            text-align: center;
        }
        #td_payam_koli0
        {
            text-align: center;
        }
        </style>
</head>
<body style="text-align: center; font-family: tahoma;">
    <form id="form1" runat="server">
    <table style="width: 100%">
        <tr>
            <td style="border-color: #C2C8EF; border-style: none; color: #000000; text-align: center; font-size: 10px;" 
                width="10px">
                                                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                                                ImageUrl="~/images/close.png"  onmouseover="this.style.opacity=0.7;"
                                                                                                onmouseout="this.style.opacity=1;" 
                                                                onclick="ImageButton1_Click" />
                                                            <br />
                                                            خروج</td>
            <td style="background-color: #ECE9FE; border-color: #C2C8EF; border-style: double; color: #000000; font-size: 12px;">
                <span>سیستم مدیریت سامانه اینترنتی برنامه مدیریت مدرسه</span></td>
        </tr>
        <tr>
            <td width="10px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <div>
    <center>
                                    <table border="0" cellpadding="0" cellspacing="0" style="width: 840px" 
                                        ID="tb_schoolinfo" runat="server" 
            visible="True">
                                        <tr>
                                            <td align="right" style="background-image: url(images/wtt.png); width: 840px;
                                                height: 23px" valign="top">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" 
                                                style="background-image: url('images/wtm.png'); text-align: right; line-height: 30px;" 
                                                valign="top" dir="rtl">
                                                <table class="style1" id="tb_btnes" runat="server">
                                                    <tr>
                                                        <td style="text-align: center; vertical-align: top;" width="25%">
                                                            <table style="width: 100%">
                                                                <tr>
                                                                    <td align="left">
                                                            <obout:ImageZoom ID="ImageZoom2" runat="server" 
                                                                BigImageUrl="~/images/help/help_sendpm.gif" Description="نمونه ای از صفحه شخصی دانش آموز" 
                                                                ImageUrl="~/images/help/Help.png" ShowLoading="False" 
                                                                StyleFolder="oboutstyles/simple" Position="SCREEN_CENTER" ZoomTime="500" />
                                                                    </td>
                                                                    <td align="right" width="80%">
                                                            <asp:Button ID="Button10" runat="server" Font-Names="Tahoma" Font-Size="9pt" 
                                                                Text="ارسال پیام برای خانواده ها" Width="170px" 
                                                                PostBackUrl="~/manager/sendpm.aspx" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="left">
                                                            <obout:ImageZoom ID="ImageZoom3" runat="server" 
                                                                BigImageUrl="~/images/help/help_delpm.gif" Description="" 
                                                                ImageUrl="~/images/help/Help.png" ShowLoading="False" 
                                                                StyleFolder="oboutstyles/simple" Position="SCREEN_CENTER" ZoomTime="500" />
                                                                    </td>
                                                                    <td>
                                                            <asp:Button ID="Button13" runat="server" Font-Names="Tahoma" Font-Size="9pt" 
                                                                Text="حذف پیام های ارسال شده" Width="170px" 
                                                                PostBackUrl="~/manager/removepm.aspx" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="left">
                                                                        &nbsp;</td>
                                                                    <td align="right">
                                                            <asp:Button ID="Button15" runat="server" Font-Names="Tahoma" Font-Size="9pt" 
                                                                Text="ارسال sms برای خانواده ها" Width="170px" 
                                                                PostBackUrl="~/manager/sendpm.aspx" Enabled="False" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                    <td align="right">
                                                                        &nbsp;</td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <td style="text-align: center; direction: ltr; vertical-align: top;" 
                                                            width="25%">
                                                            <table style="width: 100%">
                                                                <tr>
                                                                    <td align="right">
                                                            <asp:Button ID="Button12" runat="server" Font-Names="Tahoma" Font-Size="9pt" 
                                                                Text="ورود به صفحه کاربری دانش آموز" Width="170px" 
                                                                PostBackUrl="~/manager/loginas.aspx" />
                                                                    </td>
                                                                    <td align="left">
                                                            <obout:ImageZoom ID="ImageZoom4" runat="server" 
                                                                BigImageUrl="~/images/help/help_login.gif" Description="" 
                                                                ImageUrl="~/images/help/Help.png" ShowLoading="False" 
                                                                StyleFolder="oboutstyles/simple" Position="SCREEN_CENTER" ZoomTime="500" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right">
                                                            <asp:Button ID="Button16" runat="server" Font-Names="Tahoma" Font-Size="9pt" 
                                                                Text="آخرین بازدید کننده ها" Width="170px" PostBackUrl="~/manager/lastview.aspx" />
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right">
                                                            <asp:Button ID="Button6" runat="server" Font-Names="Tahoma" Font-Size="9pt" 
                                                                Text="مشاهده کلمه عبور دانش آموزان" Width="170px" 
                                                                onclientclick="window.open('manager/userpass.aspx','j','resizable=1,scrollbars=yes,status=yes,toolbar=no,menubar=no,location=no,height=580,width=1100,left=0,top=0');" 
                                                                PostBackUrl="~/manage.aspx" />
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                </tr>
                                                                </table>
                                                        </td>
                                                        <td style="text-align: center; direction: ltr; vertical-align: top;" 
                                                            width="25%">
                                                            <table style="width: 100%">
                                                                <tr>
                                                                    <td>
                                                            <asp:Button ID="Button1" runat="server" Font-Names="Tahoma" Font-Size="9pt" 
                                                                onclick="Button1_Click" Text="تنظیم پیام بالای صفحه" Width="170px" 
                                                                PostBackUrl="~/manage.aspx?allpm=y" />
                                                                    </td>
                                                                    <td>
                                                            <obout:ImageZoom ID="ImageZoom1" runat="server" 
                                                                BigImageUrl="~/images/help/help_matnebalayesafhe.gif" Description="نمونه ای از صفحه شخصی دانش آموز" 
                                                                ImageUrl="~/images/help/Help.png" ShowLoading="False" 
                                                                StyleFolder="oboutstyles/simple" Position="SCREEN_CENTER" ZoomTime="500" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                            <asp:Button ID="Button18" runat="server" Font-Names="Tahoma" Font-Size="9pt" 
                                                                onclick="Button18_Click" Text="بازه زمانی معدل  و رتبه " Width="170px" 
                                                                PostBackUrl="~/manage.aspx?setdate=y" />
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <td style="text-align: center; vertical-align: top;" width="25%">
                                                            <table style="width: 100%">
                                                                <tr>
                                                                    <td align="left">
                                                                        &nbsp;</td>
                                                                    <td align="right">
                                                            <asp:Button ID="Button3" runat="server" Font-Names="Tahoma" Font-Size="9pt" 
                                                                Text="چاپ پیام‌ خانواده‌ها" Width="160px" 
                                                                onclientclick="window.open('manager/list_school.aspx','j','resizable=1,scrollbars=yes,status=yes,toolbar=no,menubar=no,location=no,height=580,width=1100,left=0,top=0');" 
                                                                PostBackUrl="~/manage.aspx"  />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="left">
                                                            <obout:ImageZoom ID="ImageZoom5" runat="server" 
                                                                BigImageUrl="~/images/help/help_reply.gif" Description="" 
                                                                ImageUrl="~/images/help/Help.png" ShowLoading="False" 
                                                                StyleFolder="oboutstyles/simple" Position="SCREEN_CENTER" ZoomTime="500" />
                                                                    </td>
                                                                    <td align="right">
                                                            <asp:Button ID="Button9" runat="server" Font-Names="Tahoma" Font-Size="9pt" 
                                                                Text="پاسخ به پیام‌ها" Width="160px" 
                                                                PostBackUrl="~/manager/msganswer2.aspx" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                    <td style="text-align: right">
                                                            <asp:Button ID="Button17" runat="server" Font-Names="Tahoma" Font-Size="9pt" 
                                                                Text="چاپ پیام و پاسخ‌های ارسالی" Width="160px" 
                                                                onclientclick="window.open('manager/list_school_full.aspx','j','resizable=1,scrollbars=yes,status=yes,toolbar=no,menubar=no,location=no,height=580,width=1100,left=0,top=0');" 
                                                                PostBackUrl="~/manage.aspx"  />
                                                                    </td>
                                                                </tr>
                                                                </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: justify; vertical-align: top; color: #000000;" 
                                                            colspan="4">
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <asp:Label ID="Label2" runat="server" Font-Overline="False" Font-Size="12px" 
                                                                Width="500px" ForeColor="Black" style="color: #000099"></asp:Label>
                                                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                                            ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
                                                                            SelectCommand="SELECT COUNT(id) AS Expr1 FROM tb_relation WHERE (isreply = 1) AND (showanswer = 0) AND (schoolid = @Param1)">
                                                                            <SelectParameters>
                                                                                <asp:SessionParameter Name="Param1" SessionField="mschoolid" />
                                                                            </SelectParameters>
                                                                        </asp:SqlDataSource>
                                                        </td>
                                                    </tr>
                                                    </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="background-image: url('images/wtm.png'); width: 840px;
                                                height: 33px" valign="top">
                                                <table cellpadding="2" cellspacing="3" class="style1" id="td_setdate" 
                                                    dir="rtl" visible="False" runat="server">
                                                    <tr>
                                                        <td style="text-align: left">
                                                            &nbsp;متن صفحه نخست</td>
                                                        <td style="text-align: right">
                                                            <asp:TextBox ID="txt_matn" runat="server" Height="24px" Width="262px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: left">
                                                            تاریخ شروع محاسبه معدل و رتبه</td>
                                                        <td style="text-align: right">
                                                            <asp:TextBox ID="txt_startdate" runat="server" Height="24px" Width="262px"></asp:TextBox>
                                                        &nbsp;(مثال 890101)</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: left">
                                                            &nbsp;</td>
                                                        <td style="text-align: right">
                                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
                                                                SelectCommand="SELECT startdate_firstpagescore, enddate_firstpagescore, txtdate_firstpagescore FROM SchoolTable WHERE (shoolID = @schoolid)" 
                                                                UpdateCommand="UPDATE SchoolTable SET startdate_firstpagescore = @startdate, enddate_firstpagescore = N'999999', txtdate_firstpagescore = @txt WHERE (shoolID = @schoolid)">
                                                                <SelectParameters>
                                                                    <asp:Parameter Name="schoolid" />
                                                                </SelectParameters>
                                                                <UpdateParameters>
                                                                    <asp:Parameter Name="startdate" />
                                                                    <asp:Parameter Name="txt" />
                                                                    <asp:Parameter Name="schoolid" />
                                                                </UpdateParameters>
                                                            </asp:SqlDataSource>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td style="text-align: right">
                                                            <table style="width: 100%">
                                                                <tr>
                                                                    <td width="100">
                                                            <asp:Button ID="Button19" runat="server" Font-Names="Tahoma" Font-Size="9pt" 
                                                                onclick="Button19_Click" Text="ذخیره" style="height: 22px" />
                                                                    </td>
                                                                    <td>
                                                            <asp:Button ID="Button20" runat="server" Font-Names="Tahoma" Font-Size="9pt" 
                                                                onclick="Button14_Click" Text="انصراف" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <br />
                                                <table cellpadding="2" cellspacing="3" class="style1" id="td_payam_koli" 
                                                    dir="rtl" visible="False" runat="server">
                                                    <tr>
                                                        <td style="text-align: left">
                                                            <asp:Label ID="Label1" runat="server" Font-Size="9pt" 
                                                                style="text-align: center" Text="پیام کلی"></asp:Label>
                                                        </td>
                                                        <td style="text-align: right">
                                                            <asp:TextBox ID="txt_payamekoli" runat="server" Height="138px" 
                                                                TextMode="MultiLine" Width="483px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td style="text-align: right">
                                                            <table style="width: 100%">
                                                                <tr>
                                                                    <td width="100">
                                                            <asp:Button ID="Button8" runat="server" Font-Names="Tahoma" Font-Size="9pt" 
                                                                onclick="Button8_Click" Text="ذخیره" />
                                                                    </td>
                                                                    <td>
                                                            <asp:Button ID="Button14" runat="server" Font-Names="Tahoma" Font-Size="9pt" 
                                                                onclick="Button14_Click" Text="انصراف" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
                                                                SelectCommand="SELECT shoolID FROM SchoolTable WHERE (shoolID = @Param1)" 
                                                                UpdateCommand="UPDATE SchoolTable SET schollStatement = @Param2 WHERE (shoolID = @Param1)">
                                                                <SelectParameters>
                                                                    <asp:Parameter Name="Param1" />
                                                                </SelectParameters>
                                                                <UpdateParameters>
                                                                    <asp:Parameter Name="Param2" />
                                                                    <asp:Parameter Name="Param1" />
                                                                </UpdateParameters>
                                                            </asp:SqlDataSource>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="background-image: url(images/wtb.png); width: 840px;
                                                height: 33px" valign="top">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 840px;
                                                height: 33px; text-align: left;" valign="top">
                                                <br />
                                            </td>
                                        </tr>
                                        </table></center>
    
    </div>
    </form>
</body>
</html>
