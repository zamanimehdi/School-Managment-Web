<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sendpm.aspx.cs" Inherits="manager_sendpm" ValidateRequest="false" %>

<%@ Register assembly="FreeTextBox" namespace="FreeTextBoxControls" tagprefix="FTB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>سامانه اینترنتی نرم افزار مدیریت مدرسه</title>
    <style type="text/css">
        .style2
        {
            width: 407px;
        }
        .style3
        {            text-align: left;
        }
        .style4
        {
            width: 100%;
        }
        .style5
        {
        }
        .style6
        {
            width: 249px;
        }
        .style7
        {
            width: 174px;
        }
    </style>
       
    <script type="text/javascript">
                function alert2(){alert('عنوان  و متن پیام نمی تواند خالی باشد');}
                function alert1(){alert('پیام (ها) با موفقیت ارسال شد');}
                function alert3(){alert('هیچ دانش آموزی انتخاب نشده است');}
    </script>
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
                                            <td align="center" style="background-image: url('../images/wtm.png'); text-align: right; " 
                                                valign="top">
                                                <table style="width: 822px" id="tb_freetxtbox" runat="server" visible="False">
                                                    <tr>
                                                        <td style="text-align: left; vertical-align: top;" width="200">
                                                            ارسال به :</td>
                                                        <td dir="rtl" colspan="2">
                                                            <asp:Label ID="lbl_st_list" runat="server" Font-Names="Tahoma" Font-Size="9pt" 
                                                                Width="700px"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style3">
                                                            &nbsp;&nbsp; عنوان پیام&nbsp;</td>
                                                        <td dir="rtl">
                                                            <asp:TextBox ID="txt_title" runat="server" Width="400px" 
                                                                style="margin-right: 11px" MaxLength="49"></asp:TextBox>
                                                        </td>
                                                        <td>
