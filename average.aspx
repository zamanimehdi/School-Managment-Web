<%@ Page Language="C#" AutoEventWireup="true" CodeFile="average.aspx.cs" Inherits="average" %>

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
        .style2
        {
            height: 20px;
            width: 66px;
        }
        .style3
        {
            height: 20px;
            width: 152px;
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
                                معدل دروس</td>
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
                            <br />
                                    <table border="0" cellpadding="0" cellspacing="0" style="width: 840px" 
                                        ID="tb_schoolinfo0" runat="server" visible="True">
                                        <tr>
                                            <td align="right" style="background-repeat: repeat-x; "
                                                valign="middle" class="style3">
                                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt"
                                                    ForeColor="#01235A" Text="نمایش معدل در بازه زمانی"></asp:Label></td>
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
                                                style="background-image: url('images/wtm.png'); text-align: right; line-height: 30px;" 
                                                valign="top" dir="rtl">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; از تاریخ
                                                <asp:TextBox ID="txt_d1" runat="server" TabIndex="3" Width="30px" MaxLength="2"></asp:TextBox>
                                                <asp:TextBox ID="txt_m1" runat="server" MaxLength="2" TabIndex="2" Width="30px"></asp:TextBox>
                                                <asp:TextBox ID="txt_y1" runat="server" MaxLength="2" TabIndex="1" Width="30px"></asp:TextBox>
&nbsp;&nbsp;&nbsp; تا تاریخ&nbsp;
                                                <asp:TextBox ID="txt_d2" runat="server" TabIndex="6" Width="30px" MaxLength="2"></asp:TextBox>
                                                <asp:TextBox ID="txt_m2" runat="server" TabIndex="5" Width="30px" MaxLength="2"></asp:TextBox>
                                                <asp:TextBox ID="txt_y2" runat="server" TabIndex="4" Width="30px" MaxLength="2"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="Button1" runat="server" Font-Names="Tahoma" Font-Size="9pt" 
                                                    onclick="Button1_Click" TabIndex="7" Text="محاسبه معدل در بازه زمانی" 
                                                    UseSubmitBehavior="False" Width="173px" />
                                                &nbsp;&nbsp;
                                                <asp:Button ID="Button2" runat="server" Font-Names="Tahoma" Font-Size="9pt" 
                                                    onclick="Button2_Click" TabIndex="7" Text="از ابتدای سال تحصیلی تاکنون" 
                                                    UseSubmitBehavior="False" Width="180px" />
                                                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - فرمت ورودی اطلاعات بصورت (روز/ماه/سال) باشد</td>
                                        </tr>
                                        <tr>
                                            <td align="right" colspan="2" style="background-image: url(images/wtb.png); width: 840px;
                                                height: 33px" valign="top">
                                            </td>
                                        </tr>
                                    </table>
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
                                                style="background-image: url('images/wtm.png'); text-align: right; line-height: 30px;" 
                                                valign="top" dir="rtl" height="400">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DataList ID="DataList1" runat="server" BackColor="White" 
                                                    BorderColor="#DEDFDE" BorderWidth="1px" CaptionAlign="Top" CellPadding="4" 
                                                    CellSpacing="7" DataSourceID="sds_avg" ForeColor="Black" 
                                                    HorizontalAlign="Center" RepeatColumns="3" RepeatDirection="Horizontal" 
                                                    Width="700px">
                                                    <FooterStyle BackColor="#CCCC99" />
                                                    <AlternatingItemStyle BackColor="White" />
                                                    <ItemStyle BackColor="#F7F7DE" />
                                                    <SeparatorStyle Height="3px" Width="3px" />
                                                    <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                                    <ItemTemplate>
                                                        <table class="style1">
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="lessonnameLabel" runat="server" 
                                                                        Text='<%# Eval("lessonname") %>' />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="Expr1Label" runat="server" 
                                                                        Text='<%# Eval("Expr1", "{0:F}") %>' />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </ItemTemplate>
                                                </asp:DataList>
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
        <asp:SqlDataSource ID="sds_avg" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" SelectCommand="SELECT        lessonname, AVG(score) AS Expr1
FROM            (SELECT        ScoreTable.score, derivedtbl_1_1.lessonname
                          FROM            (SELECT        lessonname, lessonID
                                                    FROM            LessonTable
                                                    WHERE        (schoolID = @Param1)) AS derivedtbl_1_1 INNER JOIN
                                                    ScoreTable ON derivedtbl_1_1.lessonID = ScoreTable.lessonID
                          WHERE        (ScoreTable.schoolID = @Param2) AND (ScoreTable.studentID = @Param3) AND (ScoreTable.scoredate &gt;= @Param4) AND 
                                                    (ScoreTable.scoredate &lt;= @Param5)) AS derivedtbl_1
GROUP BY lessonname" onselected="sds_avg_Selected">
            <SelectParameters>
                <asp:SessionParameter Name="Param1" SessionField="schoolid" />
                <asp:SessionParameter Name="Param2" SessionField="schoolid" />
                <asp:SessionParameter Name="Param3" SessionField="studentid" />
                <asp:QueryStringParameter DefaultValue="000000" Name="Param4" 
                    QueryStringField="sdate" />
                <asp:QueryStringParameter DefaultValue="999999" Name="Param5" 
                    QueryStringField="edate" />
            </SelectParameters>
    </asp:SqlDataSource>
        <br />
        <br /><br /><br /><br />
        <table style="position:relative; bottom:0;width:100%;z-index:999;">
        <tr>
            <td style="height=100px;background-image: url('images/foot.png')">
                <img alt="" src="images/smandtell_small.png" /></td>
        </tr>
    </table>
    </form>
</body>
</html>
