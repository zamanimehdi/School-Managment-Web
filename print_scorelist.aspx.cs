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

public partial class print_scorelist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["info"] == null)
        {
            Response.Redirect("default.aspx");
        }
        else
        {
           
        }
    }


    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            ((Label)e.Row.Cells[2].Controls[1]).Text = ((Label)e.Row.Cells[2].Controls[1]).Text.Insert(2, "/").Insert(5, "/");
            string temp = ((Label)e.Row.Cells[8].Controls[1]).Text = string.Format("{0:f2}", double.Parse(DataBinder.Eval(e.Row.DataItem, "score").ToString()) - double.Parse(DataBinder.Eval(e.Row.DataItem, "avgclass").ToString()));
            if (double.Parse(temp) > 0)
            {
                ((Image)e.Row.Cells[8].Controls[3]).ImageUrl = "./images/up.png";
                ((Label)e.Row.Cells[8].Controls[1]).Text = ((Label)e.Row.Cells[8].Controls[1]).Text.Trim() + " + ";
            }
            if (double.Parse(temp) == 0)
            {
                ((Image)e.Row.Cells[8].Controls[3]).ImageUrl = "./images/spacer.gif";
                ((Label)e.Row.Cells[8].Controls[1]).Text = "- - - -";
            }
            if (double.Parse(temp) < 0)
            {
                ((Image)e.Row.Cells[8].Controls[3]).ImageUrl = "./images/down.png";
                ((Label)e.Row.Cells[8].Controls[1]).Text = ((Label)e.Row.Cells[8].Controls[1]).Text.Replace('-', ' ');
                ((Label)e.Row.Cells[8].Controls[1]).Text = ((Label)e.Row.Cells[8].Controls[1]).Text.Trim() + " - ";
            }
        }
    }


    protected void GridView2_Load(object sender, EventArgs e)
    {
        if (!ClientScript.IsStartupScriptRegistered("print"))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "print", "alertMe();", true);

        }
    }
}