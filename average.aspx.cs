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

public partial class average: System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (txt_y1.Text == "") txt_y1.Text = Context.Request.QueryString["sdate"].ToString().Substring(0, 2);
            if (txt_m1.Text == "") txt_m1.Text = Context.Request.QueryString["sdate"].ToString().Substring(2, 2);
            if (txt_d1.Text == "") txt_d1.Text = Context.Request.QueryString["sdate"].ToString().Substring(4, 2);
            if (txt_y2.Text == "") txt_y2.Text = Context.Request.QueryString["edate"].ToString().Substring(0, 2);
            if (txt_m2.Text == "") txt_m2.Text = Context.Request.QueryString["edate"].ToString().Substring(2, 2);
            if (txt_d2.Text == "") txt_d2.Text = Context.Request.QueryString["edate"].ToString().Substring(4, 2);
        }
        catch
        {
        }
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
    protected void Button1_Click(object sender, EventArgs e)
    {

        DateTime dt = DateTime.Now;
        System.Globalization.PersianCalendar pc = new System.Globalization.PersianCalendar();
        string year = "";
        if (pc.GetMonth(dt) <= 4)
            year = Convert.ToString(int.Parse(pc.GetYear(dt).ToString().Substring(2, 2)) - 1);
        else
            year = Convert.ToString(int.Parse(pc.GetYear(dt).ToString().Substring(2, 2)));

        string datestart = (txt_y1.Text == "" ? year : (txt_y1.Text.Length == 1 ? "0" : "") + txt_y1.Text) +
                           (txt_m1.Text == "" ? "01" : (txt_m1.Text.Length == 1 ? "0" : "") + txt_m1.Text) +
                           (txt_d1.Text == "" ? "01" : (txt_d1.Text.Length == 1 ? "0" : "") + txt_d1.Text);
        string dateend = (txt_y2.Text == "" ? Convert.ToString(int.Parse(year) + 1) : (txt_y2.Text.Length == 1 ? "0" : "") + txt_y2.Text) +
                           (txt_m2.Text == "" ? "12" : (txt_m2.Text.Length == 1 ? "0" : "") + txt_m2.Text) +
                           (txt_d2.Text == "" ? "31" : (txt_d2.Text.Length == 1 ? "0" : "") + txt_d2.Text);

        /*txt_y1.Text = datestart.Substring(0, 2);
        txt_m1.Text = datestart.Substring(2, 2);
        txt_d1.Text = datestart.Substring(4, 2);
        txt_y2.Text = dateend.Substring(0, 2);
        txt_m2.Text = dateend.Substring(2, 2);
        txt_d2.Text = dateend.Substring(4, 2);
*/
        Context.Response.Redirect("~/average.aspx?sdate=" + datestart + "&edate=" + dateend);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Context.Response.Redirect("~/average.aspx");
    }
    protected void sds_avg_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.AffectedRows==0)
        {
            Context.Response.Redirect("~/studentinformation.aspx?noavg=yes");
        }
    }
}
