<%@ Page Language="C#" AutoEventWireup="true" CodeFile="msganswer2.aspx.cs" Inherits="manager_msganswer2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>سامانه اینترنتی نرم افزار مدیریت مدرسه</title>
    <style type="text/css">
        .style1
        {
            height: 20px;
            width: 57px;
        }
        .style2
        {
            text-align: right;
        }
        .style3
        {
            width: 100%;
        }
        </style>
                <script type="text/javascript">
        function alertMe() {
            alert('پاسخ شما با موفقیت ارسال شد');
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" dir="rtl" 
    
    
    style="font-family: tahoma; font-size: 11px; text-align: center; line-height: 20px;">
    <table style="width: 100%; font-family: tahoma; font-size: 12px;" dir="ltr">
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
                <span class="style3" dir="ltr">سیستم مدیریت سامانه اینترنتی برنامه مدیریت مدرسه</span></td>
        </tr>
        <tr>
            <td width="10px">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label4" runat="server" ForeColor="#0066FF"></asp:Label>
            </td>
        </tr>
    </table>
    <div align="center">
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderColor="#E7E7FF" BorderStyle="Solid" BorderWidth="2px" CellPadding="3" 
            CellSpacing="3" DataKeyNames="id" DataSourceID="SqlDataSource1" 
            ForeColor="Black" GridLines="Horizontal" HorizontalAlign="Center" PageSize="8" 
            Width="784px" onselectedindexchanged="GridView1_SelectedIndexChanged1">
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <Columns>
                <asp:CommandField SelectText="انتخاب" ShowSelectButton="True" />
                <asp:BoundField DataField="id" HeaderText="کد" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="studentname" HeaderText="از طرف خانواده" 
                    SortExpression="studentname" />
                <asp:BoundField DataField="grade" HeaderText="پایه" SortExpression="grade" />
                <asp:BoundField DataField="classname" HeaderText="نام کلاس" 
                    SortExpression="classname" />
                <asp:BoundField DataField="majorname" HeaderText="رشته" 
                    SortExpression="majorname" />
                <asp:TemplateField HeaderText="متن پیام">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("familytxt") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <AlternatingRowStyle BackColor="#F7F7F7" />
        </asp:GridView>
    
    </div>
    <center>
                                    <table border="0" cellpadding="0" 
        cellspacing="0" style="width: 840px" 
                                        ID="tb_schoolinfo" runat="server">
                                        <tr>
                                            <td align="right" colspan="2" style="background-repeat: repeat-x; height: 20px; text-align: center;" 
                                                valign="middle">
                                                            <asp:Label ID="lbl_msg" runat="server" ForeColor="Red" 
                                                    style="text-align: center"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="background-repeat: repeat-x; "
                                                valign="middle" class="style1">
                                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="8pt"
                                                    ForeColor="#01235A" Text="ثبت پاسخ"></asp:Label></td>
                                            <td align="right" style="background-image: url('../images/ttop.png'); width: 755px;
                                                background-repeat: repeat-x; height: 20px" valign="top">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" colspan="2" style="background-image: url('../images/wtt.png'); width: 840px;
                                                height: 23px" valign="top">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2" 
                                                style="background-image: url('../images/wtm.png')" valign="top">
                                                
                                                <table class="style2">
                                                    <tr>
                                                        <td width="50">
                                                            &nbsp;</td>
                                                        <td colspan="2" dir="rtl" style="color: #0000FF;" 
                                                            width="600" class="style2">
                                                            پاسخ به پیام انتخاب شده با کد شماره&nbsp;                                                             <asp:Label ID="Label3" runat="server" Text="---"></asp:Label>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td style="text-align: left">
                                                            پاسخ
                                                        </td>
                                                        <td style="text-align: right">
                                                            <asp:TextBox ID="TextBox1" runat="server" Height="106px" TextMode="MultiLine" 
                                                                Width="447px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td style="text-align: left">
                                                            &nbsp;</td>
                                                        <td style="text-align: right">
                                                            <asp:Button ID="Button1" runat="server" Font-Names="Tahoma" Text="ثبت" 
                                                                Width="95px" onclick="Button1_Click" Height="25px" />
                                                        &nbsp;
                <asp:Button ID="Button2" runat="server" Font-Names="Tahoma" Font-Size="9pt" 
                    PostBackUrl="~/manage.aspx" Text="بازگشت" Height="25px" Width="95px" />
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td style="text-align: center" colspan="2">
                                                            &nbsp;</td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
</body>

                                                </td>
                                        </tr>
                                        <tr>
                                            <td align="right" colspan="2" style="background-image: url('../images/wtb.png'); width: 840px;
                                                height: 33px" valign="top">
                                            </td>
                                        </tr>
                                    </table>
                                    </center>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
        
    
    SelectCommand="SELECT std.studentname, std.grade, std.classname, std.majorname, tb_relation.familytxt, tb_relation.id, tb_relation.schoolid FROM tb_relation INNER JOIN (SELECT studentname, studentID, grade, classname, majorname FROM StudentTable WHERE (schoolID = @Param2)) AS std ON tb_relation.studentid = std.studentID WHERE (tb_relation.isreply = 1) AND (tb_relation.showanswer = 0) AND (tb_relation.teacherid = - 1) AND (tb_relation.schoolid = @Param1) ORDER BY tb_relation.datetime DESC">
        <SelectParameters>
            <asp:SessionParameter Name="Param2" SessionField="mschoolid" />
            <asp:SessionParameter Name="Param1" SessionField="mschoolid" />
        </SelectParameters>
    </asp:SqlDataSource>
</body>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
    SelectCommand="SELECT ID FROM userPassTable WHERE (ID = @Param1)" 
    UpdateCommand="UPDATE tb_relation SET a_datetime = @Param6, answertxt = @Param7, showanswer = @Param8 WHERE (id = @Param1)">
    <SelectParameters>
        <asp:Parameter Name="Param1" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="Param6" />
        <asp:Parameter Name="Param7" />
        <asp:Parameter Name="Param8" />
        <asp:Parameter Name="Param1" />
    </UpdateParameters>
</asp:SqlDataSource>
    </form>

</html>
