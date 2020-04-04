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

public partial class changepass : System.Web.UI.Page
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
            txt_username.Text = Session["schoolid"].ToString() + Session["studentID"].ToString();
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
        if (txt_newpass.Text.Contains(" ") ||
             txt_newpass.Text.Contains("=") ||
                 txt_newpass.Text.Contains("'") ||
                   txt_newpass.Text.Contains("\"") ||
                        txt_newpass.Text.Contains("*"))
        {
            Label2.Text = "<center>" + "در کلمه عبور جدید کاراکترهای غیر مجاز استفاده شده است" + "</center>" + "<br>";
            return;
        }
        IEnumerable sile = sds_passchange.Select(DataSourceSelectArguments.Empty);
        IEnumerator sior = sile.GetEnumerator();
        sior.MoveNext();
        if (((DataRowView)sior.Current)[0].ToString() != txt_oldpass.Text)
        {
            Label2.Text = "<center>" + "کلمه عبور قبلی وارد شده اشتباه می باشد" + "</center>"+"<br>";
            txt_oldpass.Text = "";
        }
        else
        {
            if (txt_newpass.Text != txt_newpass2.Text)
            {
                Label2.Text = "<center>" + "کلمه عبور جدید با تکرار کلمه عبور سازگار نمی باشد" + "</center>" + "<br>";
            }
            else if (txt_newpass.Text == "")
                Label2.Text = "<center>" + "کلمه عبور جدید را وارد کنید" + "</center>" + "<br>";
            else
            {
                sds_passchange.UpdateParameters["Param2"].DefaultValue = txt_newpass2.Text;
                sds_passchange.UpdateParameters["Param1"].DefaultValue = Session["schoolid"].ToString() + Session["studentID"].ToString(); ;
                sds_passchange.Update();
                Context.Response.Redirect("~/studentinformation.aspx?passchange=ok");
            }
        }
    }
    protected void txt_newpass2_TextChanged(object sender, EventArgs e)
    {

    }
}
