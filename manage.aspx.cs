using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class manage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["mschoolid"] == null) Context.Response.Redirect("~/login.aspx");
        if (Session["allpm"] == null)
            td_payam_koli.Visible = false;
        else
            td_payam_koli.Visible = true;
        IEnumerable i1=SqlDataSource2.Select(DataSourceSelectArguments.Empty);
        IEnumerator i2 = i1.GetEnumerator();
        if (i2.MoveNext())
        {
            if (((DataRowView)i2.Current)[0].ToString() == "0")
            {
                Label2.Text = "هیچ  پیام جدیدی از سوی خانواده ها ارسال نشده است";
                return;
            }
            Label2.Text = "تعداد ";
            Label2.Text += ((DataRowView)i2.Current)[0].ToString();
            Label2.Text += " " + "پیام پاسخ داده نشده وجود دارد" + "<br>" + "با استفاده از بخش " +" "
                +"<strong>" +
                "چاپ پیام های خانواده‌ها" + "</strong>" + " اقدام به پرینت پیام ها نموده و پس از اخذ پاسخ با استفاده از بخش  " +
                "<strong>" + "پاسخ به پیام‌ها" + "</strong>" + " اقدام به ارسال پاسخ نمایید";
            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        td_payam_koli.Visible = true;
        tb_btnes.Visible = false;
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        SqlDataSource1.UpdateParameters["Param1"].DefaultValue = Session["mschoolid"].ToString();
        SqlDataSource1.UpdateParameters["Param2"].DefaultValue = txt_payamekoli.Text.Replace("\r\n", "<br>");
        SqlDataSource1.Update();
        td_payam_koli.Visible = false;
        tb_btnes.Visible = true;
    }
    protected void Button14_Click(object sender, EventArgs e)
    {
        td_payam_koli.Visible = false;
        td_setdate.Visible = false;
        tb_btnes.Visible = true;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session.Abandon();
        Context.Response.Redirect("~/login.aspx");
    }
    protected void Button18_Click(object sender, EventArgs e)
    {
        td_setdate.Visible = true;
        tb_btnes.Visible = false;
    }
    protected void Button19_Click(object sender, EventArgs e)
    {
        SqlDataSource3.UpdateParameters["startdate"].DefaultValue = txt_startdate.Text;
        SqlDataSource3.UpdateParameters["txt"].DefaultValue = txt_matn.Text;
        SqlDataSource3.UpdateParameters["schoolid"].DefaultValue = Session["mschoolid"].ToString();
        SqlDataSource3.Update();
        td_setdate.Visible = false;
        tb_btnes.Visible = true;
    }
}
