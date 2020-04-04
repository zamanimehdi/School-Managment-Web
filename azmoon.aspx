<%@ Page Language="C#" AutoEventWireup="true" CodeFile="azmoon.aspx.cs" Inherits="azmoon" %>

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
        .style3
        {
            width: 80px;
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
                                کارنامه&nbsp; آزمون ها</td>
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
                        <td align="center" colspan="3" dir="rtl" valign="top">
                        <br />
                            <table border="0" cellpadding="0" cellspacing="0" style="width: 840px; height: 504px; vertical-align: top;" 
                                id="tb_list" runat="server">
                                        <tr>
                                            <td align="right" style="width: 840px;
                                                height: 23px" valign="top">
                                                <table class="style1">
                                                    <tr>
                                                        <td class="style3" style="width: 97px">
                                                                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                                                                        Font-Size="8pt" ForeColor="#01235A" Text="لیست آزمون ها"></asp:Label>
                                                                </td>
                                                        <td style="background-image: url(images/ttop.png); width: 740px; background-repeat: repeat-x; height: 20px">
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="background-image: url(images/wtt.png); width: 840px;
                                                height: 23px" valign="top">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="background-image: url(images/wtm.png); text-align: center;" 
                                                valign="top">
                                                <table style="width: 100%">
                                                    <tr>
                                                        <td align="center">
                                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                                CellPadding="4" DataKeyNames="ExamNo" DataSourceID="ADS_azmoonlist" 
                                                                ForeColor="#333333" GridLines="None" 
                                                                onselectedindexchanged="GridView1_SelectedIndexChanged1" Width="721px">
                                                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                                <Columns>
                                                                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/show.png" 
                                                                        SelectText="مشاهده" ShowSelectButton="True">
                                                                        <HeaderStyle Width="70px" />
                                                                        <ItemStyle HorizontalAlign="Right" Width="60px" />
                                                                    </asp:CommandField>
                                                                    <asp:BoundField DataField="ExamNo" HeaderText="شماره آزمون" ReadOnly="True" 
                                                                        SortExpression="ExamNo">
                                                                        <HeaderStyle Width="120px" />
                                                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                    </asp:BoundField>
                                                                    <asp:BoundField DataField="ExamName" HeaderText="نام آزمون" 
                                                                        SortExpression="ExamName">
                                                                        <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                                                    </asp:BoundField>
                                                                </Columns>
                                                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                <EditRowStyle BackColor="#999999" />
                                                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                            </asp:GridView>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="background-image: url('images/wtm.png'); width: 840px;
                                                " valign="top">
                                                <table id="tb_down" style="width: 100%" runat="server">
                                                    <tr>
                                                        <td align="center" colspan="2" valign="top">
                                                            رتبه کلی آزمون</td>
                                                        <td align="center" valign="top">
                                                            درصد پاسخگویی</td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" colspan="2" valign="top">
                                                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                                                CellPadding="4" DataSourceID="ADS_rotbe" ForeColor="#333333" GridLines="None" 
                                                                Width="300px">
                                                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                                <Columns>
                                                                    <asp:BoundField DataField="ClassName" SortExpression="ClassName" />
                                                                    <asp:BoundField DataField="rank" HeaderText="رتبه" SortExpression="rank" />
                                                                    <asp:BoundField DataField="fcount" HeaderText="تعداد دانش آموزان" 
                                                                        SortExpression="fcount" />
                                                                </Columns>
                                                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                <EditRowStyle BackColor="#999999" />
                                                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                            </asp:GridView>
                                                        </td>
                                                        <td align="center" valign="top">
                                                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                                                                CellPadding="4" DataSourceID="ADS_2" ForeColor="#333333" GridLines="None" 
                                                                Width="300px">
                                                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                                <Columns>
                                                                    <asp:BoundField DataField="SubjectName" HeaderText="نام درس" 
                                                                        SortExpression="SubjectName" />
                                                                    <asp:BoundField DataField="fpercent" HeaderText="درصد پاسخ" 
                                                                        SortExpression="fpercent" />
                                                                </Columns>
                                                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                <EditRowStyle BackColor="#999999" />
                                                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                            </asp:GridView>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" style="padding-top: 5px">
                                                            رتبه در درس</td>
                                                        <td align="right" colspan="2" style="padding: 8px 100px 5px 5px; margin: 4px">
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center">
                                                            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                                                                CellPadding="4" DataSourceID="AccessDataSource1" ForeColor="#333333" 
                                                                GridLines="None" Width="300px">
                                                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                                <Columns>
                                                                    <asp:BoundField DataField="SubjectName" HeaderText="نام درس" 
                                                                        SortExpression="SubjectName" />
                                                                    <asp:BoundField DataField="ClassName" HeaderText="در " 
                                                                        SortExpression="ClassName" />
                                                                    <asp:BoundField DataField="rank" HeaderText="رتبه" SortExpression="rank" />
                                                                </Columns>
                                                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                <EditRowStyle BackColor="#999999" />
                                                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                            </asp:GridView>
                                                        </td>
                                                        <td align="right" colspan="2" style="padding: 8px 100px 5px 5px; margin: 4px">
                                                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/back.png" 
                                                                PostBackUrl="~/azmoon.aspx" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="background-image: url(images/wtb.png); width: 840px;
                                                height: 33px" valign="top">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                        </td>
                    </tr>
                </table>
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 100%" valign="top">
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    
    </div>
        <asp:AccessDataSource ID="ADS_get_pid" runat="server" 
        DataFile="~/azmoon/hakim.mdb" 
        SelectCommand="SELECT        tbStudents.stdno
                                                               FROM            tbStudents, tbExams tbExams_1
                                                               WHERE        (tbStudents.name + ' ' + tbStudents.lastname = ?)">
            <SelectParameters>
                <asp:Parameter Name="?" />
            </SelectParameters>
    </asp:AccessDataSource>
    <asp:SqlDataSource ID="sds_get_db_name" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
        SelectCommand="SELECT azmoon FROM SchoolTable WHERE (shoolID = @Param1)">
        <SelectParameters>
            <asp:SessionParameter Name="Param1" SessionField="schoolid" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:AccessDataSource ID="ADS_2" runat="server" CacheExpirationPolicy="Sliding" 
        DataFile="~/azmoon/hakim.mdb" 
        SelectCommand="SELECT DISTINCT tbSubjects.SubjectName, tbResults.fpercent FROM (tbResults INNER JOIN tbSubjects ON tbResults.subjectcode = tbSubjects.SubjectCode) WHERE (tbResults.stdno = ?) AND (tbResults.examno = ?) AND (tbSubjects.ExamNo = ?) AND (tbResults.showpercent = true)">
        <SelectParameters>
            <asp:SessionParameter Name="?" SessionField="PID" />
            <asp:QueryStringParameter Name="?" QueryStringField="id" />
            <asp:QueryStringParameter Name="?" QueryStringField="id" />
        </SelectParameters>
    </asp:AccessDataSource>
        <asp:SqlDataSource ID="sds_list" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
        SelectCommand="SELECT title, id, isread, date FROM tb_inbox WHERE (schoolid = @Param1) AND (studentid = @Param2) ORDER BY date DESC, id DESC" 
        UpdateCommand="UPDATE tb_inbox SET isread =1 WHERE (id = @Param1)">
            <SelectParameters>
                <asp:SessionParameter Name="Param1" SessionField="schoolid" />
                <asp:SessionParameter Name="Param2" SessionField="studentid" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Param1" />
            </UpdateParameters>
    </asp:SqlDataSource>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/azmoon/hakim.mdb" 
        SelectCommand="SELECT DISTINCT tbSubjects.SubjectName, tbClasses.ClassName, tbResults.rank FROM ((tbResults INNER JOIN tbSubjects ON tbResults.subjectcode = tbSubjects.SubjectCode) INNER JOIN tbClasses ON tbResults.ClassCode = tbClasses.ClassCode) WHERE (tbResults.stdno = ?) AND (tbResults.examno = ?) AND (tbSubjects.ExamNo = ?) AND (tbResults.showpercent = true)">
            <SelectParameters>
                <asp:SessionParameter Name="?" SessionField="PID" />
                <asp:QueryStringParameter Name="?" QueryStringField="id" />
                <asp:QueryStringParameter Name="?" QueryStringField="id" />
            </SelectParameters>
    </asp:AccessDataSource>
    <asp:AccessDataSource ID="ADS_rotbe" runat="server" 
        DataFile="~/azmoon/hakim.mdb" 
        SelectCommand="SELECT tbResults.fpercent, tbResults.rank, tbResults.fcount, tbResults.showpercent, tbSubjects.SubjectName, tbClasses.ClassName FROM ((tbResults INNER JOIN tbSubjects ON tbResults.subjectcode = tbSubjects.SubjectCode) INNER JOIN tbClasses ON tbResults.ClassCode = tbClasses.ClassCode) WHERE (tbResults.stdno = ?) AND (tbResults.examno = ?) AND (tbSubjects.ExamNo = ?) AND (tbResults.showpercent = 0)">
        <SelectParameters>
            <asp:SessionParameter Name="?" SessionField="PID" />
            <asp:QueryStringParameter Name="?" QueryStringField="id" />
            <asp:QueryStringParameter DefaultValue="" Name="?" QueryStringField="id" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:AccessDataSource ID="ADS_azmoonlist" runat="server" 
        DataFile="~/azmoon/hakim.mdb" 
        SelectCommand="SELECT Pri, ExamNo, ExamName FROM tbExams WHERE (ExamNo IN (SELECT DISTINCT examno FROM tbResults WHERE (stdno = ?)))">
        <SelectParameters>
            <asp:SessionParameter Name="?" SessionField="PID" />
        </SelectParameters>
    </asp:AccessDataSource>
                    <table style="position: relative;bottom:0;width:100%;z-index:999;">
        <tr>
            <td style="height=100px;background-image: url('images/foot.png')">
                <img alt="" src="images/smandtell_small.png" /></td>
        </tr>
    </table>
    </form>
</body>
</html>
