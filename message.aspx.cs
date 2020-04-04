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

public partial class message : System.Web.UI.Page
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

            //////////
            if (Context.Request.QueryString["readid"] != null)
            {
                if (Session["mschoolid"] == null)
                {
                    SqlDataSource1.UpdateParameters["id"].DefaultValue = Context.Request.QueryString["readid"].ToString();
                    SqlDataSource1.Update();
                }

                //  
                if (!ClientScript.IsStartupScriptRegistered("showanser"))
                {
                    IEnumerable i1=sds_showansw.Select(DataSourceSelectArguments.Empty);
                    IEnumerator i2 = i1.GetEnumerator(); i2.MoveNext();
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "showanser", "JavaScript:var f = new fAlertBox();f.info('<h1> سامانه پیگیری وضعیت تحصیلی و تربیتی دانش آموزان</h1><em>متن پاسخ ارسال شده برای شما</em><br/><br/>"+((DataRowView)i2.Current)[0].ToString()+"</p>');", true);
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
                e.Row.Cells[1].Controls.Add(new Label());
                ((Label)e.Row.Cells[1].Controls[0]).Text = "عوامل آموزشی";
            }

            ((HyperLink)e.Row.Cells[2].Controls[1]).NavigateUrl = "JavaScript:var f = new fAlertBox();f.info('<h1> سامانه پیگیری وضعیت تحصیلی و تربیتی دانش آموزان</h1><em>متن پیام ارسال شده از طرف شما</em><br/><br/>" + DataBinder.Eval(e.Row.DataItem, "familytxt").ToString() + "</p>');";
            if (isreply & showanswer)
            {
                e.Row.BackColor = System.Drawing.Color.FromName("#FFFFDD");//yell
                ((HyperLink)e.Row.Cells[4].Controls[1]).NavigateUrl = "JavaScript:var f = new fAlertBox();f.info('<h1> سامانه پیگیری وضعیت تحصیلی و تربیتی دانش آموزان</h1><em>متن پاسخ ارسال شده برای شما</em><br/><br/>" +  "لـــطفا صبر کنــید . . ."+ "</p>');window.location = 'message.aspx?readid=" + DataBinder.Eval(e.Row.DataItem, "id").ToString() + "'";
            }
            else
                if (!isreply & showanswer)
                {
                    e.Row.BackColor = System.Drawing.Color.FromName("#D9FFC6");//green
                    ((HyperLink)e.Row.Cells[4].Controls[1]).NavigateUrl = "JavaScript:var f = new fAlertBox();f.info('<h1> سامانه پیگیری وضعیت تحصیلی و تربیتی دانش آموزان</h1><em>متن پاسخ ارسال شده برای شما</em><br/><br/>" + DataBinder.Eval(e.Row.DataItem, "answertxt").ToString() + "</p>');";
                }
                else
                    if (isreply & !showanswer)
                    {
                        e.Row.BackColor = System.Drawing.Color.FromName("#FFE3DD");//red
                        ((HyperLink)e.Row.Cells[4].Controls[1]).ImageUrl = "~/images/nocontent.png";
                    }
                    else
                    {
                        e.Row.BackColor = System.Drawing.Color.FromName("#FFE3DD");//red
                        ((HyperLink)e.Row.Cells[4].Controls[1]).ImageUrl = "~/images/nocontent.png";

                    }
        }
    }
}
