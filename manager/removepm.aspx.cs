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

public partial class manager_removepm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["mschoolid"] == null) Context.Response.Redirect("~/login.aspx");
        if (Context.Request.QueryString["del"] != null)
        {
            if (!ClientScript.IsStartupScriptRegistered("removepm"))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "removepm", "openwin();", true);
            }
        }
    }
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        string str = e.Keys[0].ToString();
        SqlDataSource1.DeleteParameters[0].DefaultValue = str;
        SqlDataSource1.Delete();
        Context.Response.Redirect("~/manager/removepm.aspx?del=ok");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session.Abandon();
        Context.Response.Redirect("~/login.aspx");
    }
}