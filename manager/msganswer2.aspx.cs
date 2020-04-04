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

public partial class manager_msganswer2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["mschoolid"] == null)
            Context.Response.Redirect("~/login.aspx");
        if (GridView1.Rows.Count == 0)
        {
           // tb_schoolinfo.Visible = false;
            Label4.Text = "<center>" + "پیام جدید وجود ندارد" + "</center>";
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       // Context.Response.Redirect("~/manager/msganswer2.aspx?id=" + GridView1.SelectedValue.ToString());
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Label3.Text = GridView1.SelectedValue.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (GridView1.SelectedValue == null) lbl_msg.Text = "ابتدا باید یک پیامی که قصد پاسخگویی به آن  را دارید از لیست بالا انتخاب کنید";
        else if (TextBox1.Text == "") lbl_msg.Text = "متن پاسخ باید تکمیل گردد";
        else
        {
            if (TextBox1.Text == "") TextBox1.Text = " ";
            System.Globalization.PersianCalendar pc = new System.Globalization.PersianCalendar();
            DateTime dt = DateTime.Now;
            string datetime1 = pc.GetYear(dt).ToString() + "/" + pc.GetMonth(dt) + "/" + pc.GetDayOfMonth(dt) + " " + DateTime.Now.Hour.ToString() + ":" + DateTime.Now.Minute.ToString();
            SqlDataSource2.UpdateParameters["Param6"].DefaultValue = datetime1;
            SqlDataSource2.UpdateParameters["Param7"].DefaultValue = TextBox1.Text.Replace("\r\n","<br>");
            SqlDataSource2.UpdateParameters["Param8"].DefaultValue = "1";
            SqlDataSource2.UpdateParameters["Param1"].DefaultValue = GridView1.SelectedValue.ToString();
            SqlDataSource2.Update();
            if (!ClientScript.IsStartupScriptRegistered("alert"))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alertMe();", true);
            }
            TextBox1.Text = "";
            lbl_msg.Text = "";
            Context.Response.Redirect("~/manager/msganswer2.aspx");
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session.Abandon();
        Context.Response.Redirect("~/login.aspx");
    }
}