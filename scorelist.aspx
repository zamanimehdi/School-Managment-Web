<%@ Page Language="C#" AutoEventWireup="true" CodeFile="scorelist.aspx.cs" Inherits="scorelist" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head id="Head1" runat="server">
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
                                            <td align="right" 
                                                style="background-repeat: repeat-x; height: 20px; text-align: center;" 
                                                valign="middle">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="background-image: url(images/wtt.png); width: 840px;
                                                height: 23px" valign="top">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="background-image: url(images/wtm.png)" 
                                                valign="top" height="380">
                                                <table style="width: 100%" id="tb_down" runat="server">
                                                    <tr>
                                                        <td align="center">
                                                            <table style="width: 100%">
                                                                <tr>
                                                                    <td align="center">
                                                                        <table style="width: 100%">
                                                                            <tr>
                                                                                <td width="110px" align="left" style="width: 160px">
                                                                                    نمایش نمرات ماه</td>
                                                                                <td width="80px">
                                                                                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Tahoma" 
                                                                                        Width="130px">
                                                                                        <asp:ListItem Value="تمامی نمرات"></asp:ListItem>
                                                                                        <asp:ListItem>فروردین</asp:ListItem>
                                                                                        <asp:ListItem>اردیبهشت</asp:ListItem>
                                                                                        <asp:ListItem>خرداد</asp:ListItem>
                                                                                        <asp:ListItem>تیر</asp:ListItem>
                                                                                        <asp:ListItem>مرداد</asp:ListItem>
                                                                                        <asp:ListItem>شهریور</asp:ListItem>
                                                                                        <asp:ListItem>مهر</asp:ListItem>
                                                                                        <asp:ListItem>آبان</asp:ListItem>
                                                                                        <asp:ListItem>آذر</asp:ListItem>
                                                                                        <asp:ListItem>دی</asp:ListItem>
                                                                                        <asp:ListItem>بهمن</asp:ListItem>
                                                                                        <asp:ListItem>اسفند</asp:ListItem>
                                                                                    </asp:DropDownList>
                                                                                </td>
                                                                                <td width="100px">
                                                                                    <asp:Button ID="Button1" runat="server" Font-Names="Tahoma" 
                                                                                        onclick="Button1_Click" Text="نمایش" />
                                                                                </td>
                                                                                <td style="text-align: left">
                                                                                    &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" Font-Overline="False" Font-Underline="False" 
                                                                                        onclientclick="window.open('print_scorelist.aspx','j','resizable=1,scrollbars=yes,status=yes,toolbar=no,menubar=no,location=no,height=580,width=800,left=0,top=0');">پرینت 
                                                                                    نمرات</asp:LinkButton>
&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/printButton.png" 
                                                                                        onclientclick="window.open('print_scorelist.aspx','j','resizable=1,scrollbars=yes,status=yes,toolbar=no,menubar=no,location=no,height=580,width=800,left=0,top=0');" />
