<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lastview.aspx.cs" Inherits="manager_lastview" ValidateRequest="false" %>

<%@ Register assembly="FreeTextBox" namespace="FreeTextBoxControls" tagprefix="FTB" %>

<%@ Register assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>سامانه اینترنتی نرم افزار مدیریت مدرسه</title>
       
    <script type="text/javascript">
        function openwin() {
        	newwindow=window.open('../studentinformation.aspx','صفحه شخصی دانش آموز انتخاب شده');
	        if (window.focus) {newwindow.focus()}

        }
function Button2_onclick() {

}

    </script>
    
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
    </style>
    </head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <table style="width: 100%; font-family: tahoma; font-size: 12px;">
        <tr>
            <td style="border-color: #C2C8EF; border-style: none; color: #000000; text-align: center; font-size: 10px;" 
                width="10px">
                                                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                                                ImageUrl="~/images/close.png"  onmouseover="this.style.opacity=0.7;"
                                                                                                onmouseout="this.style.opacity=1;" onclick="ImageButton1_Click" 
                                                                 />
                                                            <br />
                                                            خروج</td>
            <td style="background-color: #ECE9FE; border-color: #C2C8EF; border-style: double; color: #000000;">
                <span class="style3">سیستم مدیریت سامانه اینترنتی برنامه مدیریت مدرسه</span></td>
        </tr>
        <tr>
            <td width="10px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
        <table align="center" style="text-align: center; font-family: tahoma;" >
            <tr align="char">
                <td width="900" dir="rtl">
                                
                                    <table border="0" cellpadding="0" cellspacing="0" style="width: 840px" 
                                        ID="tb_schoolinfo0" runat="server" visible="True">
                                        <tr>
                                            <td align="right" style="width: 840px; height: 23px; background-image: url('../images/wtt.png');"
                                                valign="top">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="background-image: url('../images/wtm.png'); text-align: center; " 
                                                valign="top" dir="ltr">
                                                <table class="style1">
                                                    <tr>
                                                        <td align="center" dir="rtl">
                                                            <table style="width: 100%">
                                                                <tr>
                                                                    <td style="text-align: center; font-size: 12px; vertical-align: middle;">
                                                                        &nbsp;نمایش 30 بازدید کننده آخر<br />
                                                                    </td>
                                                                    <td style="text-align: center" width="100">
                                                            <asp:Button ID="Button1" runat="server" Font-Names="Tahoma" 
                                                                PostBackUrl="~/manage.aspx" Text="بازگشت" Height="26px" />
                                                                        <br />
                                                                        <br />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                    CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" 
                                                    GridLines="None" Width="750px" style="text-align: center" Font-Overline="False" 
                                                                Font-Size="12px" PageSize="30">
                                                    <RowStyle BackColor="#E3EAEB" />
                                                    <Columns>
                                                        <asp:BoundField DataField="studentname" HeaderText="دانش آموز" 
                                                            SortExpression="studentname" />
                                                        <asp:BoundField DataField="grade" HeaderText="پایه" SortExpression="grade" />
                                                        <asp:BoundField DataField="classname" HeaderText="کلاس" 
                                                            SortExpression="classname" />
                                                        <asp:BoundField DataField="majorname" HeaderText="رشته" 
                                                            SortExpression="majorname" />
                                                        <asp:BoundField DataField="lastView" HeaderText="تاریخ و ساعت" 
                                                            SortExpression="lastView" />
                                                    </Columns>
                                                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                                    <EmptyDataTemplate>
                                                        تا کنون&nbsp; کسی به صفحه شخصی خود رجوع نکرده است
                                                    </EmptyDataTemplate>
                                                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                    <EditRowStyle BackColor="#7C6F57" />
                                                    <AlternatingRowStyle BackColor="White" />
                                                </asp:GridView>
                                                            &nbsp;&nbsp; &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" dir="rtl">
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" 
                                                style="background-image: url('../images/wtb.png'); width: 840px; height: 33px; font-family: tahoma; font-size: 12px;" 
                                                valign="top">
                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
                                                    
                                                    
                                                    
                                                    
                                                    SelectCommand="SELECT TOP (30) StudentTable.studentname, StudentTable.grade, StudentTable.classname, StudentTable.majorname, derivedtbl_1.lastView, StudentTable.schoolID FROM (SELECT CONVERT (INT, SUBSTRING(usreName, 5, { fn LENGTH(usreName) } - 4)) AS Expr1, lastView FROM userPassTable WHERE (usreName LIKE @Param2 + N'%')) AS derivedtbl_1 INNER JOIN StudentTable ON derivedtbl_1.Expr1 = StudentTable.studentID WHERE (derivedtbl_1.lastView IS NOT NULL) AND (StudentTable.schoolID = @Param1) ORDER BY derivedtbl_1.lastView DESC, StudentTable.studentname">
                                                    <SelectParameters>
                                                        <asp:SessionParameter Name="Param2" SessionField="mschoolid" />
                                                        <asp:SessionParameter DefaultValue="" Name="Param1" SessionField="mschoolid" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </td>
                                        </tr>
                                    </table>
                </td>
            </tr>
            <tr>
                <td width="900" dir="rtl">
                                
                                    &nbsp;</td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
