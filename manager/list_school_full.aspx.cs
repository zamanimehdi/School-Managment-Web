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

public partial class manager_list_school_full : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["mschoolid"] == null)
            Context.Response.Redirect("~/login.aspx");

    }
    protected void GridView1_Load(object sender, EventArgs e)
    {
        
        if (!ClientScript.IsStartupScriptRegistered("print"))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "print", "alertMe();", true);

        }
    }
}
