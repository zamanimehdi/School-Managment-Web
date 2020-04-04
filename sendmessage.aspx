<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sendmessage.aspx.cs" Inherits="sendmessage" %>

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
                                ارسال پیام </td>
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
                                                    ForeColor="#01235A" Text="انتخاب دبیر" Width="74px"></asp:Label></td>
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
                                                <asp:DataList ID="DataList1" runat="server" BackColor="White" 
                                                    BorderColor="#DEDFDE" BorderWidth="1px" CellPadding="4" CellSpacing="10" 
                                                    DataSourceID="sds_teacherselect" ForeColor="Black" HorizontalAlign="Center" 
                                                    onselectedindexchanged="DataList1_SelectedIndexChanged" RepeatColumns="2" 
                                                    ShowFooter="False" ShowHeader="False">
                                                    <FooterStyle BackColor="#CCCC99" />
                                                    <AlternatingItemStyle BackColor="White" />
                                                    <ItemStyle BackColor="#F7F7DE" />
                                                    <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                                    <ItemTemplate>
                                                        <table>
                                                            <tr>
                                                                <td width="150">
                                                                    <asp:Label ID="lessonnameLabel" runat="server" 
                                                                        Text='<%# Eval("lessonname") %>' />
                                                                </td>
                                                                <td rowspan="2" width="100">
                                                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                                                        ImageUrl="~/images/sendemail.png" 
                                                                        PostBackUrl='<%# Eval("teacherID", "sendmessage.aspx?id={0}") %>' onmouseover="this.style.opacity=0.7;"
                                                                                                onmouseout="this.style.opacity=1;"/>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="teachernameLabel" runat="server" 
                                                                        Text='<%# Eval("teachername") %>' ForeColor="#CC0000" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </ItemTemplate>
                                                </asp:DataList>
                                                <br />
                                                <table id="tb_contentmsg" runat="server" visible="False">
                                                    <tr>
                                                        <td width="70">
                                                            <asp:Label ID="Label9" runat="server" Text="نام دبیر"></asp:Label>
                                                        </td>
                                                        <td style="text-align: right">
                                                            <asp:FormView ID="FormView1" runat="server" 
                                                                DataSourceID="sds_showselectedteacher">
                                                                <EditItemTemplate>
                                                                    teachername:
                                                                    <asp:TextBox ID="teachernameTextBox" runat="server" 
                                                                        Text='<%# Bind("teachername") %>' />
                                                                    <br />
                                                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                                        CommandName="Update" Text="Update" />
                                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                                                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                </EditItemTemplate>
                                                                <InsertItemTemplate>
                                                                    teachername:
                                                                    <asp:TextBox ID="teachernameTextBox" runat="server" 
                                                                        Text='<%# Bind("teachername") %>' />
                                                                    <br />
                                                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                                        CommandName="Insert" Text="Insert" />
                                                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                                                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                </InsertItemTemplate>
                                                                <ItemTemplate>
                                                                    &nbsp;<asp:Label ID="teachernameLabel" runat="server" 
                                                                        Text='<%# Bind("teachername") %>' />
                                                                    <br />
                                                                </ItemTemplate>
                                                            </asp:FormView>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            متن پیام</td>
                                                        <td>
                                                            <asp:TextBox ID="txt_msg" runat="server" Height="116px" TextMode="MultiLine" 
                                                                Width="426px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td style="text-align: left">
                                                            &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" 
                                                                ImageUrl="~/images/sendemail.png" onclick="ImageButton2_Click" 
                                                                style="text-align: center" onmouseover="this.style.opacity=0.7;"
                                                                                                onmouseout="this.style.opacity=1;"/>
                                                        &nbsp;&nbsp;
                                                            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/back.png" 
                                                                onclick="ImageButton3_Click" onmouseover="this.style.opacity=0.7;"
                                                                                                onmouseout="this.style.opacity=1;"/>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td style="text-align: right">
                                                            <asp:Label ID="lbl_msg" runat="server" ForeColor="Red"></asp:Label>
                                                            <asp:SqlDataSource ID="sds_insertmsg" runat="server" 
                                                                CacheExpirationPolicy="Sliding" 
                                                                ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
                                                                InsertCommand="INSERT INTO tb_relation(schoolid, studentid, teacherid, familytxt, isreply, showanswer, answertxt, datetime, a_datetime) VALUES (@Param1, @Param2, @Param3, @Param4, 1, 0, '', @Param5, '')" 
                                                                
                                                                SelectCommand="SELECT id, schoolid, studentid, teacherid, familytxt, isreply, showanswer, answertxt, datetime, a_datetime FROM tb_relation WHERE (id = @Param1)">
                                                                <SelectParameters>
                                                                    <asp:Parameter Name="Param1" />
                                                                </SelectParameters>
                                                                <InsertParameters>
                                                                    <asp:Parameter Name="Param1" />
                                                                    <asp:Parameter Name="Param2" />
                                                                    <asp:Parameter Name="Param3" />
                                                                    <asp:Parameter Name="Param4" />
                                                                    <asp:Parameter Name="Param5" />
                                                                </InsertParameters>
                                                            </asp:SqlDataSource>
                                                        </td>
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
                    <br />
                </td>
            </tr>
        </table>
    
    </div>
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
    <asp:SqlDataSource ID="sds_showselectedteacher" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
        SelectCommand="SELECT teachername FROM TeacherTable WHERE (schoolID = @Param1) AND (teacherID = @Param2)">
        <SelectParameters>
            <asp:SessionParameter Name="Param1" SessionField="schoolid" />
            <asp:QueryStringParameter Name="Param2" QueryStringField="id" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sds_teacherselect" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
        SelectCommand="SELECT derivedtbl_1.teacherID, derivedtbl_1.lessonname, derivedtbl_2.teachername FROM (SELECT lessonname, teacherID FROM LessonTable WHERE (schoolID = @Param2) AND (grade = @Param3) AND (majorname = @Param4)) AS derivedtbl_1 INNER JOIN (SELECT teachername, teacherID FROM TeacherTable WHERE (schoolID = @Param1)) AS derivedtbl_2 ON derivedtbl_1.teacherID = derivedtbl_2.teacherID">
        <SelectParameters>
            <asp:SessionParameter Name="Param2" SessionField="schoolid" />
            <asp:Parameter Name="Param3" />
            <asp:Parameter Name="Param4" />
            <asp:SessionParameter Name="Param1" SessionField="schoolid" />
        </SelectParameters>
    </asp:SqlDataSource>
                        <table style="position:relative;bottom:0;width:100%;z-index:999;">
        <tr>
            <td style="height=100px;background-image: url('images/foot.png')">
                <img alt="" src="images/smandtell_small.png" /></td>
        </tr>
    </table>
    </form>
</body>
</html>
