<%@ Page Language="C#" AutoEventWireup="true" CodeFile="messageie.aspx.cs" Inherits="messageie" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head id="Head1" runat="server">
    <title>سامانه اینترنتی نرم افزار مدیریت مدرسه</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 20px;
            width: 77px;
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
                                مدیریت پیام ها</td>
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
                <td align="center" style="width: 100%" valign="top"><table border="0" 
                        cellpadding="0" cellspacing="0" style="width: 850px; vertical-align: top;">
                    <tr>
                        <td align="center" colspan="3" dir="rtl">
                            <table border="0" cellpadding="0" cellspacing="0" style="width: 840px">
                                        <tr>
                                            <td align="center" style="padding: 0px; margin: 0px; width: 840px;
                                                height: 23px" valign="top">
                                                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" 
                                                    Width="589px" onitemdatabound="DataList1_ItemDataBound">
                                                    <ItemTemplate>
                                                        <table ID="tb_schoolinfo" runat="server" border="0" cellpadding="0" 
                                                            cellspacing="0" style="width: 840px">
                                                            <tr>
                                                                <td align="right" 
                                                                    style="background-repeat: repeat-x; " valign="middle" class="style2">
                                                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                                                                        Font-Size="8pt" ForeColor="#01235A" Text="مشاهده پیام"></asp:Label>
                                                                </td>
                                                                <td align="right" 
                                                                    style="background-image: url(images/ttop.png); width: 740px; background-repeat: repeat-x; height: 20px" 
                                                                    valign="top">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right" colspan="2" 
                                                                    style="width: 890px; height: 23px; background-image: url(images/wtt.png);" 
                                                                    valign="top">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" colspan="2" style="background-image: url(images/wtm.png);" 
                                                                    valign="top">
                                                                    <table>
                                                                        <tr>
                                                                            <td width="150" 
                                                                                style="text-align: center; vertical-align: top; color: #800000;">
                                                                                پیام ارسالی از طرف شما :
                                                                            </td>
                                                                            <td style="text-align: justify" width="640">
                                                                                <asp:Label ID="familytxtLabel" runat="server" Text='<%# Eval("familytxt") %>' 
                                                                                    Width="636px" />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="2" dir="rtl" 
                                                                                style="background-position: center; background-image: url('images/tasksep.png'); background-repeat: no-repeat;">
                                                                                &nbsp;</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="2" dir="rtl" style="color: #FF0000">
                                                                                پاسخ مسئولین مدرسه در تاریخ
                                                                                <asp:Label ID="a_datetimeLabel" runat="server" 
                                                                                    Text='<%# Eval("a_datetime") %>' />
                                                                                &nbsp;:</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="2" 
                                                                                style="background-position: center; background-image: url('images/tasksep.png'); background-repeat: no-repeat;">
                                                                                &nbsp;</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="2" style="text-align: justify">
                                                                                <table class="style1">
                                                                                    <tr>
                                                                                        <td style="text-align: left; color: #800000; vertical-align: top;" width="150">
                                                                                            پاسخ مسئولین مدرسه :&nbsp;
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:Label ID="answertxtLabel" runat="server" Text='<%# Eval("answertxt") %>' 
                                                                                                Width="636px" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right" colspan="2" 
                                                                    style="background-image: url(images/wtb.png); width: 820px; height: 33px;" 
                                                                    valign="top">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <br />
                                                    </ItemTemplate>
                                                </asp:DataList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 840px;
                                                height: 23px" valign="top">
                                                <table class="style1">
                                                    <tr>
                                                        <td class="style3">
                                                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                                                                        Font-Size="8pt" ForeColor="#01235A" Text="لیست پیام ها"></asp:Label>
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
                                            <td align="center" style="background-image: url(images/wtm.png)" 
                                                valign="top" height="400">
                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                    CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" 
                                                    ForeColor="#333333" GridLines="None" 
                                                    onrowdatabound="GridView1_RowDataBound" 
                                                    BorderStyle="Dotted" BorderWidth="1px" CellSpacing="1" Width="800px" 
                                                    AllowPaging="True" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                                                    style="margin-top: 0px" PageSize="20" 
                                                    onpageindexchanged="GridView1_PageIndexChanged">
                                                    <RowStyle BackColor="#E3EAEB" />
                                                    <Columns>
                                                        <asp:CommandField SelectText="مشاهده پاسخ" ShowSelectButton="True" 
                                                            ButtonType="Image" SelectImageUrl="~/images/show.png">
                                                            <ItemStyle Width="130px" />
                                                        </asp:CommandField>
                                                        <asp:BoundField DataField="datetime" HeaderText="تاریخ ارسال" 
                                                            SortExpression="datetime">
                                                            <HeaderStyle Font-Size="8pt" />
                                                            <ItemStyle HorizontalAlign="Center" Width="120px" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="teachername" HeaderText="مخاطب" 
                                                            SortExpression="teachername">
                                                            <ItemStyle HorizontalAlign="Center" Width="120px" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="a_datetime" HeaderText="تاریخ پاسخ گویی" 
                                                            SortExpression="a_datetime">
                                                            <HeaderStyle Font-Size="8pt" />
                                                            <ItemStyle HorizontalAlign="Center" Width="120px" />
                                                        </asp:BoundField>
                                                    </Columns>
                                                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                                    <EmptyDataTemplate>
                                                        <br />
                                                        <br />
                                                        <b>هیچگونه پیامی در جعبه پیام های شما وجود ندارد<br />
                                                        <br />
                                                        </b>
                                                    </EmptyDataTemplate>
                                                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                    <EditRowStyle BackColor="#7C6F57" />
                                                    <AlternatingRowStyle BackColor="White" />
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="background-image: url('images/wtm.png'); width: 840px;
                                                height: 33px" valign="top">
                                                <table class="style1">
                                                    <tr>
                                                        <td style="text-align: left" width="33%">
                                                            <asp:Label ID="Label12" runat="server" BackColor="#FFE3DD" Font-Size="8pt" 
                                                                style="text-align: center" Text="پیام بدون پاسخ"></asp:Label>
