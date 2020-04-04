<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginas.aspx.cs" Inherits="manager_loginas" ValidateRequest="false" %>

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

    </script>
    
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
    </style>
    </head>
<body style="text-align: center">
    <form id="form1" runat="server" style="font-family: tahoma; font-size: 13px;">
    <table style="width: 100%; font-family: tahoma; font-size: 12px;">
        <tr>
            <td style="border-color: #C2C8EF; border-style: none; color: #000000; text-align: center; font-size: 10px;" 
                width="10px">
                                                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                                                ImageUrl="~/images/close.png"  onmouseover="this.style.opacity=0.7;"
                                                                                                onmouseout="this.style.opacity=1;" 
                                                                onclick="ImageButton1_Click" />
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
                                                        <td align="center" dir="rtl" style="text-align: left">
                                                            <table style="width: 100%">
                                                                <tr>
                                                                    <td style="text-align: right; font-size: 12px; vertical-align: middle;">
                                                                        &nbsp;&nbsp; جستجو بر اساس نام دانشجو
                                                                        <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" 
                                                                            ontextchanged="TextBox1_TextChanged"></asp:TextBox>
&nbsp;<input id="Button2" style="font-family: tahoma" type="button" value="جستجو" onclick="return Button2_onclick()" />&nbsp;
                                                                        </td>
                                                                    <td style="text-align: center" width="100">
                                                            <asp:Button ID="Button1" runat="server" Font-Names="Tahoma" 
                                                                PostBackUrl="~/manage.aspx" Text="بازگشت" Height="26px" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <asp:HiddenField ID="HiddenField1" runat="server" />
                                                            &nbsp;&nbsp; &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" dir="rtl">
                                                            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
                                                                AutoGenerateColumns="False" DataKeyNames="studentID" 
                                                                DataSourceID="SqlDataSource1" 
                                                                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="664px" 
                                                                CellPadding="4" ForeColor="#333333" GridLines="None">
                                                                <RowStyle BackColor="#E3EAEB" />
                                                                <Columns>
                                                                    <asp:CommandField SelectText="انتخاب" ShowSelectButton="True"/>
                                                                    <asp:BoundField DataField="studentID" HeaderText="studentID" 
                                                                        SortExpression="studentID" Visible="False" />
                                                                    <asp:BoundField DataField="studentname" HeaderText="دانش آموز" 
                                                                        SortExpression="studentname">
                                                                        <ItemStyle HorizontalAlign="Right" />
                                                                    </asp:BoundField>
                                                                    <asp:BoundField DataField="grade" HeaderText="پایه" SortExpression="grade" />
                                                                    <asp:BoundField DataField="classname" HeaderText="کلاس" 
                                                                        SortExpression="classname" />
                                                                    <asp:BoundField DataField="majorname" HeaderText="رشته" 
                                                                        SortExpression="majorname" />
                                                                </Columns>
                                                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                                                <EmptyDataTemplate>
                                                                    <table style="width: 100%">
                                                                        <tr>
                                                                            <td style="font-size: 10pt">
                                                                                هیچ دانش آموزی انتخاب نشده است<br />
                                                                                دانش آموز مورد نظرتان را جستجو کنید</td>
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
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" 
                                                style="background-image: url('../images/wtb.png'); width: 840px; height: 33px;" 
                                                valign="top">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                </td>
            </tr>
            <tr>
                <td width="900" dir="rtl">
                                
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
                                        
                                        
                                        
                                        SelectCommand="SELECT studentID, studentname, grade, classname, majorname FROM StudentTable WHERE ((schoolID = @Param1) AND (studentname LIKE N'%' + @Param2 + N'%')) OR ((schoolID = @Param1) AND (studentname LIKE N'%' + @Param3 + N'%'))ORDER BY grade, classname, studentname">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="Param1" SessionField="mschoolid" />
                                            <asp:Parameter DefaultValue="" Name="Param2" />
                                            <asp:Parameter DefaultValue="" Name="Param3" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                </td>
            </tr>
            </table>
    
    </div>
    <asp:SqlDataSource ID="sds_login" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
        SelectCommand="SELECT usreName, pass, lastView FROM userPassTable WHERE (usreName = @user )" 
        
        UpdateCommand="UPDATE userPassTable SET lastView = @lastV WHERE (usreName = @user )">
        <SelectParameters>
            <asp:Parameter Name="user" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="lastV" />
            <asp:Parameter Name="user" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
