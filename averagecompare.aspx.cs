using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using ChartDirector; 

public partial class averagecompare : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["info"] == null)
        {
            Response.Redirect("default.aspx");
        }
        else
        {
            lbl_stname.Text = Session["stname"].ToString();
            lbl_lastv.Text = Session["lastlogin"].ToString();
            lbl_schooname.Text = Session["schoolname"].ToString();
        }
        DateTime dt = DateTime.Now;
        System.Globalization.PersianCalendar pc = new System.Globalization.PersianCalendar();
        if (!Page.IsPostBack)DropDownList1.SelectedIndex = pc.GetMonth(dt) - 2;
        // select year
        
        string goodyear="91";
        if (DropDownList1.SelectedIndex >= 4) goodyear = "90";
        //if (DropDownList1.SelectedIndex <= 2) goodyear = Convert.ToString(int.Parse(pc.GetYear(dt).ToString().Substring(2, 2)));
        //else goodyear = Convert.ToString(int.Parse(pc.GetYear(dt).ToString().Substring(2, 2)) - 1);
        ////
        Label3.Text = " مقایسه معدل نمرات دانش آموز در درس ها - نمودار ماه" + " " + DropDownList1.SelectedItem.Text;
        sds_st_less_ave.SelectParameters["Param8"].DefaultValue = goodyear + DropDownList1.SelectedValue + "01";
        sds_st_less_ave.SelectParameters["Param9"].DefaultValue =goodyear + DropDownList1.SelectedValue + "31";
        IEnumerable i1=sds_st_less_ave.Select(DataSourceSelectArguments.Empty);
        if (i1 == null) return;
        IEnumerator i2 = i1.GetEnumerator();
        ArrayList al_data0 = new ArrayList();
        ArrayList al_data1 = new ArrayList();
        ArrayList al_data2 = new ArrayList();
        ArrayList al_lables = new ArrayList();
        while (i2.MoveNext())
        {
            al_data0.Add(((DataRowView)i2.Current)["Expr1"].ToString());
            al_lables.Add(((DataRowView)i2.Current)["lessonname"].ToString());
            sds_avgclass.SelectParameters["Param3"].DefaultValue = ((DataRowView)i2.Current)["lessonID"].ToString();
            sds_avgclass.SelectParameters["Param4"].DefaultValue = goodyear + DropDownList1.SelectedValue + "01";
            sds_avgclass.SelectParameters["Param5"].DefaultValue = goodyear + DropDownList1.SelectedValue + "31";
            IEnumerable o1 = sds_avgclass.Select(DataSourceSelectArguments.Empty);
            IEnumerator o2 = o1.GetEnumerator();
            o2.MoveNext();
            al_data1.Add(((DataRowView)o2.Current)[0].ToString());
            sds_avg_grade.SelectParameters["Param8"].DefaultValue = ((DataRowView)i2.Current)["lessonID"].ToString();
            sds_avg_grade.SelectParameters["Param1"].DefaultValue = goodyear + DropDownList1.SelectedValue + "01";
            sds_avg_grade.SelectParameters["Param2"].DefaultValue =goodyear + DropDownList1.SelectedValue + "31";
            o1=sds_avg_grade.Select(DataSourceSelectArguments.Empty);
            o2 = o1.GetEnumerator();
            o2.MoveNext();
            al_data2.Add(((DataRowView)o2.Current)[0].ToString());
        }
         
        #region
        // The data for the bar chart
        double[] data0=new double[al_data0.Count];
        for (int i = 0; i < al_data0.Count; i++)
            data0[i] = double.Parse(al_data0[i].ToString()) ;
        double[] data1 = new double[al_data1.Count];
        for (int i = 0; i < al_data1.Count; i++)
            data1[i] = double.Parse(al_data1[i].ToString());
        double[] data2 = new double[al_data2.Count];
        for (int i = 0; i < al_data2.Count; i++)
            data2[i] = double.Parse(al_data2[i].ToString());
        string[] labels = new string[al_lables.Count];
        for (int i = 0; i < al_lables.Count; i++)
            labels[i] = (string)(al_lables[i]);
        // Create a XYChart object of size 540 x 375 pixels
        XYChart c = new XYChart(800, 375);
        c.yAxis().setDateScale(0, 20);
        // Add a title to the chart using 18 pts Times Bold Italic font
        // c.addTitle(1,"نمودار مقایسه میانگین دانش آموز", "tahoma Bold Italic", 12);
        // Set the plotarea at (50, 55) and of 440 x 280 pixels in size. Use a vertical
        // gradient color from light blue (f9f9ff) to blue (6666ff) as background. Set
        // border and grid lines to white (ffffff).
        c.setPlotArea(45, 40, 700, 250, c.linearGradientColor(0, 55, 0, 335, 0xf9f9ff,
            0x6666ff), -1, 0xffffff, 0xffffff);

        // Add a legend box at (50, 28) using horizontal layout. Use 10pts Arial Bold as
        // font, with transparent background.
        c.addLegend(50, 5, false, "tahoma Bold", 10).setBackground(Chart.Transparent);

        // Set the x axis labels
        c.xAxis().setLabels(labels);

        // Draw the ticks between label positions (instead of at label positions)
        c.xAxis().setTickOffset(0.5);

        // Set axis label style to 8pts Arial Bold
        c.xAxis().setLabelStyle("tahoma Bold", 9).setFontAngle(45);
        c.yAxis().setLabelStyle("tahoma Bold", 9);


        // Set axis line width to 2 pixels
        c.xAxis().setWidth(2);
        c.yAxis().setWidth(2);

        // Add axis title
        //c.yAxis().setTitle("میانگین");

        // Add a multi-bar layer with 3 data sets
        BarLayer layer = c.addBarLayer2(Chart.Side);
        layer.addDataSet(data0, 0xff0000, "دانش آموز");
        if (CheckBox1.Checked) layer.addDataSet(data1, 0x00ff00, "کلاس");
        if (CheckBox2.Checked) layer.addDataSet(data2, 0xff7700, "پایه");
        ///////////
        // Use the format "US$ xxx millions" as the bar label
        layer.setAggregateLabelFormat("{value|p2}");

        // Set the bar label font to 10 pts Times Bold Italic/dark red (0x663300)
        layer.setAggregateLabelStyle("Times New Roman Bold", 8, 0x663300).setFontAngle(45) ;

        ///////////

        // Set bar border to transparent. Use glass lighting effect with light direction
        // from left.
        layer.setBorderColor(Chart.Transparent, Chart.glassEffect(Chart.NormalGlare,
            Chart.TopCenter));

        // Configure the bars within a group to touch each others (no gap)
        layer.setBarGap(0.2, Chart.TouchBar);
        //


        // Output the chart
        WebChartViewer1.Image = c.makeWebImage(Chart.PNG);

        //include tool tip for the chart
        WebChartViewer1.ImageMap = c.getHTMLImageMap("", "",
            "title='{xLabel}: {value}'");
        #endregion
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Default.aspx");
    }
    protected void img_logout_Click(object sender, ImageClickEventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Default.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
    }
}
