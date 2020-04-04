<%@ Page Language="C#" AutoEventWireup="true" CodeFile="print_scorelist.aspx.cs" Inherits="print_scorelist" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head id="Head1" runat="server">
     <title>سامانه اینترنتی نرم افزار مدیریت مدرسه</title>
       <script type="text/javascript">
        function alertMe() {
            window.print();
        }
    </script>
    <style type="text/css">
        #form1
        {
            text-align: center;
        }
    </style>
    </head><body style="padding-right: 0px; padding-left: 0px; font-size: 9pt; padding-bottom: 0px; margin: 0px; padding-top: 0px; font-family: tahoma;"><form id="form1" runat="server">
   <center>
                                                                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="sds_scores" 
                                                                            
        onrowdatabound="GridView2_RowDataBound" EnableTheming="True" 
        style="font-size: 8pt" onload="GridView2_Load">
                                                                            <RowStyle Font-Underline="False" HorizontalAlign="Center" 
                                                                                VerticalAlign="Middle" Wrap="True" />
                                                                            <Columns>
                                                                                <asp:BoundField DataField="name_hamahang" SortExpression="name_hamahang" />
                                                                                <asp:BoundField DataField="lessonname" HeaderText="نام درس" 
                                                                                    SortExpression="lessonname" />
                                                                                <asp:TemplateField HeaderText="تاریخ امتحان">
                                                                                    <ItemTemplate>
                                                                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("scoredate") %>'></asp:Label>
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateField>
                                                                                <asp:BoundField DataField="score" DataFormatString="{0:f2}" HeaderText="_          نمره          _" 
                                                                                    SortExpression="score" />
                                                                                <asp:BoundField DataField="avgclass" HeaderText="میانگین کلاس" 
                                                                                    SortExpression="avgclass" DataFormatString="{0:f2}" ReadOnly="True" />
                                                                                <asp:BoundField DataField="maxclass" DataFormatString="{0:f2}" 
                                                                                    HeaderText="بیشترین نمره" ReadOnly="True" SortExpression="maxclass" />
                                                                                <asp:BoundField DataField="minclass" DataFormatString="{0:f2}" 
                                                                                    HeaderText="کمترین نمره" ReadOnly="True" SortExpression="minclass" />
                                                                                <asp:BoundField DataField="countclass" 
                                                                                    HeaderText="تعداد دانش آموز" ReadOnly="True" SortExpression="countclass" />
                                                                                <asp:TemplateField 
                                                                                    HeaderText="مقایسه با کلاس">
                                                                                    <ItemTemplate>
                                                                                        <table style="width: 100%">
                                                                                            <tr>
                                                                                                <td style="text-align: left">
                                                                                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:Image ID="Image1" runat="server" />
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                        &nbsp;
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateField>
                                                                            </Columns>
                                                                            <PagerStyle 
                                                                                Wrap="False" />
                                                                            <EmptyDataTemplate>
                                                                                <table align="center" 
                                                                                    style="width: 100%; text-align: center; vertical-align: middle;">
                                                                                    <tr>
                                                                                        <td align="center">
                                                                                            <br />
                                                                                            <br />
                                                                                            <table style="border-width: 2px; color: #000080; background-color: #EBE8FF; border-style: double" 
                                                                                                width="300">
                                                                                                <tr>
                                                                                                    <td align="center" width="300">
                                                                                                        نمره ای در سیستم ثبت نشده است</td>
                                                                                                </tr>
                                                                                            </table>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                                <br />
                                                                                <br />
                                                                            </EmptyDataTemplate>
                                                                            <HeaderStyle 
                                                                                Font-Names="Tahoma" Font-Size="12px" />
                                                                        </asp:GridView>
                                                                        </center>
    <asp:SqlDataSource ID="sds_scores" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
        
        
        SelectCommand="SELECT ScoreTable.scoredate, ScoreTable.score, ScoreTable.testID, derivedtbl_1.avgclass, derivedtbl_1.maxclass, derivedtbl_1.minclass, derivedtbl_1.countclass, derivedtbl_2.name_hamahang, derivedtbl_3.lessonname FROM ScoreTable INNER JOIN (SELECT scoredate, AVG(score) AS avgclass, testID, MAX(score) AS maxclass, MIN(score) AS minclass, COUNT(score) AS countclass FROM ScoreTable AS ScoreTable_1 WHERE (schoolID = @Param1) GROUP BY scoredate, testID) AS derivedtbl_1 ON ScoreTable.testID = derivedtbl_1.testID INNER JOIN (SELECT lessonID, lessonname FROM LessonTable WHERE (schoolID = @Param3) GROUP BY lessonname, lessonID) AS derivedtbl_3 ON ScoreTable.lessonID = derivedtbl_3.lessonID LEFT OUTER JOIN (SELECT testid, name_hamahang FROM hamahang WHERE (schoolID = @Param4)) AS derivedtbl_2 ON ScoreTable.testID = derivedtbl_2.testid WHERE (ScoreTable.schoolID = @Param1) AND (ScoreTable.studentID = @Param2) ORDER BY ScoreTable.scoredate DESC">
        <SelectParameters>
            <asp:SessionParameter Name="Param1" SessionField="schoolid" />
            <asp:SessionParameter Name="Param3" SessionField="schoolid" />
            <asp:SessionParameter Name="Param4" SessionField="schoolid" />
            <asp:SessionParameter Name="Param2" SessionField="studentid" />
        </SelectParameters>
    </asp:SqlDataSource>
        <asp:SqlDataSource ID="sds_dars" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMConnectionString %>" 
        SelectCommand="SELECT DISTINCT LessonTable.lessonname FROM ScoreTable INNER JOIN LessonTable ON ScoreTable.lessonID = LessonTable.lessonID WHERE (ScoreTable.schoolID = @Param1) AND (ScoreTable.studentID = @Param2) AND (LessonTable.schoolID = @Param3)">
            <SelectParameters>
                <asp:SessionParameter Name="Param1" SessionField="schoolid" />
                <asp:SessionParameter Name="Param2" SessionField="studentid" />
                <asp:SessionParameter Name="Param3" SessionField="schoolid" />
            </SelectParameters>
    </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="sds_schoolInfo" runat="server" ConnectionString="<%$ ConnectionStrings:SMConnectionString %>"
            SelectCommand="SELECT schoolname, schooltell, schoolAdres, schollStatement, state, lastUpdate FROM SchoolTable WHERE (shoolID = @schoolID)">
            <SelectParameters>
                <asp:Parameter Name="schoolID" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sds_studentInfo" runat="server" ConnectionString="<%$ ConnectionStrings:SMConnectionString %>"
            SelectCommand="SELECT schoolID, studentID, studentname, grade, classname, majorname, idnumber, fathername, address, tell, classID FROM StudentTable WHERE (schoolID = @schoolID) AND (studentID = @stID)">
            <SelectParameters>
                <asp:SessionParameter Name="schoolID" SessionField="schoolid" />
                <asp:SessionParameter Name="stID" SessionField="studentid" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;
                        </form>
</body>
</html>
