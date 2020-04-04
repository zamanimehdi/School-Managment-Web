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

public partial class inbox : System.Web.UI.Page
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
            //////////////

            if (Context.Request.QueryString["readid"] != null)
            {
                DataList1.Visible = true; tb_list.Visible = false;
                if (Session["mschoolid"] == null)
                {
                    sds_list.UpdateParameters[0].DefaultValue = Context.Request.QueryString["readid"].ToString();
                    sds_list.Update();
                }
            }
            else
            {
                DataList1.Visible = false; tb_list.Visible = true;
            }

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
    protected void GridView1_PageIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            bool isread = (bool)DataBinder.Eval(e.Row.DataItem, "isread");
            if (!isread)
                e.Row.BackColor = System.Drawing.Color.FromName("#FFE3DD");//red
            else
                e.Row.BackColor = System.Drawing.Color.FromName("#D9FFC6");//green
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Context.Response.Redirect("~/inbox.aspx?readid=" + GridView1.SelectedValue.ToString());
    }
    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {

    }
}