&nbsp;&nbsp;
                                                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="ارسال پیام" 
                                                                Font-Names="Tahoma" Width="120px" />&nbsp;&nbsp;
                                                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="بازگشت" 
                                                                Font-Names="Tahoma" Height="24px" Width="115px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style3">
                                                            &nbsp;&nbsp;&nbsp; متن پیام&nbsp; :</td>
                                                        <td class="style2">
                                                            &nbsp;</td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" colspan="3">
                                                <FTB:FreeTextBox ID="FreeTextBox1" runat="server" Height="280px" 
                                                    TextDirection="RightToLeft" ToolbarBackColor="Silver" 
                                                    ToolbarBackgroundImage="True" Width="760px">
                                                </FTB:FreeTextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="background-image: url('../images/wtm.png'); text-align: center;" 
                                                valign="top">
                                                <asp:SqlDataSource ID="sds_insertpm" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
                                                    InsertCommand="INSERT INTO tb_inbox(schoolid, studentid, title, context, isread, date) VALUES (@Param1, @Param2, @Param3, @Param4, @Param5, @Param6)" 
                                                    SelectCommand="SELECT id FROM tb_inbox WHERE (id = @Param1)">
                                                    <SelectParameters>
                                                        <asp:Parameter Name="Param1" />
                                                    </SelectParameters>
                                                    <InsertParameters>
                                                        <asp:Parameter Name="Param1" />
                                                        <asp:Parameter Name="Param2" />
                                                        <asp:Parameter Name="Param3" />
                                                        <asp:Parameter Name="Param4" />
                                                        <asp:Parameter Name="Param5" />
                                                        <asp:Parameter Name="Param6" />
                                                    </InsertParameters>
                                                </asp:SqlDataSource>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="background-image: url('../images/wtm.png'); " 
                                                valign="top">
                                                        <table id="tb_selectst" class="style4" runat="server">
                                                            <tr>
                                                                <td class="style5" style="text-align: center" colspan="3">
                                                                    پس از انتخاب دانش آموزان بر روی&nbsp; دکمه &quot;ادامه&quot; کلیک کنید<br />
                                                                    <br />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                                        ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
                                                                        SelectCommand="SELECT classname FROM StudentTable WHERE (schoolID = @Param1) GROUP BY classname, grade">
                                                                        <SelectParameters>
                                                                            <asp:SessionParameter Name="Param1" SessionField="mschoolid" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: left" class="style6">
                                                                    انتخاب دانش آموزان پایه</td>
                                                                <td style="text-align: right" class="style7">
                                                                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Tahoma" 
                                                                        onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="150px">
                                                                        <asp:ListItem>پایه اول</asp:ListItem>
                                                                        <asp:ListItem>پایه دوم</asp:ListItem>
                                                                        <asp:ListItem>پایه سوم</asp:ListItem>
                                                                        <asp:ListItem>پایه چهارم</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </td>
                                                                <td style="text-align: right">
                                                                    <asp:Button ID="Button5" runat="server" Font-Names="Tahoma" 
                                                                        onclick="Button5_Click" Text="فیلتر" Width="90px" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: left" class="style6">
                                                                    انتخاب دانش آموزان یک کلاس</td>
                                                                <td style="text-align: right" class="style7">
                                                                    <asp:DropDownList ID="DropDownList2" runat="server" 
                                                                        DataSourceID="SqlDataSource2" DataTextField="classname" 
                                                                        DataValueField="classname" 
                                                                        onselectedindexchanged="DropDownList2_SelectedIndexChanged" Width="150px">
                                                                    </asp:DropDownList>
                                                                </td>
                                                                <td style="text-align: right">
                                                                    <asp:Button ID="Button6" runat="server" Font-Names="Tahoma" 
                                                                        onclick="Button6_Click" Text="فیلتر" Width="90px" />
                                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    <asp:Button ID="Button7" runat="server" Font-Names="Tahoma" 
                                                                        onclick="Button7_Click" Text="ادامه" Width="67px" />
                                                                &nbsp;
                                                                    <asp:Button ID="Button8" runat="server" Font-Names="Tahoma" 
                                                                        onclick="Button8_Click" Text="بازگشت" Width="67px" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" colspan="3">
                                                        <table style="border-width: 2px; border-color: #000000; padding: 2px; margin: 2px; background-color: #008080; color: #FFFFFF;" 
                                                            width="750">
                                                            <tr>
                                                                <td width="50">
                                                                    <asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="True" 
                                                                        oncheckedchanged="CheckBox3_CheckedChanged" Text=" " />
                                                                </td>
                                                                <td width="210">
                                                                    نام دانش آموز</td>
                                                                <td width="60">
                                                                    &nbsp;پایه
                                                                </td>
                                                                <td width="200">
                                                                    نام کلاس</td>
                                                                <td width="200">
                                                                    رشته تحصیلی</td>
                                                            </tr>
                                                        </table>
                                                <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" EnableTheming="True" 
                                                                            ShowFooter="False" ShowHeader="False" onload="DataList2_Load" 
                                                                            onselectedindexchanged="DataList2_SelectedIndexChanged">
                                                    <ItemTemplate>
                                                        <table style="border-width: 2px; border-color: #000000; padding: 2px; margin: 2px; background-color: #EEEEEE;" 
                                                            width="750">
                                                            <tr>
                                                                <td width="50">
                                                                    <asp:CheckBox ID="CheckBox2" runat="server" Text=" " EnableViewState="true" />
                                                                    <asp:Label ID="lbl_studentid" runat="server" Text='<%# Eval("studentID") %>' 
                                                                        Visible="False" ></asp:Label>
                                                                </td>
                                                                <td align="right" width="210">
                                                                    <asp:Label ID="studentnameLabel" runat="server" 
                                                                        Text='<%# Eval("studentname") %>' />
                                                                </td>
                                                                <td align="right" width="60">
                                                                    <asp:Label ID="gradeLabel" runat="server" Text='<%# Eval("grade") %>' 
                                                                         />
                                                                </td>
                                                                <td align="right" width="200">
                                                                    <asp:Label ID="classnameLabel" runat="server" Text='<%# Eval("classname") %>' 
                                                                         />
                                                                </td>
                                                                <td align="right" width="200">
                                                                    <asp:Label ID="majornameLabel" runat="server" Text='<%# Eval("majorname") %>' 
                                                                         />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </ItemTemplate>
                                                </asp:DataList>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" 
                                                style="background-image: url('../images/wtb.png'); width: 840px; height: 33px;" 
                                                valign="top">
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
                                                    
                                                    
                                                    SelectCommand="SELECT studentname, grade, classname, majorname, studentID FROM StudentTable WHERE (schoolID = @Param1) ORDER BY grade, classname, majorname, studentname">
                                                    <SelectParameters>
                                                        <asp:Parameter Name="Param1" />
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
