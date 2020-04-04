<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cquiz.aspx.cs" Inherits="cquiz" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head id="Head1" runat="server">
    <style type="text/css">
        .style2
        {
            height: 20px;
            width: 63px;
        }
        </style>
    <title>سامانه اینترنتی نرم افزار مدیریت مدرسه</title>
        <script type="text/javascript">
        function alertMe() {
            alert('پیام شما با موفقیت ارسال شد');
        }
    </script>
    </head><body style="padding-right: 0px; padding-left: 0px; font-size: 9pt; padding-bottom: 0px; margin: 0px; padding-top: 0px; font-family: tahoma;"><form id="form1" runat="server">
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
                                امتحانات هماهنگ</td>
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
                                " valign="middle" width="875" height="60px">
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
                                                                                                onmouseout="this.style.opacity=1;"/>
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
                            <table border="0" cellpadding="0" cellspacing="0" style="width: 840px">
                                        <tr>
                                            <td align="right" colspan="2" 
                                                style="background-repeat: repeat-x; height: 20px; text-align: center;" 
                                                valign="middle">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="background-repeat: repeat-x; "
                                                valign="middle" class="style2">
                                                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="9pt"
                                                    ForeColor="#01235A" Text="فهرست امتـحــانــات" Width="140px"></asp:Label></td>
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
                                                valign="top" height="380">
                                                <table style="width: 100%" id="tb_up" runat="server">
                                                    <tr align="center">
                                                        <td>
                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                    CellPadding="4" DataKeyNames="id_hamahang" DataSourceID="sds_hamahang_list" 
                                                    ForeColor="#333333" GridLines="None" 
                                                    
                                                    BorderStyle="Dotted" BorderWidth="1px" CellSpacing="1" Width="800px" 
                                                    AllowPaging="True" 
                                                    style="margin-top: 0px" PageSize="20" 
                                                                onselectedindexchanged="GridView1_SelectedIndexChanged" ShowHeader="False" 
                                                    >
                                                    <RowStyle BackColor="#E3EAEB" />
                                                    <Columns>
                                                        <asp:CommandField SelectText="مشاهده پاسخ" ShowSelectButton="True" 
                                                            ButtonType="Image" SelectImageUrl="~/images/showquiz.png">
                                                            <ItemStyle Width="130px" />
                                                        </asp:CommandField>
                                                        <asp:BoundField DataField="name_hamahang" HeaderText="فهرست امتحانات هماهنگ " 
                                                            SortExpression="name_hamahang">
                                                        </asp:BoundField>
                                                    </Columns>
                                                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                                    <EmptyDataTemplate>
                                                        <table style="vertical-align: middle; text-align: center" width="100%">
                                                            <tr>
                                                                <td>
                                                                    <br />
                                                                    <br />
                                                                    <br />
                                                                    <b>تاکنون امتحان هماهنگی برگزار نشده است<br />
                                                                    <br />
                                                                    </b>
                                                                    <br />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </EmptyDataTemplate>
                                                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                    <EditRowStyle BackColor="#7C6F57" />
                                                    <AlternatingRowStyle BackColor="White" />
                                                </asp:GridView>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <table style="width: 100%" id="tb_down" runat="server">
                                                    <tr>
                                                        <td align="center">
                                                            <table style="width: 100%">
                                                                <tr>
                                                                    <td align="center" colspan="4">
                                                                        <asp:Label ID="lbl_hamahangname" runat="server" style="color: #000066"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                    <td align="center" colspan="2" dir="rtl">
                                                                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                                                            CellPadding="4" DataSourceID="sds_scores" ForeColor="#333333" GridLines="None" 
                                                                            onrowdatabound="GridView2_RowDataBound" PageSize="100" Width="750px">
                                                                            <RowStyle BackColor="#E3EAEB" />
                                                                            <Columns>
                                                                                <asp:BoundField DataField="lessonname" HeaderText="نام درس" 
                                                                                    SortExpression="lessonname" />
                                                                                <asp:BoundField DataField="teachername" HeaderText="نام دبیر" 
                                                                                    SortExpression="teachername" />
                                                                                <asp:BoundField DataField="avg" DataFormatString="{0:f2}" HeaderText="نمره" 
                                                                                    ReadOnly="True" SortExpression="avg" />
                                                                                <asp:BoundField DataField="vahed" HeaderText="ضریب" SortExpression="vahed" />
                                                                                <asp:BoundField DataField="avgvahed" DataFormatString="{0:f2}" 
                                                                                    HeaderText="نمره با ضریب" ReadOnly="True" SortExpression="avgvahed" />
                                                                                <asp:BoundField DataField="avgclass" DataFormatString="{0:f2}" 
                                                                                    HeaderText="میانگین کلاس" ReadOnly="True" SortExpression="avgclass" />
                                                                                <asp:TemplateField HeaderText="مقایسه با کلاس">
                                                                                    <ItemTemplate>
                                                                                        <table dir="rtl" style="width: 100%">
                                                                                            <tr>
                                                                                                <td>
                                                                                                    <asp:Image ID="Image1" runat="server" />
                                                                                                </td>
                                                                                                <td dir="rtl">
                                                                                                    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateField>
                                                                            </Columns>
                                                                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                                                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                                                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                                            <EditRowStyle BackColor="#7C6F57" />
                                                                            <AlternatingRowStyle BackColor="White" />
                                                                        </asp:GridView>
                                                                        <br />
                                                                        <table dir="rtl" style="border: 1px solid #000000; background-color: #E3EAEB" 
                                                                            width="300px">
                                                                            <tr>
                                                                                <td>
                                                                                    معدل کلاس</td>
                                                                                <td align="center">
                                                                                    <asp:Label ID="lbl_class" runat="server" Width="130px"></asp:Label>
                                                                                </td>
                                                                                <td align="center" rowspan="2">
                                                                                    <asp:Image ID="Image2" runat="server" 
                                                                                        ToolTip="مقایسه معدل دانش آموز با معدل کلاس" />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    معدل دانش آموز</td>
                                                                                <td align="center">
                                                                                    <asp:Label ID="lbl_stu" runat="server" Font-Bold="True" Width="130px"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                        <br />
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                    <td width="500px">
                                                                        &nbsp;</td>
                                                                    <td style="text-align: left" width="200px">
                                                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/back.png" 
                                                                        PostBackUrl="~/cquiz.aspx" style="text-align: left" />
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <br />
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
                    <br />
                </td>
            </tr>
        </table>
    
    </div>
        <asp:SqlDataSource ID="sds_hamahang_list" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
        SelectCommand="SELECT DISTINCT hamahang.name_hamahang, hamahang.id_hamahang FROM ScoreTable INNER JOIN hamahang ON ScoreTable.testID = hamahang.testid WHERE (ScoreTable.schoolID = @Param1) AND (ScoreTable.studentID = @Param2) AND (hamahang.schoolID = @Param3)">
            <SelectParameters>
                <asp:SessionParameter Name="Param1" SessionField="schoolid" />
                <asp:SessionParameter Name="Param2" SessionField="studentid" />
                <asp:SessionParameter Name="Param3" SessionField="schoolid" />
            </SelectParameters>
    </asp:SqlDataSource>
        <asp:SqlDataSource ID="sds_hamahangname" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
        SelectCommand="SELECT DISTINCT name_hamahang FROM hamahang WHERE (id_hamahang = @Param1)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Param1" QueryStringField="readid" />
            </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sds_scores" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
        SelectCommand="SELECT AVG(ScoreTable.score) AS avg, LessonTable.lessonname, derivedtbl_1.teachername, LessonTable.vahed, AVG(ScoreTable.score) * LessonTable.vahed AS avgvahed, derivedtbl_2.avgvahed AS avgclass FROM LessonTable INNER JOIN ScoreTable ON LessonTable.lessonID = ScoreTable.lessonID INNER JOIN hamahang ON ScoreTable.testID = hamahang.testid INNER JOIN (SELECT AVG(ScoreTable_1.score) AS avgvahed, ScoreTable_1.lessonID FROM LessonTable AS LessonTable_1 INNER JOIN ScoreTable AS ScoreTable_1 ON LessonTable_1.lessonID = ScoreTable_1.lessonID INNER JOIN hamahang AS hamahang_1 ON ScoreTable_1.testID = hamahang_1.testid WHERE (hamahang_1.id_hamahang = @Param1) AND (ScoreTable_1.schoolID = @Param2) AND (LessonTable_1.schoolID = @Param4) AND (hamahang_1.schoolID = @Param5) GROUP BY LessonTable_1.vahed, ScoreTable_1.lessonID) AS derivedtbl_2 ON ScoreTable.lessonID = derivedtbl_2.lessonID LEFT OUTER JOIN (SELECT teacherID, teachername FROM TeacherTable WHERE (schoolID = @Param13)) AS derivedtbl_1 ON LessonTable.teacherID = derivedtbl_1.teacherID WHERE (hamahang.id_hamahang = @Param1) AND (ScoreTable.schoolID = @Param2) AND (ScoreTable.studentID = @Param3) AND (LessonTable.schoolID = @Param4) AND (hamahang.schoolID = @Param5) GROUP BY LessonTable.lessonname, derivedtbl_1.teachername, LessonTable.vahed, ScoreTable.lessonID, derivedtbl_2.avgvahed ORDER BY LessonTable.lessonname">
        <SelectParameters>
            <asp:QueryStringParameter Name="Param1" QueryStringField="readid" />
            <asp:SessionParameter Name="Param2" SessionField="schoolid" />
            <asp:SessionParameter Name="Param4" SessionField="schoolid" />
            <asp:SessionParameter Name="Param5" SessionField="schoolid" />
            <asp:SessionParameter Name="Param13" SessionField="schoolid" />
            <asp:SessionParameter Name="Param3" SessionField="studentid" />
        </SelectParameters>
    </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="sds_schoolInfo" runat="server" ConnectionString="<%$ ConnectionStrings:SMConnectionString %>"
            SelectCommand="SELECT schoolname, schooltell, schoolAdres, schollStatement, state, lastUpdate FROM SchoolTable WHERE (shoolID = @schoolID)">
            <SelectParameters>
                <asp:Parameter Name="schoolID" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sds_studentInfo" runat="server" ConnectionString="<%$ ConnectionStrings:SMConnectionString %>"
            SelectCommand="SELECT schoolID, studentID, studentname, grade, classname, majorname, idnumber, fathername, address, tell, classID FROM StudentTable WHERE (schoolID = @schoolID) AND (studentID = @stID)">
            <SelectParameters>
                <asp:SessionParameter Name="schoolID" SessionField="schoolid" />
                <asp:SessionParameter Name="stID" SessionField="studentid" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;
                        <table style="position:relative;bottom:0;width:100%;z-index:999;">
        <tr>
            <td style="height=100px;background-image: url('images/foot.png')">
                <img alt="" src="images/smandtell_small.png" /></td>
        </tr>
    </table>
    </form>
</body>
</html>
