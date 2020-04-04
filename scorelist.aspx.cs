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

public partial class scorelist : System.Web.UI.Page
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
        //Context.Response.Redirect("~/cquiz.aspx?readid=" + GridView1.SelectedValue.ToString());
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        System.Globalization.PersianCalendar pc = new System.Globalization.PersianCalendar();
        int Y;
        if (pc.GetMonth(DateTime.Now) <= 4)
        {
            Y = int.Parse(pc.GetYear(DateTime.Now).ToString().Substring(2, 2).ToString()) - 1;
        }
        else
        {
            Y = int.Parse(pc.GetYear(DateTime.Now).ToString().Substring(2, 2));
        }
        if (DropDownList1.SelectedIndex != 0)
            lbl_msg.Text = "نمایش نمرات " + DropDownList1.Text + " ماه";
        else
            lbl_msg.Text = "";
        switch (DropDownList1.SelectedIndex)
        {
            case 0:
                sds_scores.FilterExpression = "scoredate>=000101 and scoredate<=999999";
                break;
            case 1:
                sds_scores.FilterExpression = "scoredate>=" + Y + "0101 and scoredate<=" + Y + "0131";
                break;
            case 2:
                sds_scores.FilterExpression = "scoredate>=" + Y + "0201 and scoredate<=" + Y + "0231";
                break;
            case 3:
                sds_scores.FilterExpression = "scoredate>=" + Y + "0301 and scoredate<=" + Y + "0331";
                break;
            case 4:
                sds_scores.FilterExpression = "scoredate>=" + Y + "0401 and scoredate<=" + Y + "0431";
                break;
            case 5:
                sds_scores.FilterExpression = "scoredate>=" + Y + "0501 and scoredate<=" + Y + "0531";
                break;
            case 6:
                sds_scores.FilterExpression = "scoredate>=" + Y + "0601 and scoredate<=" + Y + "0631";
                break;
            case 7:
                sds_scores.FilterExpression = "scoredate>=" + Y + "0701 and scoredate<=" + Y + "0731";
                break;
            case 8:
                sds_scores.FilterExpression = "scoredate>=" + Y + "0801 and scoredate<=" + Y + "0831";
                break;
            case 9:
                sds_scores.FilterExpression = "scoredate>=" + Y + "0901 and scoredate<=" + Y + "0931";
                break;
            case 10:
                sds_scores.FilterExpression = "scoredate>=" + Y + "1001 and scoredate<=" + Y + "1031";
                break;
            case 11:
                sds_scores.FilterExpression = "scoredate>=" + Y + "1101 and scoredate<=" + Y + "1131";
                break;
            case 12:
                sds_scores.FilterExpression = "scoredate>=" + Y + "1201 and scoredate<=" + Y + "1231";
                break;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedIndex == 0)
        {
            sds_scores.FilterExpression = "lessonname like '%'";
            lbl_msg.Text = "";
        }
        else
        {
            sds_scores.FilterExpression = "lessonname = '" + DropDownList2.Text + "'";
            lbl_msg.Text = "نمایش نمرات درس " + DropDownList2.Text;
        }
    }
    protected void DropDownList2_DataBound(object sender, EventArgs e)
    {
        DropDownList2.Items.Insert(0, "تمامی دروس");
    }
}