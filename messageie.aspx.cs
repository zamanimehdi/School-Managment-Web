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

public partial class messageie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["info"] == null)
        {
            Response.Redirect("default.aspx");
        }
        else
        {
            if (Session["stInfo"] == null)
            {
                Response.Redirect("default.aspx");
            }
            lbl_stname.Text = Session["stname"].ToString();
            lbl_lastv.Text = Session["lastlogin"].ToString();
            lbl_schooname.Text = Session["schoolname"].ToString();

            if (Context.Request.QueryString["readid"] != null)
            {
                if (Session["mschoolid"] == null)
                {
                    SqlDataSource1.UpdateParameters["id"].DefaultValue = Context.Request.QueryString["readid"].ToString();
                    SqlDataSource1.Update();
                }
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

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            bool isreply = (bool)DataBinder.Eval(e.Row.DataItem, "isreply");
            bool showanswer = (bool)DataBinder.Eval(e.Row.DataItem, "showanswer");
            if (DataBinder.Eval(e.Row.DataItem, "teachername") is DBNull)
            {
                e.Row.Cells[2].Controls.Add(new Label());
                ((Label)e.Row.Cells[2].Controls[0]).Text = "عوامل آموزشی";
            }
            if (isreply & showanswer)
            {
                e.Row.BackColor = System.Drawing.Color.FromName("#FFFFDD");//yell

            }
            else
                if (!isreply & showanswer)
                {
                    e.Row.BackColor = System.Drawing.Color.FromName("#D9FFC6");//green
                }
                else
                    if (isreply & !showanswer)
                    {
                       // e.Row.Cells[0].Controls[0].Visible = false;
                       // e.Row.Cells[0].Controls.Add(new Label());
                       // ((Label)e.Row.Cells[0].Controls[1]).Text = "بدون پاسخ"+"<br>";
                        e.Row.BackColor = System.Drawing.Color.FromName("#FFE3DD");//red
                    }
                    else
                    {
                       // e.Row.Cells[0].Controls[0].Visible = false;
                       // e.Row.Cells[0].Controls.Add(new Label());
                       // ((Label)e.Row.Cells[0].Controls[1]).Text = "بدون پاسخ" + "<br>";
                        e.Row.BackColor = System.Drawing.Color.FromName("#FFE3DD");//red
                    }
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Context.Response.Redirect("~/messageie.aspx?readid="+GridView1.SelectedValue.ToString());
    }
    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if (DataBinder.Eval(e.Item.DataItem, "answertxt").ToString() == "")
        {
            ((Label)e.Item.FindControl("answertxtLabel")).Text = "تاکنون پاسخی از جانب مدرسه برای این پیام دریافت ننموده اید";
        }
    }
    protected void GridView1_PageIndexChanged(object sender, EventArgs e)
    {
        DataList1.Visible = false;
    }
}
