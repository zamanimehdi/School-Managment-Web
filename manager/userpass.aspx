<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userpass.aspx.cs" Inherits="manager_userpass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>سامانه اینترنتی نرم افزار مدیریت مدرسه</title>
       <script type="text/javascript">
        function alertMe() {
            window.print();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    <center>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Font-Names="Tahoma" 
            Font-Size="9pt" Width="600px" CellPadding="5" onload="GridView1_Load">
            <Columns>
                <asp:BoundField DataField="lastView" HeaderText="آخرین بازدید" 
                    SortExpression="lastView" />
                <asp:BoundField DataField="pass" HeaderText="کلمه عبور" SortExpression="pass" />
                <asp:BoundField DataField="username" HeaderText="نام کاربری" 
                    SortExpression="username" />
                <asp:BoundField DataField="studentname" HeaderText="نام دانش آموز" 
                    SortExpression="studentname" />
                <asp:BoundField DataField="classname" HeaderText="نام کلاس" 
                    SortExpression="classname" />
                <asp:BoundField DataField="grade" HeaderText="پایه" SortExpression="grade" />
            </Columns>
        </asp:GridView>
    </center>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
        
        
        
        SelectCommand="SELECT derivedtbl_1.username, userPassTable.pass, userPassTable.lastView, derivedtbl_1.studentname, derivedtbl_1.classname, derivedtbl_1.grade FROM (SELECT CONVERT (bigint, CONVERT (varchar, schoolID) + CONVERT (varchar, studentID)) AS username, grade, classname, studentname FROM StudentTable WHERE (schoolID = @Param1)) AS derivedtbl_1 LEFT OUTER JOIN userPassTable ON derivedtbl_1.username = userPassTable.usreName ORDER BY derivedtbl_1.grade, derivedtbl_1.classname, derivedtbl_1.studentname, derivedtbl_1.username, userPassTable.lastView DESC">
        <SelectParameters>
            <asp:SessionParameter Name="Param1" SessionField="mschoolid" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
