<%@ Page Language="C#" AutoEventWireup="true" CodeFile="progress.aspx.cs" Inherits="progress" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<%@ Register assembly="netchartdir" namespace="ChartDirector" tagprefix="chart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head runat="server">
    <title>سامانه اینترنتی نرم افزار مدیریت مدرسه</title>
    <style type="text/css">
        .style2
        {
            height: 20px;
            width: 66px;
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
                                نمودار رشد و افت</td>
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
                                        ID="tb_schoolinfo" runat="server" visible="True">
                                        <tr>
                                            <td align="right" style="background-repeat: repeat-x; "
                                                valign="middle" class="style2">
                                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt"
                                                    ForeColor="#01235A" Text="معدل دروس"></asp:Label></td>
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
                                            <td align="center" colspan="2" 
                                                style="background-image: url('images/wtm.png'); text-align: center; " 
                                                valign="top" dir="rtl">
                                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Tahoma">نمودار 
                                                رشد و افت دانش آموز در مقایسه با کلاس</asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2" 
                                                style="background-image: url('images/wtm.png'); text-align: center; line-height: 30px;" 
                                                valign="top" dir="rtl">
                                                &nbsp;<chart:WebChartViewer ID="WebChartViewer1" runat="server" 
                                                    Height="389px" Width="800px" />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
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
    <asp:SqlDataSource ID="sds_st_less_ave" runat="server" 
        CacheExpirationPolicy="Sliding" 
        ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
        
        SelectCommand="SELECT AVG(score) AS Expr1 FROM ScoreTable WHERE (schoolID = @Param1) AND (studentID = @Param2) AND (scoredate &gt;= @Param8) AND (scoredate &lt;= @Param9)">
        <SelectParameters>
            <asp:SessionParameter Name="Param1" SessionField="schoolid" />
            <asp:SessionParameter Name="Param2" SessionField="studentid" />
            <asp:Parameter Name="Param8" />
            <asp:Parameter Name="Param9" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sds_avgclass" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
        
        SelectCommand="SELECT AVG(ScoreTable.score) AS Expr1, ScoreTable.scoredate FROM ScoreTable INNER JOIN (SELECT classID FROM StudentTable WHERE (schoolID = @Param1) AND (studentID = @Param2)) AS derivedtbl_1 ON ScoreTable.classID = derivedtbl_1.classID WHERE (ScoreTable.schoolID = @Param1) GROUP BY ScoreTable.scoredate HAVING (ScoreTable.scoredate &gt;= @Param4) AND (ScoreTable.scoredate &lt;= @Param5)">
        <SelectParameters>
            <asp:SessionParameter Name="Param1" SessionField="schoolid" />
            <asp:SessionParameter Name="Param2" SessionField="studentid" />
            <asp:Parameter Name="Param4" />
            <asp:Parameter Name="Param5" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sds_avg_grade" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
        
        SelectCommand="SELECT AVG(ScoreTable.score) AS Expr1 FROM (SELECT derivedtbl_2.classID FROM (SELECT grade FROM StudentTable WHERE (schoolID = @Param5) AND (studentID = @Param6)) AS derivedtbl_1_1 INNER JOIN (SELECT grade, classID FROM StudentTable AS StudentTable_1 WHERE (schoolID = @Param4) GROUP BY grade, classID) AS derivedtbl_2 ON derivedtbl_1_1.grade = derivedtbl_2.grade) AS derivedtbl_1 INNER JOIN ScoreTable ON derivedtbl_1.classID = ScoreTable.classID WHERE (ScoreTable.scoredate &gt;= @Param1) AND (ScoreTable.scoredate &lt;= @Param2) AND (ScoreTable.schoolID = @Param7)">
        <SelectParameters>
            <asp:SessionParameter Name="Param5" SessionField="schoolid" />
            <asp:SessionParameter Name="Param6" SessionField="studentid" />
            <asp:SessionParameter Name="Param4" SessionField="schoolid" />
            <asp:Parameter Name="Param1" />
            <asp:Parameter Name="Param2" />
            <asp:SessionParameter Name="Param7" SessionField="schoolid" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br /><br /><br /><br />
        <table style="position:relative;bottom:0;width:100%;z-index:999;">
        <tr>
            <td style="height=100px;background-image: url('images/foot.png')">
                <img alt="" src="images/smandtell_small.png" /></td>
        </tr>
    </table>
    </form>
</body>
</html>
