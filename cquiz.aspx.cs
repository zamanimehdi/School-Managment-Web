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

public partial class cquiz : System.Web.UI.Page
{
    double sumstu, sumvahed, sumclass;
    protected void Page_Load(object sender, EventArgs e)
    {
        sumstu = 0;
        sumvahed = 0;
        sumclass = 0;
        if (Session["info"] == null)
        {
            Response.Redirect("default.aspx");
        }
        else
        {
            lbl_stname.Text = Session["stname"].ToString();
            lbl_lastv.Text = Session["lastlogin"].ToString();
            lbl_schooname.Text = Session["schoolname"].ToString();
            /////////
            if (Context.Request.QueryString["readid"] != null)
            {
                tb_down.Visible = true; tb_up.Visible = false;
                IEnumerable i1 = sds_hamahangname.Select(DataSourceSelectArguments.Empty);
                IEnumerator i2 = i1.GetEnumerator();
                i2.MoveNext();
                Label8.Text = "کارنامه امتحان هماهنگ";
                try
                {
                    lbl_hamahangname.Text = "کارنامه " + ((DataRowView)i2.Current)[0].ToString();
                }
                catch
                {
                    Context.Response.Redirect("~/cquiz.aspx");
                }
            }
            else
            {
                Label8.Text = "فهرست امتـحــانــات";
                tb_down.Visible = false; tb_up.Visible = true;
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

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Context.Response.Redirect("~/cquiz.aspx?readid=" + GridView1.SelectedValue.ToString());
    }

    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            sumstu += double.Parse(DataBinder.Eval(e.Row.DataItem, "avg").ToString()) * double.Parse(DataBinder.Eval(e.Row.DataItem, "vahed").ToString());
            sumvahed += double.Parse(DataBinder.Eval(e.Row.DataItem, "vahed").ToString());
            sumclass += double.Parse(DataBinder.Eval(e.Row.DataItem, "avgclass").ToString()) * double.Parse(DataBinder.Eval(e.Row.DataItem, "vahed").ToString());
            string tmp=((Label)e.Row.Cells[6].Controls[3]).Text = string.Format("{0:f2}", double.Parse(DataBinder.Eval(e.Row.DataItem, "avg").ToString()) - double.Parse(DataBinder.Eval(e.Row.DataItem, "avgclass").ToString()));
            if (double.Parse(tmp) >= 0)
            {
                ((Image)e.Row.Cells[6].Controls[1]).ImageUrl = "./images/up.png";
                ((Label)e.Row.Cells[6].Controls[3]).Text = ((Label)e.Row.Cells[6].Controls[3]).Text.Trim() + " + ";
            }
            if (double.Parse(tmp) < 0)
            {
                ((Image)e.Row.Cells[6].Controls[1]).ImageUrl = "./images/down.png";
                ((Label)e.Row.Cells[6].Controls[3]).Text = ((Label)e.Row.Cells[6].Controls[3]).Text.Replace('-', ' ');
                ((Label)e.Row.Cells[6].Controls[3]).Text = ((Label)e.Row.Cells[6].Controls[3]).Text.Trim() + " - ";
            }
            lbl_stu.Text = string.Format("{0:f2}", sumstu / sumvahed);
            lbl_class.Text = string.Format("{0:f2}", sumclass / sumvahed);
            if (sumstu >= sumclass)
                Image2.ImageUrl = "./images/up.png";
            else
                Image2.ImageUrl = "./images/down.png";
        }
    }
}