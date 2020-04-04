<%@ Page Language="C#" AutoEventWireup="true" CodeFile="list_school_full.aspx.cs" Inherits="manager_list_school_full" %>

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
            Font-Size="9pt" Width="1000px" CellPadding="5" onload="GridView1_Load" 
            style="text-align: right">
            <Columns>
                <asp:TemplateField HeaderText="پاسخ">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("answertxt") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Width="300px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="پیام ارسال شده">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("familytxt") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="400px" />
                </asp:TemplateField>
                <asp:BoundField DataField="majorname" HeaderText="رشته" 
                    SortExpression="majorname" />
                <asp:BoundField DataField="grade" HeaderText="پایه" SortExpression="grade" />
                <asp:BoundField DataField="classname" HeaderText="نام کلاس" 
                    SortExpression="classname" />
                <asp:BoundField DataField="studentname" HeaderText="از طرف خانواده" 
                    SortExpression="studentname">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="200px" />
                </asp:BoundField>
                <asp:BoundField DataField="datetime" HeaderText="تاریخ" 
                    SortExpression="datetime" />
                <asp:BoundField DataField="id" HeaderText="کد" InsertVisible="False" 
                    SortExpression="id" />
            </Columns>
            <EmptyDataTemplate>
                هیچ پیامی&nbsp;وجود ندارد
            </EmptyDataTemplate>
        </asp:GridView>
    </center>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
        
        
        
        
        
        SelectCommand="SELECT std.studentname, std.grade, std.classname, std.majorname, tb_relation.familytxt, tb_relation.id, tb_relation.datetime, tb_relation.answertxt FROM tb_relation INNER JOIN (SELECT studentname, studentID, grade, classname, majorname FROM StudentTable WHERE (schoolID = @Param2)) AS std ON tb_relation.studentid = std.studentID WHERE (tb_relation.isreply = 1) AND (tb_relation.showanswer = 1) AND (tb_relation.teacherid = - 1) AND (tb_relation.schoolid = @Param1) ORDER BY tb_relation.datetime DESC">
        <SelectParameters>
            <asp:SessionParameter Name="Param2" SessionField="mschoolid" />
            <asp:SessionParameter Name="Param1" SessionField="mschoolid" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
