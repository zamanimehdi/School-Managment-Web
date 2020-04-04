<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentinformation.aspx.cs" Inherits="studentinformation" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head runat="server">
    <title>سامانه اینترنتی نرم افزار مدیریت مدرسه</title>
    <style type="text/css">
        .style1{ width: 100%;height: 43px;}
        .style2{height: 25px;}
        .style3 {height: 20px;width: 53px;}
        .style4{width: 755px;height: 20px;}
        .swait{filter:alpha(opacity=100);-moz-opacity:1;-khtml-opacity: 1;opacity: 1;}
        body{ height:100% }
        div.fullscreen
        {filter:alpha(opacity=35);-moz-opacity:0.5;
        -khtml-opacity: 0.35;opacity: 0.5;
        display:block;position:absolute;
        top:0;left:0;width:100%;height:1100px;}
        </style>
		<script src="alart/mootools.js" type="text/javascript"></script>
		<script src="alart/falertbox.v1.js" type="text/javascript"></script>
		<link rel="stylesheet" href="alart/falertbox.css" type="text/css" media="all" />
   <script type="text/javascript">
                function alertMe() {f = new fAlertBox();f.info('<h1> سامانه پیگیری وضعیت تحصیلی و تربیتی دانش آموزان</h1><em>توجه فرمایید</em><br/><br/>کلمه عبور با موفقیت تغییر یافت</p>');}
                function alert2(){f = new fAlertBox();f.info('<h1> سامانه پیگیری وضعیت تحصیلی و تربیتی دانش آموزان</h1><em>توجه فرمایید</em><br/><br/>پیام شما با موفقیت برای عوامل آموزشی ارسال شد</p>');}
                function alert3(){f = new fAlertBox();f.info('<h1> سامانه پیگیری وضعیت تحصیلی و تربیتی دانش آموزان</h1><em>توجه فرمایید</em><br/><br/>دانش آموز تا کنون غیبت کلاسی نداشته است</p>');}
                function alert4(){f = new fAlertBox();f.info('<h1> سامانه پیگیری وضعیت تحصیلی و تربیتی دانش آموزان</h1><em>توجه فرمایید</em><br/><br/>برای این دانش آموز هیچ گونه مورد انضباطی ثبت نشده است</p>');}
                function alert5(){f = new fAlertBox();f.info('<h1> سامانه پیگیری وضعیت تحصیلی و تربیتی دانش آموزان</h1><em>توجه فرمایید</em><br/><br/>هیچ نمره ای برای این دانش آموز ثبت نشده است</p>');}
                function alert6(){f = new fAlertBox();f.info('<h1> سامانه پیگیری وضعیت تحصیلی و تربیتی دانش آموزان</h1><em>توجه فرمایید</em><br/><br/>تعداد نمرات برای معدل گیری به اندازه کافی نمی باشد</p>');}
                function alert7(){f = new fAlertBox();f.info('<h1> سامانه پیگیری وضعیت تحصیلی و تربیتی دانش آموزان</h1><em>توجه فرمایید</em><br/><br/>تا کنون کارنامه آزمون تستی در سیستم ثبت نشده است</p>');}
                function showwait(){var c=document.getElementById("pleasewaitScreen").style.visibility='visible';}
    </script>
