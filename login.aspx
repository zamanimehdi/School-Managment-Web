<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head runat="server">
<script>
function tb_hide() {
   document.getElementById("hidethis").style.display = 'none';
   document.getElementById("div_userpass").style.display = '';
   
}
function tb_show() {
   document.getElementById("hidethis").style.display = '';
   document.getElementById("div_userpass").style.display = 'none';
}
</script>

    <title>ورود به سامانه </title>
    <style type="text/css">
        .transparent {
	filter:alpha(opacity=80);
	-moz-opacity:0.8;
	-khtml-opacity: 0.8;
	opacity: 0.8;
}

        .style1
        {
            color: #FFFFFF;
            font-weight: bold;
        }

        </style>
</head>
<body onload="tb_hide()" style="font-size: 10pt; background-attachment: fixed; background-image: url(images/loginbg.jpg); background-repeat: repeat-x; font-family: Tahoma; padding-right: 0px; padding-left: 0px; padding-bottom: 0px; margin: 0px; padding-top: 0px;">
    <form id="form1" runat="server" dir="rtl">
    <div align="center">
        <table border="0" cellpadding="0" cellspacing="0" style="background-image: url(images/top.png);
            width: 100%; height: 51px">
            <tr>
                <td style="padding-right: 15px;">
                    <img src="images/maintitle.png" style="text-align: center; float: right" /></td>
                <td align="right" style="width: 165px">
                   <a href="http://msmsoft.ir/" style="border-width: 0px"> <img alt="" border="0" src="images/logo.png" /></a></td>
            </tr>
        </table>
    
    </div>
    <center>
        &nbsp;</center>
        <center>
            &nbsp;</center>
        <center>
            <table id="tb_h" runat="server">
                <tr>
                    <td height="65">
                        &nbsp;</td>
                </tr>
            </table>
    </center>
        <center>
        <div class="transparent"  
                
                
                
                style="padding: 2px; margin: 2px; z-index: 101; left: 281px; width: 450px; top: 226px;
            height: 300px; background-color: #DBF0F0; border-right: #ffffff 2px solid; border-top: #ffffff 2px solid; border-left: #ffffff 2px solid; border-bottom: #ffffff 2px solid; border-color: #333333;" 
                id="div_userpass">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                <tr>
                    <td align="center" style="width: 100%; height: 75px" valign="top">
                        <img src="images/logintit.jpg" /></td>
                </tr>
            </table>
            <br />
            &nbsp;<table border="0" cellpadding="0" cellspacing="0" style="width: 300px">
                <tr>
                    <td align="center" style="width: 300px; height: 25px" valign="middle">
                        <asp:Label ID="Label2" runat="server" Font-Bold="False" 
                Text="مدیـریت ســــایـت"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center" style="width: 300px; height: 25px" valign="middle">
                        <img src="images/usrname.png" />
                        <asp:TextBox ID="TextBox_userName" runat="server" BorderColor="#000099" 
                        BorderStyle="Solid" BorderWidth="1px" Height="20px" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="center" style="width: 300px; height: 25px" valign="middle">
                        <img src="images/pas.png" />
                    <asp:TextBox ID="TextBox_Password" runat="server" BorderColor="#000099" 
                        BorderStyle="Solid" BorderWidth="1px" Height="20px" TextMode="Password" 
                        Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="right" style="width: 300px; height: 25px" valign="middle">
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 300px; height: 25px; text-align: left;" 
                        valign="middle">
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/login.png" 
                            OnClick="Button1_Click" style="height: 25px" onclientclick="tb_show()" onmouseover="this.style.opacity=0.7;"
                                                                                                onmouseout="this.style.opacity=1;"/>
                    </td>
                </tr>
            </table>
            <br />
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label><br />
        </div>
        
    <br />
    <table id="hidethis" visible="True">
                <tr>
                    <td class="style1" height="120" style="vertical-align: bottom">
                        لطفا صبر کنید . . .</td>
                </tr>
            </table></center>
    <asp:SqlDataSource ID="sds_done" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
        SelectCommand="SELECT state FROM SchoolTable WHERE (shoolID = @Param1)">
        <SelectParameters>
            <asp:Parameter Name="Param1" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sds_login" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
        SelectCommand="SELECT pass, shoolID FROM SchoolTable WHERE (shoolID = @Param1)" 
        
        
        UpdateCommand="UPDATE userPassTable SET lastView = @lastV WHERE (usreName = @user )">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox_userName" Name="Param1" 
                PropertyName="Text" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="lastV" />
            <asp:Parameter Name="user" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
