<%@ Page Language="C#" AutoEventWireup="true" CodeFile="removepm.aspx.cs" Inherits="manager_removepm" ValidateRequest="false" %>

<%@ Register assembly="FreeTextBox" namespace="FreeTextBoxControls" tagprefix="FTB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>سامانه اینترنتی نرم افزار مدیریت مدرسه</title>
       
    <script type="text/javascript">
        function openwin() {
        	alert('یک پیام با موفیت حذف گردید');

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
                                                </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="background-image: url('../images/wtm.png'); text-align: center; " 
                                                valign="top" dir="ltr">
                                                <table class="style1">
                                                    <tr>
                                                        <td align="center" dir="rtl" style="text-align: left">
                                                            <asp:Button ID="Button1" runat="server" Font-Names="Tahoma" 
                                                                PostBackUrl="~/manage.aspx" Text="بازگشت" onclick="Button1_Click" />
                                                            &nbsp;&nbsp; &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" dir="rtl">
                                                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                                                AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" 
                                                                onrowdeleted="GridView1_RowDeleted" PageSize="20" Width="800px" 
                                                                CellPadding="4" ForeColor="#333333" GridLines="None">
                                                                <RowStyle BackColor="#E3EAEB" />
                                                                <Columns>
                                                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                                                                        ReadOnly="True" SortExpression="id" Visible="False" />
                                                                    <asp:BoundField DataField="date" HeaderText="تاریخ" SortExpression="date" />
                                                                    <asp:BoundField DataField="title" HeaderText="عنوان پیام" 
                                                                        SortExpression="title">
                                                                        <ItemStyle Width="40%" />
                                                                    </asp:BoundField>
                                                                    <asp:BoundField DataField="studentname" HeaderText="نام دانش آموز" 
                                                                        SortExpression="studentname" />
                                                                    <asp:BoundField DataField="classname" HeaderText="کلاس" 
                                                                        SortExpression="classname" />
                                                                    <asp:BoundField DataField="grade" HeaderText="پایه " SortExpression="grade" />
                                                                    <asp:BoundField DataField="majorname" HeaderText="رشته" 
                                                                        SortExpression="majorname" />
                                                                    <asp:CommandField DeleteText="حذف" ShowDeleteButton="True" />
                                                                </Columns>
                                                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
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
                                        
                                        SelectCommand="SELECT tb_inbox.id, tb_inbox.title, tb_inbox.date, tb_inbox.isread, derivedtbl_1.studentname, derivedtbl_1.classname, derivedtbl_1.grade, derivedtbl_1.majorname FROM (SELECT studentID, studentname, classname, grade, majorname FROM StudentTable WHERE (schoolID = @Param2)) AS derivedtbl_1 RIGHT OUTER JOIN tb_inbox ON derivedtbl_1.studentID = tb_inbox.studentid WHERE (tb_inbox.schoolid = @Param3) AND (tb_inbox.isread = 0) ORDER BY tb_inbox.id DESC" 
                                        DeleteCommand="DELETE FROM tb_inbox WHERE (id = @Param1)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="Param2" SessionField="mschoolid" />
                                            <asp:SessionParameter Name="Param3" SessionField="mschoolid" />
                                        </SelectParameters>
                                        <DeleteParameters>
                                            <asp:Parameter Name="Param1" />
                                        </DeleteParameters>
                                    </asp:SqlDataSource>
                </td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
