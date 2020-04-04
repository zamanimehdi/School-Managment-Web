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

public partial class progress : System.Web.UI.Page
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
            ///
        }
        DateTime dt = DateTime.Now;
        System.Globalization.PersianCalendar pc = new System.Globalization.PersianCalendar();
        string cyear = "90";
        string nyear = "91";
        string[] dates = { cyear + "04", cyear + "05", cyear + "06",
                           cyear + "07", cyear + "08", cyear + "09",
                           cyear + "10", cyear + "11", cyear + "12",
                           nyear + "01", nyear + "02", nyear + "03" };
        ArrayList al_data0 = new ArrayList();
        ArrayList al_data1 = new ArrayList();
        ArrayList al_data2 = new ArrayList();
        ArrayList al_lables = new ArrayList();
        bool seefirst = false;
        foreach (string tmp in dates)
        {
            //student
            sds_st_less_ave.SelectParameters["Param8"].DefaultValue = tmp + "01";
            sds_st_less_ave.SelectParameters["Param9"].DefaultValue = tmp + "31";
            IEnumerable i1 = sds_st_less_ave.Select(DataSourceSelectArguments.Empty);
            if (i1 == null) continue;
            IEnumerator i2 = i1.GetEnumerator();
            i2.MoveNext();
            bool strudenthasavg = (((DataRowView)i2.Current)["Expr1"].ToString() != "");
            if (strudenthasavg)
            {
                seefirst = true;
                al_data0.Add(((DataRowView)i2.Current)["Expr1"].ToString());

            }
            if (!strudenthasavg && seefirst) al_data0.Add(Chart.NoValue);

            if (seefirst) al_lables.Add(datetime_conv(tmp));
            //// class
            if (strudenthasavg)
            {
                sds_avgclass.SelectParameters["Param4"].DefaultValue = tmp + "01";
                sds_avgclass.SelectParameters["Param5"].DefaultValue = tmp + "31";
                i1 = sds_avgclass.Select(DataSourceSelectArguments.Empty);
                i2 = i1.GetEnumerator();
                if (i2.MoveNext())
                    if (((DataRowView)i2.Current)["Expr1"].ToString() != "")
                        al_data1.Add(((DataRowView)i2.Current)["Expr1"].ToString());
            }
            if (!strudenthasavg && seefirst) al_data1.Add(Chart.NoValue);
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
        ///
        c.yAxis().setTitle("معدل", "tahoma Bold", 12);


        // Add axis title
        //c.yAxis().setTitle("میانگین");

        // Add a multi-bar layer with 3 data sets
        LineLayer layer = c.addLineLayer(Chart.Side);
        layer.addDataSet(data0, 0xff0000, "دانش آموز").setDataSymbol(Chart.GlassSphere2Shape, 11);
        layer.addDataSet(data1, 0x00ff00, "کلاس").setDataSymbol(Chart.GlassSphere2Shape, 11);
       // if (CheckBox2.Checked) layer.addDataSet(data2, 0xff7700, "پایه");

        layer.setLineWidth(3);
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
        //layer.setBarGap(0.2, Chart.TouchBar);
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
    private string datetime_conv(string str)
    {
        if (str.Substring(2, 2) == "01")
            return "فروردین" + " " + str.Substring(0, 2);
        if (str.Substring(2, 2) == "02")
            return "اردیبهشت" + " " + str.Substring(0, 2);
        if (str.Substring(2, 2) == "03")
            return "خرداد" + " " + str.Substring(0, 2);
        if (str.Substring(2, 2) == "04")
            return "تیر" + " " + str.Substring(0, 2);
        if (str.Substring(2, 2) == "05")
            return "مرداد" + " " + str.Substring(0, 2);
        if (str.Substring(2, 2) == "06")
            return "شهریور" + " " + str.Substring(0, 2);
        if (str.Substring(2, 2) == "07")
            return "مهر" + " " + str.Substring(0, 2);
        if (str.Substring(2, 2) == "08")
            return "آبان" + " " + str.Substring(0, 2);
        if (str.Substring(2, 2) == "09")
            return "آذر" + " " + str.Substring(0, 2);
        if (str.Substring(2, 2) == "10")
            return "دی" + " " + str.Substring(0, 2);
        if (str.Substring(2, 2) == "11")
            return "بهمن" + " " + str.Substring(0, 2);
        if (str.Substring(2, 2) == "12")
            return "اسفند" + " " + str.Substring(0, 2);
        return "خطا";
    }
}