&nbsp;</td>
                                                        <td width="33%" style="text-align: center">
                                                            <asp:Label ID="Label13" runat="server" BackColor="#FFFFDD" Font-Size="8pt" 
                                                                style="text-align: center" Text="پاسخ جدید مشاهده نشده"></asp:Label>
&nbsp;</td>
                                                        <td style="text-align: right">
                                                            <asp:Label ID="Label14" runat="server" BackColor="#D9FFC6" Font-Size="8pt" 
                                                                style="text-align: center" 
                                                                Text="پاسخ مشاهده شده"></asp:Label>
&nbsp;</td>
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
                </td>
            </tr>
        </table>
    
    </div>
&nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
        SelectCommand="SELECT answertxt, a_datetime, familytxt FROM tb_relation WHERE (id = @Param1)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Param1" QueryStringField="readid" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
        SelectCommand="SELECT tb_relation.isreply, tb_relation.showanswer, tb_relation.familytxt, tb_relation.answertxt, tb_relation.datetime, tb_relation.a_datetime, derivedtbl_1.teachername, tb_relation.id FROM tb_relation LEFT OUTER JOIN (SELECT teacherID, teachername FROM TeacherTable WHERE (schoolID = @Param3)) AS derivedtbl_1 ON tb_relation.teacherid = derivedtbl_1.teacherID WHERE (tb_relation.schoolid = @Param1) AND (tb_relation.studentid = @Param2) ORDER BY tb_relation.datetime DESC" 
        UpdateCommand="UPDATE tb_relation SET isreply = 0  WHERE (id = @id)">
        <SelectParameters>
            <asp:SessionParameter Name="Param3" SessionField="schoolid" />
            <asp:SessionParameter Name="Param1" SessionField="schoolid" />
            <asp:SessionParameter Name="Param2" SessionField="studentid" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="id" />
        </UpdateParameters>
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