&nbsp;&nbsp;&nbsp; </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td align="left">
                                                                                    نمایش نمرات درس<br />
                                                                                </td>
                                                                                <td>
                                                                                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="sds_dars" 
                                                                                        DataTextField="lessonname" DataValueField="lessonname" Font-Names="Tahoma" 
                                                                                        ondatabound="DropDownList2_DataBound" Width="130px">
                                                                                    </asp:DropDownList>
                                                                                </td>
                                                                                <td>
                                                                                    <asp:Button ID="Button2" runat="server" Font-Names="Tahoma" 
                                                                                        onclick="Button2_Click" Text="نمایش" />
                                                                                </td>
                                                                                <td style="text-align: center">
                                                                                    <asp:Label ID="lbl_msg" runat="server" Font-Bold="True"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center">
                                                                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                                                            CellPadding="4" DataSourceID="sds_scores" ForeColor="#333333" GridLines="None" 
                                                                            onrowdatabound="GridView2_RowDataBound" Width="750px" AllowPaging="True" 
                                                                            BorderWidth="1px" EnableTheming="True">
                                                                            <RowStyle BackColor="#E3EAEB" />
                                                                            <Columns>
                                                                                <asp:BoundField DataField="name_hamahang" SortExpression="name_hamahang" />
                                                                                <asp:BoundField DataField="lessonname" HeaderText="نام درس" 
                                                                                    SortExpression="lessonname" HeaderImageUrl="~/images/dars.png" />
                                                                                <asp:TemplateField HeaderImageUrl="~/images/tarikh.png">
                                                                                    <ItemTemplate>
                                                                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("scoredate") %>'></asp:Label>
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateField>
                                                                                <asp:BoundField DataField="score" DataFormatString="{0:f2}" HeaderText="نمره " 
                                                                                    SortExpression="score" HeaderImageUrl="~/images/nomre.png" />
                                                                                <asp:BoundField DataField="avgclass" HeaderText="میانگین کلاس" 
                                                                                    SortExpression="avgclass" DataFormatString="{0:f2}" 
                                                                                    HeaderImageUrl="~/images/miangin.png" ReadOnly="True" />
                                                                                <asp:BoundField DataField="maxclass" DataFormatString="{0:f2}" 
                                                                                    HeaderText="بیشترین نمره" ReadOnly="True" SortExpression="maxclass" 
                                                                                    HeaderImageUrl="~/images/bish.png" />
                                                                                <asp:BoundField DataField="minclass" DataFormatString="{0:f2}" 
                                                                                    HeaderText="کمترین نمره" ReadOnly="True" SortExpression="minclass" 
                                                                                    HeaderImageUrl="~/images/kam.png" />
                                                                                <asp:BoundField DataField="countclass" HeaderImageUrl="~/images/tedad.png" 
                                                                                    HeaderText="تعداد دانش آموز" ReadOnly="True" SortExpression="countclass" />
                                                                                <asp:TemplateField HeaderImageUrl="~/images/nesbat.png" 
                                                                                    HeaderText="مقایسه با کلاس">
                                                                                    <ItemTemplate>
                                                                                        &nbsp;<table style="width: 100%">
                                                                                            <tr>
                                                                                                <td style="text-align: left">
                                                                                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:Image ID="Image1" runat="server" />
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                        &nbsp;
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateField>
                                                                            </Columns>
                                                                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" 
                                                                                Wrap="False" />
                                                                            <EmptyDataTemplate>
                                                                                <table align="center" 
                                                                                    style="width: 100%; text-align: center; vertical-align: middle;">
                                                                                    <tr>
                                                                                        <td align="center">
                                                                                            <br />
                                                                                            <br />
                                                                                            <table style="border-width: 2px; color: #000080; background-color: #EBE8FF; border-style: double" 
                                                                                                width="300">
                                                                                                <tr>
                                                                                                    <td align="center" width="300">
                                                                                                        نمره ای در سیستم ثبت نشده است</td>
                                                                                                </tr>
                                                                                            </table>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                                <br />
                                                                                <br />
                                                                            </EmptyDataTemplate>
                                                                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                                                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" 
                                                                                Font-Names="Tahoma" Font-Size="12px" />
                                                                            <EditRowStyle BackColor="#7C6F57" />
                                                                            <AlternatingRowStyle BackColor="White" />
                                                                        </asp:GridView>
                                                                        <br />
                                                                        علامت
                                                                        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/up.png" />
                                                                        در ستون&nbsp; آخر به معنی این می باشد که دانش آموز شما در سطح بالاتری از میانگین 
                                                                        کلاس قرار دارد<br />
                                                                        علامت
                                                                        <asp:Image ID="Image3" runat="server" ImageUrl="~/images/down.png" />
                                                                        در ستون&nbsp; آخر به معنی این می باشد که دانش آموز شما در سطح پایین تری از 
                                                                        میانگین کلاس قرار دارد</td>
                                                                </tr>
                                                                </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="background-image: url(images/wtb.png); width: 840px;
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
    <asp:SqlDataSource ID="sds_scores" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
        
        
        SelectCommand="SELECT ScoreTable.scoredate, ScoreTable.score, ScoreTable.testID, derivedtbl_1.avgclass, derivedtbl_1.maxclass, derivedtbl_1.minclass, derivedtbl_1.countclass, derivedtbl_2.name_hamahang, derivedtbl_3.lessonname FROM ScoreTable INNER JOIN (SELECT scoredate, AVG(score) AS avgclass, testID, MAX(score) AS maxclass, MIN(score) AS minclass, COUNT(score) AS countclass FROM ScoreTable AS ScoreTable_1 WHERE (schoolID = @Param1) GROUP BY scoredate, testID) AS derivedtbl_1 ON ScoreTable.testID = derivedtbl_1.testID INNER JOIN (SELECT lessonID, lessonname FROM LessonTable WHERE (schoolID = @Param3) GROUP BY lessonname, lessonID) AS derivedtbl_3 ON ScoreTable.lessonID = derivedtbl_3.lessonID LEFT OUTER JOIN (SELECT testid, name_hamahang FROM hamahang WHERE (schoolID = @Param4)) AS derivedtbl_2 ON ScoreTable.testID = derivedtbl_2.testid WHERE (ScoreTable.schoolID = @Param1) AND (ScoreTable.studentID = @Param2) ORDER BY ScoreTable.scoredate DESC">
        <SelectParameters>
            <asp:SessionParameter Name="Param1" SessionField="schoolid" />
            <asp:SessionParameter Name="Param3" SessionField="schoolid" />
            <asp:SessionParameter Name="Param4" SessionField="schoolid" />
            <asp:SessionParameter Name="Param2" SessionField="studentid" />
        </SelectParameters>
    </asp:SqlDataSource>
        <asp:SqlDataSource ID="sds_dars" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
        SelectCommand="SELECT DISTINCT LessonTable.lessonname FROM ScoreTable INNER JOIN LessonTable ON ScoreTable.lessonID = LessonTable.lessonID WHERE (ScoreTable.schoolID = @Param1) AND (ScoreTable.studentID = @Param2) AND (LessonTable.schoolID = @Param3)">
            <SelectParameters>
                <asp:SessionParameter Name="Param1" SessionField="schoolid" />
                <asp:SessionParameter Name="Param2" SessionField="studentid" />
                <asp:SessionParameter Name="Param3" SessionField="schoolid" />
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