</head>
<body style="padding-right: 0px; padding-left: 0px; font-size: 9pt; padding-bottom: 0px; margin: 0px; padding-top: 0px; font-family: tahoma;">
    <form id="form1" runat="server" 
    
    style="background-position: center bottom; background-image: url('images/bgst.png'); background-repeat: repeat-x;">
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
                                height: 25px; text-align: left; padding-left: 12px;" valign="middle" 
                                colspan="2">
                                صفحه اصلی</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center" style="background-image: url('images/nav.png'); "
                    valign="top" class="style1"><table border="0" cellpadding="0" cellspacing="0" 
                        style="width: 800px; height: 47px;">
                        <tr>
                            <td align="right" style="font-size: 15pt; color: #800000; font-family: tahoma;
                                vertical-align: middle; height: 60px;" valign="middle" width="875">
                                <asp:Label ID="lbl_schooname" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td align="right" style="font-size: 9pt; color: #ffffff; font-family: tahoma;
                                text-align: center;" valign="middle" width="100">
                                <asp:ImageButton ID="img_mainpage" runat="server" 
                                    ImageUrl="~/images/home_icon.png"  
                                    PostBackUrl="~/studentinformation.aspx" onmouseover="this.style.opacity=0.7;"
                                                                                                onmouseout="this.style.opacity=1;"/>
                                <br />
                                <asp:LinkButton ID="mainpage" runat="server" Font-Underline="False" 
                                    ForeColor="Black" style="text-align: left" 
                                    PostBackUrl="~/studentinformation.aspx">صفحه اصلی</asp:LinkButton>
                            </td>
                            <td align="right" style="font-size: 9pt; color: #ffffff; font-family: tahoma;
                                text-align: center;" valign="middle" dir="rtl" width="100">
                                <asp:ImageButton ID="img_logout" runat="server" ImageUrl="~/images/exit.png" 
                                    onclick="btn_logout" onmouseover="this.style.opacity=0.7;"
                                                                                                onmouseout="this.style.opacity=1;"/>
                                <br />
                                <asp:LinkButton ID="logout" runat="server" Font-Underline="False" ForeColor="Black"
                                    OnClick="logout_Click" style="text-align: left">خروج</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 100%" valign="top"><table border="0" cellpadding="0" cellspacing="0" style="width: 850px">
                    <tr>
                        <td align="center" style="font-size: 9pt; color: #ffffff; font-family: tahoma;
                                height: 25px" valign="middle" colspan="3">
                            <asp:MultiView ID="MultiView" runat="server" ActiveViewIndex="0">
                                <asp:View ID="View_master" runat="server">
                                
                                    <table border="0" cellpadding="0" cellspacing="0" style="width: 840px" 
                                        ID="tb_schoolinfo" runat="server">
                                        <tr>
                                            <td align="right" 
                                                style="background-repeat: repeat-x; height: 20px; width: 85px;" valign="middle">
                                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                                                    Font-Size="8pt" ForeColor="#01235A" Text="اطلاعات مدرسه"></asp:Label>
                                            </td>
                                            <td align="right" 
                                                style="background-image: url(images/ttop.png); width: 755px; background-repeat: repeat-x; height: 20px" 
                                                valign="top">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 840px; height: 23px; background-image: url(images/wtt.png);"
                                                valign="top" colspan="2">
                                                </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2" style="background-image: url(images/wtm.png); " 
                                                valign="top">
                                                <asp:FormView ID="fv_school" runat="server" DataSourceID="sds_schoolInfo">
                                                    <EditItemTemplate>
                                                        schoolname:
                                                        <asp:TextBox ID="schoolnameTextBox" runat="server" 
                                                            Text='<%# Bind("schoolname") %>'>
                                                        </asp:TextBox>
                                                        <br />
                                                        schooltell:
                                                        <asp:TextBox ID="schooltellTextBox" runat="server" 
                                                            Text='<%# Bind("schooltell") %>'>
                                                        </asp:TextBox>
                                                        <br />
                                                        schoolAdres:
                                                        <asp:TextBox ID="schoolAdresTextBox" runat="server" 
                                                            Text='<%# Bind("schoolAdres") %>'>
                                                        </asp:TextBox>
                                                        <br />
                                                        schollStatement:
                                                        <asp:TextBox ID="schollStatementTextBox" runat="server" 
                                                            Text='<%# Bind("schollStatement") %>'>
                                                        </asp:TextBox>
                                                        <br />
                                                        state:
                                                        <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>'>
                                                        </asp:TextBox>
                                                        <br />
                                                        lastUpdate:
                                                        <asp:TextBox ID="lastUpdateTextBox" runat="server" 
                                                            Text='<%# Bind("lastUpdate") %>'>
                                                        </asp:TextBox>
                                                        <br />
                                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                                            CommandName="Update" Text="Update">
                                                        </asp:LinkButton>
                                                        <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" 
                                                            CommandName="Cancel" Text="Cancel">
                                                        </asp:LinkButton>
                                                    </EditItemTemplate>
                                                    <InsertItemTemplate>
                                                        schoolname:
                                                        <asp:TextBox ID="schoolnameTextBox" runat="server" 
                                                            Text='<%# Bind("schoolname") %>'>
                                                        </asp:TextBox>
                                                        <br />
                                                        schooltell:
                                                        <asp:TextBox ID="schooltellTextBox" runat="server" 
                                                            Text='<%# Bind("schooltell") %>'>
                                                        </asp:TextBox>
                                                        <br />
                                                        schoolAdres:
                                                        <asp:TextBox ID="schoolAdresTextBox" runat="server" 
                                                            Text='<%# Bind("schoolAdres") %>'>
                                                        </asp:TextBox>
                                                        <br />
                                                        schollStatement:
                                                        <asp:TextBox ID="schollStatementTextBox" runat="server" 
                                                            Text='<%# Bind("schollStatement") %>'>
                                                        </asp:TextBox>
                                                        <br />
                                                        state:
                                                        <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>'>
                                                        </asp:TextBox>
                                                        <br />
                                                        lastUpdate:
                                                        <asp:TextBox ID="lastUpdateTextBox" runat="server" 
                                                            Text='<%# Bind("lastUpdate") %>'>
                                                        </asp:TextBox>
                                                        <br />
                                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                                            CommandName="Insert" Text="Insert">
                                                        </asp:LinkButton>
                                                        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                                                            CommandName="Cancel" Text="Cancel">
                                                        </asp:LinkButton>
                                                    </InsertItemTemplate>
                                                    <ItemTemplate>
                                                        <table border="0" cellpadding="0" cellspacing="0" 
                                                            style="width: 820px; color: #000000">
                                                            <tr>
                                                                <td align="right" class="style2" valign="middle">
                                                                    <asp:Label ID="schoolnameLabel" runat="server" Font-Bold="True" 
                                                                        Text='<%# Bind("schoolname") %>'></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right" style="width: 820px; height: 25px" valign="middle">
                                                                    &nbsp;آدرس:
                                                                    <asp:Label ID="schoolAdresLabel" runat="server" 
                                                                        Text='<%# Bind("schoolAdres") %>'></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right" style="width: 820px; height: 25px" valign="middle">
                                                                    &nbsp; تلفن:
                                                                    <asp:Label ID="schooltellLabel" runat="server" Text='<%# Bind("schooltell") %>'></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right" style="width: 820px; height: 25px; text-align: center;" 
                                                                    valign="middle">
                                                                    اطلاعاتی که مشاهده می کنید سوابق دانش آموز تا تاریخ
                                                                    <asp:Label ID="lastUpdateLabel" runat="server" Font-Bold="True" ForeColor="Red" 
                                                                        Text='<%# Bind("lastUpdate") %>'></asp:Label>
                                                                    &nbsp;می باشد.</td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right" 
                                                                    style="width: 820px; height: 25px; text-align: center; color: #FF0000;" 
                                                                    valign="middle">
                                                                    &lt;&lt;&nbsp;
                                                                    <asp:Label ID="schollStatementLabel" runat="server" BackColor="#FFFFC0" 
                                                                        BorderColor="Silver" BorderStyle="Dashed" BorderWidth="1px" ForeColor="Navy" 
                                                                        Text='<%# Bind("schollStatement") %>'></asp:Label>
                                                                    &nbsp;&gt;&gt;</td>
                                                            </tr>
                                                        </table>
                                                    </ItemTemplate>
                                                </asp:FormView>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" colspan="2" 
                                                style="background-image: url(images/wtb.png); width: 840px; height: 33px;" 
                                                valign="top">
                                            </td>
                                        </tr>
                                    </table><table border="0" cellpadding="0" cellspacing="0" style="width: 840px">
                                        <tr>
                                            <td align="right" colspan="3" 
                                                style="background-repeat: repeat-x; height: 20px; text-align: center; vertical-align: middle;" 
                                                valign="middle"><br />
                                                <asp:DataList ID="DataList1" runat="server" 
                                                    BorderColor="#D2D7B2" BorderStyle="Double" BorderWidth="4px" CellPadding="2" 
                                                    DataSourceID="sds_schoolInfo" CellSpacing="4" ForeColor="#333333" 
                                                    HorizontalAlign="Center">
                                                    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                                                    <AlternatingItemStyle BackColor="White" />
                                                    <ItemStyle BackColor="#EFF3FB" />
                                                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                    <ItemTemplate>
                                                        <table width="840" ID="tb_allpm">
                                                            <tr>
                                                                <td style="vertical-align: top">
                                                                    <asp:ImageButton ID="ImageButton16" runat="server" 
                                                                        ImageUrl="~/images/close.png" 
                                                                        PostBackUrl="~/studentinformation.aspx?remove=y" onmouseover="this.style.opacity=0.7;"
                                                                                                onmouseout="this.style.opacity=1;"/>
                                                                    </td>
                                                                <td>
                                                                    <asp:Label ID="Label9" runat="server" BorderWidth="0px" 
                                                                        Text='<%# Bind("schollStatement") %>' Width="800px"></asp:Label>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </ItemTemplate>
                                                </asp:DataList>
                                                <table ID="tb_newmsg_inbox" runat="server" border="0" cellpadding="0" 
                                                    cellspacing="0" style="width: 840px" visible="False">
                                                    <tr>
                                                        <td align="right" class="style3" style="background-repeat: repeat-x; " 
                                                            valign="middle">
                                                            <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                                                                Font-Size="8pt" ForeColor="#01235A" Text="پیام جدید"></asp:Label>
                                                        </td>
                                                        <td align="right" 
                                                            style="background-image: url('images/ttop.png'); background-repeat: repeat-x; " 
                                                            valign="top" class="style4">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right" colspan="2" 
                                                            style="background-image: url(images/wtt.png); width: 840px; height: 23px" 
                                                            valign="top">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" colspan="2" style="background-image: url(images/wtm.png)" 
                                                            valign="top">
                                                            <table>
                                                                <tr>
                                                                    <td style="text-decoration: blink; font-size: 16px; font-weight: bold; text-align: center; color: #000000; width: 500px;">
                                                                        <asp:Label ID="lbl_inbox_top_pm" runat="server" Font-Size="11pt"></asp:Label>
                                                                    </td>
                                                                    <td style="width: 220px">
                                                                        <asp:ImageButton ID="ImageButton17" runat="server" 
                                                                            ImageUrl="~/images/newemail_inbox.png" 
                                                                            onmouseout="this.style.opacity=1;" onmouseover="this.style.opacity=0.7;" />
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right" colspan="2" 
                                                            style="background-image: url(images/wtb.png); width: 840px; height: 33px" 
                                                            valign="top">
                                                            <asp:SqlDataSource ID="sds_toppm_inbox" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
                                                                SelectCommand="SELECT TOP (1) title, id FROM tb_inbox WHERE (schoolid = @Param1) AND (studentid = @Param2) AND (isread = 0)">
                                                                <SelectParameters>
                                                                    <asp:SessionParameter Name="Param1" SessionField="schoolid" />
                                                                    <asp:SessionParameter Name="Param2" SessionField="studentid" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                            <asp:SqlDataSource ID="sds_newinbox" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
                                                                SelectCommand="SELECT COUNT(*) AS Expr1 FROM tb_inbox WHERE (isread = 0) AND (studentid = @Param4) AND (schoolid = @Param3)">
                                                                <SelectParameters>
                                                                    <asp:SessionParameter Name="Param4" SessionField="studentid" />
                                                                    <asp:SessionParameter Name="Param3" SessionField="schoolid" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <table ID="tb_newmsg" runat="server" border="0" cellpadding="0" cellspacing="0" 
                                                    style="width: 840px" visible="False">
                                                    <tr>
                                                        <td align="right" class="style3" style="background-repeat: repeat-x; " 
                                                            valign="middle">
                                                            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Tahoma" 
                                                                Font-Size="8pt" ForeColor="#01235A" Text="پیام جدید"></asp:Label>
                                                        </td>
                                                        <td align="right" 
                                                            style="background-image: url(images/ttop.png); width: 755px; background-repeat: repeat-x; height: 20px" 
                                                            valign="top">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right" colspan="2" 
                                                            style="background-image: url(images/wtt.png); width: 840px; height: 23px" 
                                                            valign="top">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" colspan="2" style="background-image: url(images/wtm.png)" 
                                                            valign="top">
                                                            <table>
                                                                <tr>
                                                                    <td style="text-decoration: blink; font-size: 16px; font-weight: bold; text-align: center; color: #000000; width: 500px;">
                                                                        به&nbsp;
                                                                        <asp:Label ID="lbl_pmcount" runat="server" ForeColor="Red"></asp:Label>
                                                                        &nbsp;پیام شما پاسخ داده شد</td>
                                                                    <td style="width: 220px">
                                                                        <asp:ImageButton ID="ImageButton15" runat="server" 
                                                                            ImageUrl="~/images/newemail.png" onclick="ImageButton15_Click" onmouseover="this.style.opacity=0.7;"
                                                                                                onmouseout="this.style.opacity=1;"/>
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right" colspan="2" 
                                                            style="background-image: url(images/wtb.png); width: 840px; height: 33px" 
                                                            valign="top">
                                                            <asp:SqlDataSource ID="sds_newpm" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
                                                                SelectCommand="SELECT COUNT(id) AS Expr1 FROM tb_relation WHERE (schoolid = @Param1) AND (studentid = @Param2) AND (isreply = 1) AND (showanswer = 1)">
                                                                <SelectParameters>
                                                                    <asp:SessionParameter Name="Param1" SessionField="schoolid" />
                                                                    <asp:SessionParameter Name="Param2" SessionField="studentid" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 119px; background-repeat: repeat-x; height: 20px"
                                                valign="middle">
                                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt"
                                                    ForeColor="#01235A" Text="اطلاعات دانش آموز" Width="105px"></asp:Label></td>
                                            <td align="right" colspan="2" style="background-image: url(images/ttop.png); width: 755px;
                                                background-repeat: repeat-x; height: 20px" valign="top">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" colspan="3" style="background-position: center; background-image: url(images/wtt.png); width: 840px;
                                                height: 23px; background-repeat: repeat-y;" valign="top">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="3" 
                                                style="background-position: center; background-image: url(images/wtm.png); background-repeat: repeat-y;" 
                                                valign="top">
                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 810px">
                                                    <tr>
                                                        <td align="right" style="width: 380px" valign="top">
                                                            <img height="19" src="images/blank.png" width="17" />
                                                            <asp:GridView ID="gv_bscore" runat="server" AutoGenerateColumns="False" 
                                                                CellPadding="4" DataSourceID="sds_briefscore" ForeColor="#333333" 
                                                                GridLines="None" Width="380px">
                                                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                                <Columns>
                                                                    <asp:TemplateField HeaderText="جدیدترین نمرات درسی">
                                                                        <ItemTemplate>
                                                                            <table border="0" cellpadding="0" cellspacing="0" style="width: 380px">
                                                                                <tr>
                                                                                    <td align="right" style="width: 80px" valign="middle">
                                                                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Expr1") %>'></asp:Label>
                                                                                    </td>
                                                                                    <td align="right" style="width: 150px" valign="middle">
                                                                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("lessonname") %>'></asp:Label>
                                                                                    </td>
                                                                                    <td align="right" style="width: 150px; color: #800080;" valign="middle">
                                                                                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("score", "{0:f2}") %>'></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                </Columns>
                                                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                <EmptyDataTemplate>
                                                                    <table>
                                                                        <tr>
                                                                            <td bgcolor="Silver" 
                                                                                
                                                                                style="text-align: center; color: #FFFFFF; font-weight: bold; width: 380px;" 
                                                                                width="380">
                                                                                جدیدترین نمرات درسی</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="text-align: center">
                                                                                <br />
                                                                                در حال حاضر نمره ای در سیستم&nbsp; ثبت نشده است
                                                                                <br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </EmptyDataTemplate>
                                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                <HeaderStyle BackColor="Silver" Font-Bold="True" ForeColor="White" />
                                                                <EditRowStyle BackColor="#999999" />
                                                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                            </asp:GridView>
                                                            <asp:GridView ID="gv_bbehavior" runat="server" AutoGenerateColumns="False" 
                                                                CellPadding="4" DataKeyNames="BHID" DataSourceID="sds_briefbeh" 
                                                                ForeColor="#333333" GridLines="None" Width="375px">
                                                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                                <Columns>
                                                                    <asp:TemplateField HeaderText="جدیدترین موارد انضباطی">
                                                                        <ItemTemplate>
                                                                            <table border="0" cellpadding="0" cellspacing="0" style="width: 380px">
                                                                                <tr>
                                                                                    <td align="right" style="width: 80px" valign="middle">
                                                                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Expr1") %>'></asp:Label>
                                                                                    </td>
                                                                                    <td align="right" style="width: 150px" valign="middle">
                                                                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("typebname") %>'></asp:Label>
                                                                                    </td>
                                                                                    <td align="right" style="width: 140px; color: #800080;" valign="middle">
                                                                                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("Expr2") %>'></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                </Columns>
                                                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                <EmptyDataTemplate>
                                                                    <table>
                                                                        <tr>
                                                                            <td bgcolor="Silver" 
                                                                                style="text-align: center; color: #FFFFFF; font-weight: bold; width: 380px;">
                                                                                جدیدترین موارد انضباطی
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="text-align: center">
                                                                                <br />
                                                                                این دانش آموز هیچگونه مشکل انضباطی ندارد<br />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </EmptyDataTemplate>
                                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                <HeaderStyle BackColor="Silver" Font-Bold="True" ForeColor="White" />
                                                                <EditRowStyle BackColor="#999999" />
                                                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                            </asp:GridView>
                                                        </td>
                                                        <td align="right" style="width: 430px; color: #000000;" valign="top">
                                                            <asp:FormView ID="fv_student" runat="server" DataSourceID="sds_studentInfo" 
                                                                Height="266px">
                                                                <EditItemTemplate>
                                                                    schoolID:
                                                                    <asp:TextBox ID="schoolIDTextBox" runat="server" Text='<%# Bind("schoolID") %>'>
                                                                    </asp:TextBox>
                                                                    <br />
                                                                    studentID:
                                                                    <asp:TextBox ID="studentIDTextBox" runat="server" 
                                                                        Text='<%# Bind("studentID") %>'>
                                                                    </asp:TextBox>
                                                                    <br />
                                                                    studentname:
                                                                    <asp:TextBox ID="studentnameTextBox" runat="server" 
                                                                        Text='<%# Bind("studentname") %>'>
                                                                    </asp:TextBox>
                                                                    <br />
                                                                    grade:
                                                                    <asp:TextBox ID="gradeTextBox" runat="server" Text='<%# Bind("grade") %>'>
                                                                    </asp:TextBox>
                                                                    <br />
                                                                    classname:
                                                                    <asp:TextBox ID="classnameTextBox" runat="server" 
                                                                        Text='<%# Bind("classname") %>'>
                                                                    </asp:TextBox>
                                                                    <br />
                                                                    majorname:
                                                                    <asp:TextBox ID="majornameTextBox" runat="server" 
                                                                        Text='<%# Bind("majorname") %>'>
                                                                    </asp:TextBox>
                                                                    <br />
                                                                    idnumber:
                                                                    <asp:TextBox ID="idnumberTextBox" runat="server" Text='<%# Bind("idnumber") %>'>
                                                                    </asp:TextBox>
                                                                    <br />
                                                                    fathername:
                                                                    <asp:TextBox ID="fathernameTextBox" runat="server" 
                                                                        Text='<%# Bind("fathername") %>'>
                                                                    </asp:TextBox>
                                                                    <br />
                                                                    address:
                                                                    <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>'>
                                                                    </asp:TextBox>
                                                                    <br />
                                                                    tell:
                                                                    <asp:TextBox ID="tellTextBox" runat="server" Text='<%# Bind("tell") %>'>
                                                                    </asp:TextBox>
                                                                    <br />
                                                                    classID:
                                                                    <asp:TextBox ID="classIDTextBox" runat="server" Text='<%# Bind("classID") %>'>
                                                                    </asp:TextBox>
                                                                    <br />
                                                                    <asp:LinkButton ID="UpdateButton0" runat="server" CausesValidation="True" 
                                                                        CommandName="Update" Text="Update">
                                                                    </asp:LinkButton>
                                                                    <asp:LinkButton ID="UpdateCancelButton0" runat="server" 
                                                                        CausesValidation="False" CommandName="Cancel" Text="Cancel">
                                                                    </asp:LinkButton>
                                                                </EditItemTemplate>
                                                                <InsertItemTemplate>
                                                                    schoolID:
                                                                    <asp:TextBox ID="schoolIDTextBox0" runat="server" 
                                                                        Text='<%# Bind("schoolID") %>'>
                                                                    </asp:TextBox>
                                                                    <br />
                                                                    studentID:
                                                                    <asp:TextBox ID="studentIDTextBox0" runat="server" 
                                                                        Text='<%# Bind("studentID") %>'>
                                                                    </asp:TextBox>
                                                                    <br />
                                                                    studentname:
                                                                    <asp:TextBox ID="studentnameTextBox0" runat="server" 
                                                                        Text='<%# Bind("studentname") %>'>
                                                                    </asp:TextBox>
                                                                    <br />
                                                                    grade:
                                                                    <asp:TextBox ID="gradeTextBox0" runat="server" Text='<%# Bind("grade") %>'>
                                                                    </asp:TextBox>
                                                                    <br />
                                                                    classname:
                                                                    <asp:TextBox ID="classnameTextBox0" runat="server" 
                                                                        Text='<%# Bind("classname") %>'>
                                                                    </asp:TextBox>
                                                                    <br />
                                                                    majorname:
                                                                    <asp:TextBox ID="majornameTextBox0" runat="server" 
                                                                        Text='<%# Bind("majorname") %>'>
                                                                    </asp:TextBox>
                                                                    <br />
                                                                    idnumber:
                                                                    <asp:TextBox ID="idnumberTextBox0" runat="server" 
                                                                        Text='<%# Bind("idnumber") %>'>
                                                                    </asp:TextBox>
                                                                    <br />
                                                                    fathername:
                                                                    <asp:TextBox ID="fathernameTextBox0" runat="server" 
                                                                        Text='<%# Bind("fathername") %>'>
                                                                    </asp:TextBox>
                                                                    <br />
                                                                    address:
                                                                    <asp:TextBox ID="addressTextBox0" runat="server" Text='<%# Bind("address") %>'>
                                                                    </asp:TextBox>
                                                                    <br />
                                                                    tell:
                                                                    <asp:TextBox ID="tellTextBox0" runat="server" Text='<%# Bind("tell") %>'>
                                                                    </asp:TextBox>
                                                                    <br />
                                                                    classID:
                                                                    <asp:TextBox ID="classIDTextBox0" runat="server" Text='<%# Bind("classID") %>'>
                                                                    </asp:TextBox>
                                                                    <br />
                                                                    <asp:LinkButton ID="InsertButton0" runat="server" CausesValidation="True" 
                                                                        CommandName="Insert" Text="Insert">
                                                                    </asp:LinkButton>
                                                                    <asp:LinkButton ID="InsertCancelButton0" runat="server" 
                                                                        CausesValidation="False" CommandName="Cancel" Text="Cancel">
                                                                    </asp:LinkButton>
                                                                </InsertItemTemplate>
                                                                <ItemTemplate>
                                                                    &nbsp;<table border="0" cellpadding="0" cellspacing="0" 
                                                                        style="background-image: url(images/kart.png); width: 420px; color: #000000; height: 250px">
                                                                        <tr>
                                                                            <td align="right" style="width: 100px; height: 15px" valign="middle">
                                                                            </td>
                                                                            <td align="right" style="width: 100px; height: 15px" valign="middle">
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right" style="width: 320px; height: 25px" valign="middle">
                                                                                &nbsp;&nbsp; نام:
                                                                                <asp:Label ID="studentnameLabel" runat="server" 
                                                                                    Text='<%# Bind("studentname") %>'></asp:Label>
                                                                            </td>
                                                                            <td align="right" rowspan="4" style="width: 100px" valign="top">
                                                                                <img src="images/boyavt.png" onmouseover="this.style.opacity=0.7;"
                                                                                                onmouseout="this.style.opacity=1;"/></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right" style="width: 320px; height: 25px" valign="middle">
                                                                                &nbsp;&nbsp; کلاس:
                                                                                <asp:Label ID="classnameLabel" runat="server" Text='<%# Bind("classname") %>'></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right" style="width: 320px; height: 25px" valign="middle">
                                                                                &nbsp;&nbsp; رشته:
                                                                                <asp:Label ID="majornameLabel" runat="server" Text='<%# Bind("majorname") %>'></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right" style="width: 320px; height: 25px" valign="middle">
                                                                                &nbsp;&nbsp; نام پدر:
                                                                                <asp:Label ID="fathernameLabel" runat="server" Text='<%# Bind("fathername") %>'></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right" style="width: 320px; height: 25px" valign="middle">
                                                                                &nbsp;&nbsp; تلفن:
                                                                                <asp:Label ID="tellLable" runat="server" Text='<%# Eval("tell") %>'></asp:Label>
                                                                            </td>
                                                                            <td align="right" style="width: 100px; height: 25px" valign="middle">
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right" colspan="2" valign="middle">
                                                                                &nbsp;&nbsp; آدرس:
                                                                                <asp:Label ID="addrssLable" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </ItemTemplate>
                                                            </asp:FormView>
                                                            <table border="0" cellpadding="0" cellspacing="0" style="width: 420px">
                                                                <tr>
                                                                    <td align="right" style="width: 240px; text-align: center;" valign="top">
                                                                        <asp:Label ID="lbl_txtdatefirstpage" runat="server"></asp:Label>
                                                                        <br />
                                                                        &nbsp;&nbsp; رتبه دانش آموز در پـایـــه&nbsp;&nbsp; :
                                                                        <asp:Label ID="rankall" runat="server" style="color: #FF0000"></asp:Label>
                                                                    </td>
                                                                    <td align="right" style="width: 210px" valign="top">
                                                                        معدل :
                                                                        <asp:Label ID="averageLabel" runat="server" ForeColor="Red" 
                                                                            Text='<%# Bind("average") %>'></asp:Label>
                                                                        &nbsp;&nbsp;
                                                                        <br />
                                                                        رتبه دانش آموز در کلاس :
                                                                        <asp:Label ID="rankLabel" runat="server" ForeColor="Red" 
                                                                            Text='<%# Bind("rank") %>'></asp:Label>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" colspan="3" style="background-position: center; background-image: url(images/wtb.png); width: 840px;
                                                height: 33px; background-repeat: repeat-y;" valign="top">
                                            </td>
                                        </tr>
                                    </table><table border="0" cellpadding="0" cellspacing="0" style="width: 840px">
                                        <tr>
                                            <td align="right" colspan="3" 
                                                style="background-repeat: repeat-x; height: 20px; text-align: center;" 
                                                valign="middle">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="width: 112px; background-repeat: repeat-x; height: 20px"
                                                valign="middle">
                                                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="9pt"
                                                    ForeColor="#01235A" Text="کنترل پنل دانش آموز" Width="128px"></asp:Label></td>
                                            <td align="right" colspan="2" style="background-image: url(images/ttop.png); width: 755px;
                                                background-repeat: repeat-x; height: 20px" valign="top">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" colspan="3" style="background-image: url(images/wtt.png); width: 840px;
                                                height: 23px" valign="top">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="3" style="background-image: url(images/wtm.png)" valign="top">
                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 820px">
                                                    <tr>
                                                        <td align="center" style="width: 205px" valign="top">
                                                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                                                ImageUrl="~/images/websiteicon/score.png" 
                                                                PostBackUrl="~/scorelist.aspx" onmouseover="this.style.opacity=0.7;"
                                                                                                onmouseout="this.style.opacity=1;" 
                                                                onclientclick="showwait();"/>
                                                            <br />
                                                            <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="False" 
                                                                PostBackUrl="~/scorelist.aspx" onclientclick="showwait();">نمرات</asp:LinkButton></td>
                                                        <td align="center" style="width: 205px" valign="top">
                                                            <asp:ImageButton ID="ImageButton13" runat="server" 
                                                                ImageUrl="~/images/websiteicon/3247.png" onclick="ImageButton13_Click" 
                                                                PostBackUrl="~/average.aspx" onmouseover="this.style.opacity=0.7;"
                                                                                                onmouseout="this.style.opacity=1;" 
                                                                onclientclick="showwait();"/>
                                                            <br />
                                                            <asp:LinkButton ID="LinkButton13" runat="server" Font-Underline="False" 
                                                                PostBackUrl="~/average.aspx" onclientclick="showwait();">معدل دروس</asp:LinkButton>
                                                            <br />
                                                            </td>
                                                        <td align="center" style="width: 205px" valign="top">
                                                            <asp:ImageButton ID="ImageButton3" runat="server" 
                                                                ImageUrl="~/images/websiteicon/3259.png" PostBackUrl="~/behavall.aspx" onmouseover="this.style.opacity=0.7;"
                                                                                                onmouseout="this.style.opacity=1;" 
                                                                onclientclick="showwait();"/>
                                                            <br />
                                                            <asp:LinkButton ID="LinkButton2" runat="server" Font-Underline="False" 
                                                                PostBackUrl="~/behavall.aspx" onclientclick="showwait();">وضعیت انضباطی</asp:LinkButton>
                                                            <br />
                                                            </td>
                                                        <td align="center" style="width: 205px" valign="top">
                                                            <asp:ImageButton ID="ImageButton2" runat="server" 
                                                                ImageUrl="~/images/websiteicon/4478.png" PostBackUrl="~/behavone.aspx" onmouseover="this.style.opacity=0.7;"
                                                                                                onmouseout="this.style.opacity=1;" 
                                                                onclientclick="showwait();"/>
                                                            <br />
                                                            <asp:LinkButton ID="LinkButton3" runat="server" Font-Underline="False" 
                                                                PostBackUrl="~/behavone.aspx" onclientclick="showwait();">غیبت</asp:LinkButton>
                                                            <br />
                                                            </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" colspan="4" style="background-image: url(images/tasksep.png);
                                                            height: 15px" valign="top">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" style="width: 205px" valign="top">
                                                            <asp:ImageButton ID="ImageButton18" runat="server" 
                                                                ImageUrl="~/images/websiteicon/32431.png" onclientclick="showwait();" 
                                                                onmouseout="this.style.opacity=1;" onmouseover="this.style.opacity=0.7;" 
                                                                PostBackUrl="~/averagecompare.aspx" />
                                                            <br />
                                                            <asp:LinkButton ID="LinkButton16" runat="server" Font-Underline="False" 
                                                                onclientclick="showwait();" PostBackUrl="~/averagecompare.aspx" Width="140px">نمودار 
                                                            معدل درس ها</asp:LinkButton>
                                                            <br />
                                                            </td>
                                                        <td align="center" style="width: 205px" valign="top">
                                                            <asp:ImageButton ID="ImageButton19" runat="server" 
                                                                ImageUrl="~/images/websiteicon/ro.png" onclientclick="showwait();" 
                                                                onmouseout="this.style.opacity=1;" onmouseover="this.style.opacity=0.7;" 
                                                                PostBackUrl="~/progress.aspx" />
                                                            <br />
                                                            <asp:LinkButton ID="LinkButton17" runat="server" Font-Underline="False" 
                                                                onclientclick="showwait();" PostBackUrl="~/progress.aspx" Width="140px">نمودار 
                                                            رشد و افت
                                                            </asp:LinkButton>
                                                            <br />
                                                            </td>
                                                        <td align="center" style="width: 205px" valign="top">
                                                            <asp:ImageButton ID="ImageButton20" runat="server" 
                                                                ImageUrl="~/images/websiteicon/3257.png" onclientclick="showwait();" 
                                                                onmouseout="this.style.opacity=1;" onmouseover="this.style.opacity=0.7;" 
                                                                PostBackUrl="~/cquiz.aspx" />
                                                            <br />
                                                            <asp:LinkButton ID="LinkButton18" runat="server" Font-Underline="False" 
                                                                onclientclick="showwait();" PostBackUrl="~/cquiz.aspx" Width="140px">امتحانات 
                                                            هماهنگ</asp:LinkButton>
                                                            <br />
                                                        </td>
                                                        <td align="center" style="width: 205px" valign="top">
                                                            <asp:ImageButton ID="ImageButton21" runat="server" 
                                                                ImageUrl="~/images/websiteicon/testi.png" onclientclick="showwait();" 
                                                                onmouseout="this.style.opacity=1;" onmouseover="this.style.opacity=0.7;" 
                                                                PostBackUrl="~/azmoon.aspx" />
                                                            <br />
                                                            <asp:LinkButton ID="LinkButton19" runat="server" Font-Underline="False" 
                                                                onclientclick="showwait();" PostBackUrl="~/azmoon.aspx" Width="140px">آزمون 
                                                            های تستی</asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" colspan="4" 
                                                            style="background-image: url(images/tasksep.png); height: 15px" valign="top">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" style="width: 205px" valign="top">
                                                            <asp:ImageButton ID="ImageButton14" runat="server" 
                                                                ImageUrl="~/images/websiteicon/4451.png" onclientclick="showwait();" 
                                                                onmouseout="this.style.opacity=1;" onmouseover="this.style.opacity=0.7;" 
                                                                PostBackUrl="~/sendmessage.aspx?id=-1" />
                                                            <br />
                                                            <asp:LinkButton ID="LinkButton14" runat="server" Font-Underline="False" 
                                                                onclientclick="showwait();" PostBackUrl="~/sendmessage.aspx?id=-1">ارسال 
                                                            پیام برای عوامل آموزشی</asp:LinkButton>
                                                            <br />
                                                        </td>
                                                        <td align="center" style="width: 205px" valign="top">
                                                            <asp:ImageButton ID="img_443" runat="server" ImageUrl="~/images/send.png" 
                                                                onclick="img_443_Click" onclientclick="showwait();" 
                                                                onmouseout="this.style.opacity=1;" onmouseover="this.style.opacity=0.7;" />
                                                            <br />
                                                            <asp:LinkButton ID="LinkButton11" runat="server" Font-Size="7pt" 
                                                                Font-Underline="False" onclick="LinkButton11_Click" onclientclick="showwait();" 
                                                                style="font-size: 9pt" Width="140px">پیام های ارسالی</asp:LinkButton>
                                                            <br />
                                                        </td>
                                                        <td align="center" style="width: 205px; color: #000000;" valign="top">
                                                           
                                                            <asp:ImageButton ID="img_444" runat="server" ImageUrl="~/images/recive.png" 
                                                                onclientclick="showwait();" onmouseout="this.style.opacity=1;" 
                                                                onmouseover="this.style.opacity=0.7;" PostBackUrl="~/inbox.aspx" />
                                                            <br />
                                                            <asp:LinkButton ID="LinkButton15" runat="server" Font-Size="7pt" 
                                                                Font-Underline="False" onclientclick="showwait();" PostBackUrl="~/inbox.aspx" 
                                                                style="font-size: 9pt" Width="140px">پیام های دریافتی</asp:LinkButton>
                                                            <br />
                                                        </td>
                                                        <td align="center" style="width: 205px" valign="top">
                                                            <br />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" colspan="4" 
                                                            style="background-image: url(images/tasksep.png); height: 15px;" valign="top">
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" style="width: 205px" valign="top">
                                                            <asp:ImageButton ID="ImageButton12" runat="server" 
                                                                ImageUrl="~/images/websiteicon/passchange.png" onclientclick="showwait();" 
                                                                onmouseout="this.style.opacity=1;" onmouseover="this.style.opacity=0.7;" 
                                                                PostBackUrl="~/changepass.aspx" />
                                                            <br />
                                                            <asp:LinkButton ID="LinkButton12" runat="server" Font-Underline="False" 
                                                                onclientclick="showwait();" PostBackUrl="~/changepass.aspx">تغییر رمز عبور 
                                                            کاربر</asp:LinkButton>
                                                        </td>
                                                        <td align="center" style="width: 205px" valign="top">
                                                            &nbsp;</td>
                                                        <td align="center" style="width: 205px" valign="top">
                                                            &nbsp;</td>
                                                        <td align="center" style="width: 205px" valign="top">
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="right" colspan="3" style="background-image: url(images/wtb.png); width: 840px;
                                                height: 33px" valign="top">
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View2" runat="server">
                                </asp:View>
                                <asp:View ID="View3" runat="server">
                                </asp:View>
                                <asp:View ID="View4" runat="server">
                                </asp:View>
                                <asp:View ID="View5" runat="server">
                                </asp:View>
                                <asp:View ID="View6" runat="server">
                                </asp:View>
                                <asp:View ID="View7" runat="server">
                                </asp:View>
                            </asp:MultiView></td>
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
        <asp:SqlDataSource ID="sds_studentInfo" runat="server" ConnectionString="<%$ ConnectionStrings:SMConnectionString %>"
            
       SelectCommand="SELECT schoolID, studentID, studentname, classname, majorname, idnumber, fathername, address, tell, classID FROM StudentTable WHERE (schoolID = @schoolID) AND (studentID = @stID)">
            <SelectParameters>
                <asp:SessionParameter Name="schoolID" SessionField="schoolid" />
                <asp:SessionParameter Name="stID" SessionField="studentid" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sds_schoolInfo" runat="server" ConnectionString="<%$ ConnectionStrings:SMConnectionString %>"
            
       SelectCommand="SELECT schoolname, schooltell, schoolAdres, schollStatement, state, lastUpdate, startdate_firstpagescore, enddate_firstpagescore, txtdate_firstpagescore FROM SchoolTable WHERE (shoolID = @schoolID)">
            <SelectParameters>
                <asp:SessionParameter Name="schoolID" SessionField="schoolid" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sds_briefbeh" runat="server" ConnectionString="<%$ ConnectionStrings:SMConnectionString %>"
            
       SelectCommand="SELECT TOP (5) BehaviorTable.BHID, SUBSTRING(BehaviorTable.mentiondesc, 1, 21) + ' ...' AS Expr2, TypebTable.typebname, SUBSTRING(BehaviorTable.mentiondate, 1, 2) + '/' + SUBSTRING(BehaviorTable.mentiondate, 3, 2) + '/' + SUBSTRING(BehaviorTable.mentiondate, 5, 2) AS Expr1 FROM BehaviorTable INNER JOIN TypebTable ON BehaviorTable.typeb = TypebTable.typebcode WHERE (BehaviorTable.schoolID = @schoolID) AND (BehaviorTable.studentID = @stID)">
            <SelectParameters>
                <asp:SessionParameter Name="schoolID" SessionField="schoolid" />
                <asp:SessionParameter Name="stID" SessionField="studentid" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sds_briefscore" runat="server" ConnectionString="<%$ ConnectionStrings:SMConnectionString %>"
        
       
       SelectCommand="SELECT TOP (5) ScoreTable.score, derivedtbl_1.lessonname, SUBSTRING(ScoreTable.scoredate, 1, 2) + '/' + SUBSTRING(ScoreTable.scoredate, 3, 2) + '/' + SUBSTRING(ScoreTable.scoredate, 5, 2) AS Expr1 FROM (SELECT DISTINCT lessonname, lessonID FROM LessonTable WHERE (schoolID = @Param1)) AS derivedtbl_1 INNER JOIN ScoreTable ON derivedtbl_1.lessonID = ScoreTable.lessonID WHERE (ScoreTable.schoolID = @Param2) AND (ScoreTable.studentID = @Param3) ORDER BY ScoreTable.scoredate DESC" >
            <SelectParameters>
                <asp:SessionParameter Name="Param1" SessionField="schoolid" />
                <asp:SessionParameter Name="Param2" SessionField="schoolid" />
                <asp:SessionParameter Name="Param3" SessionField="studentid" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sds_Avg" runat="server" ConnectionString="<%$ ConnectionStrings:SMConnectionString %>"
            
       
       
       SelectCommand="SELECT studentID AS stid, SUM(avg_vahed) / SUM(vahed) AS moadel FROM (SELECT TOP (100) PERCENT derivedtbl_1_1.lessonname, ScoreTable.lessonID, AVG(ScoreTable.score) * derivedtbl_2.vahed AS avg_vahed, derivedtbl_2.vahed, ScoreTable.studentID FROM ScoreTable INNER JOIN (SELECT lessonname, lessonID FROM LessonTable WHERE (schoolID = @Param10)) AS derivedtbl_1_1 ON ScoreTable.lessonID = derivedtbl_1_1.lessonID INNER JOIN (SELECT lessonID, vahed FROM LessonTable AS LessonTable_1 GROUP BY lessonID, vahed) AS derivedtbl_2 ON ScoreTable.lessonID = derivedtbl_2.lessonID WHERE (ScoreTable.schoolID = @Param1) AND (ScoreTable.scoredate &gt;= @startdate) AND (ScoreTable.scoredate &lt;= @enddate) GROUP BY derivedtbl_1_1.lessonname, ScoreTable.lessonID, derivedtbl_2.vahed, ScoreTable.studentID ORDER BY ScoreTable.studentID, derivedtbl_1_1.lessonname) AS tb1 GROUP BY studentID HAVING (studentID = @stu) ORDER BY moadel DESC">
            <SelectParameters>
                <asp:SessionParameter Name="Param10" SessionField="schoolid" />
                <asp:SessionParameter Name="Param1" SessionField="schoolid" />
                <asp:Parameter DefaultValue="000000" Name="startdate" />
                <asp:Parameter DefaultValue="999999" Name="enddate" />
                <asp:SessionParameter Name="stu" SessionField="studentid" />
            </SelectParameters>
        </asp:SqlDataSource>
    <asp:SqlDataSource ID="sds_name_on_upbaner" runat="server" 
       ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
       
       SelectCommand="SELECT StudentTable.studentname, SchoolTable.schoolname FROM StudentTable INNER JOIN SchoolTable ON StudentTable.schoolID = SchoolTable.shoolID WHERE (StudentTable.schoolID = @Param1) AND (StudentTable.studentID = @Param2) AND (SchoolTable.shoolID = @Param3)">
        <SelectParameters>
            <asp:SessionParameter Name="Param1" SessionField="schoolid" />
            <asp:SessionParameter Name="Param2" SessionField="studentid" />
            <asp:SessionParameter Name="Param3" SessionField="schoolid" />
        </SelectParameters>
   </asp:SqlDataSource>
    <asp:SqlDataSource ID="sds_rank_ingrade" runat="server" 
       ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
       
       
       SelectCommand="SELECT rank FROM (SELECT Rank() OVER (ORDER BY miangin DESC) AS rank, * FROM (SELECT TOP (100) PERCENT SUM(scoresum * vahed) / SUM(vahed) AS miangin, studentID FROM (SELECT ScoreTable.studentID, AVG(ScoreTable.score) AS scoresum, ScoreTable.lessonID, LessonTable.vahed FROM ScoreTable INNER JOIN LessonTable ON ScoreTable.lessonID = LessonTable.lessonID RIGHT OUTER JOIN StudentTable ON ScoreTable.studentID = StudentTable.studentID WHERE (ScoreTable.schoolID = @sch) AND (LessonTable.schoolID = @sch) AND (StudentTable.schoolID = @sch) AND (StudentTable.grade = @gradep) AND (StudentTable.majorname = @majorp) AND (ScoreTable.scoredate &gt;= @startdate) AND (ScoreTable.scoredate &lt;= @enddate) GROUP BY ScoreTable.studentID, ScoreTable.lessonID, LessonTable.vahed) AS derivedtbl_1_1 GROUP BY studentID ORDER BY miangin DESC) AS derivedtbl_1) AS derivedtbl_1 WHERE studentid = @stdid">
        <SelectParameters>
            <asp:SessionParameter Name="sch" SessionField="schoolid" />
            <asp:Parameter Name="gradep" />
            <asp:Parameter Name="majorp" />
            <asp:Parameter DefaultValue="000000" Name="startdate" />
            <asp:Parameter DefaultValue="999999" Name="enddate" />
            <asp:SessionParameter Name="stdid" SessionField="studentid" />
        </SelectParameters>
   </asp:SqlDataSource>
    <asp:SqlDataSource ID="sds_grade_major_class" runat="server" 
       CancelSelectOnNullParameter="False" 
       ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
       SelectCommand="SELECT grade, majorname, classname FROM StudentTable WHERE (schoolID = @Param1) AND (studentID = @Param2)">
        <SelectParameters>
            <asp:SessionParameter Name="Param1" SessionField="schoolid" />
            <asp:SessionParameter Name="Param2" SessionField="studentid" />
        </SelectParameters>
   </asp:SqlDataSource>
   <asp:SqlDataSource ID="sds_rank_inclass" runat="server" 
       ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
       
       SelectCommand="SELECT rank FROM (SELECT Rank() OVER (ORDER BY miangin DESC) AS rank, * FROM (SELECT TOP (100) PERCENT SUM(scoresum * vahed) / SUM(vahed) AS miangin, studentID FROM (SELECT ScoreTable.studentID, AVG(ScoreTable.score) AS scoresum, ScoreTable.lessonID, LessonTable.vahed FROM ScoreTable INNER JOIN LessonTable ON ScoreTable.lessonID = LessonTable.lessonID RIGHT OUTER JOIN StudentTable ON ScoreTable.studentID = StudentTable.studentID WHERE (ScoreTable.schoolID = @sch) AND (LessonTable.schoolID = @sch) AND (StudentTable.schoolID = @sch) AND (StudentTable.grade = @gradep) AND (StudentTable.majorname = @majorp) AND (StudentTable.classname = @classp) AND (ScoreTable.scoredate &gt;= @startdate) AND (ScoreTable.scoredate &lt;= @enddate) GROUP BY ScoreTable.studentID, ScoreTable.lessonID, LessonTable.vahed) AS derivedtbl_1_1 GROUP BY studentID ORDER BY miangin DESC) AS derivedtbl_1) AS derivedtbl_1 WHERE studentid = @stdid">
       <SelectParameters>
           <asp:SessionParameter Name="sch" SessionField="schoolid" />
           <asp:Parameter Name="gradep" />
           <asp:Parameter Name="majorp" />
           <asp:Parameter Name="classp" />
           <asp:Parameter DefaultValue="000000" Name="startdate" />
           <asp:Parameter DefaultValue="999999" Name="enddate" />
           <asp:SessionParameter Name="stdid" SessionField="studentid" />
       </SelectParameters>
   </asp:SqlDataSource>
    <br />
        <table style="position:relative;bottom:0;width:100%;z-index:999;">
        <tr>
            <td style="background-image: url('images/foot.png')">
                <img alt="" src="images/smandtell.png" /></td>
        </tr>
    </table>
    </form>

    <div id="pleasewaitScreen" class="fullscreen" style="visibility:hidden;">
 <table border="0" cellpadding="0" cellspacing="0" bgcolor="Black">
    <tr>
  <td  style="text-align:center;vertical-align: center; width: 2000px;height:1100px">
   <br/><br/>   
 <img src="./images/wait.png" width="106" height="105" class="swait" />
  </td>
 </tr>
    </table>
</div>
</body>
</html>
