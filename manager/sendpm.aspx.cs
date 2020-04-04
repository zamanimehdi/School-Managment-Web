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

public partial class manager_sendpm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["mschoolid"] == null) Context.Response.Redirect("~/login.aspx");
        //send=ok
        if (Session["send"] != null)
        {
            Session.Remove("send");
            Session.Remove("st_ides");
            if (!ClientScript.IsStartupScriptRegistered("senok"))
            {
                tb_freetxtbox.Visible = false; tb_selectst.Visible = true;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "senok", "alert1();", true);
            }
        }
        //empty=ok
        if (Context.Request.QueryString["empty"] != null)
        {
            if (!ClientScript.IsStartupScriptRegistered("senok"))
            {
                tb_freetxtbox.Visible = true; tb_selectst.Visible = false;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "senok", "alert2();", true);
            }
        }
        //select no student
        if (Session["nost"] != null)
        {
            Session.Remove("nost");
            if (!ClientScript.IsStartupScriptRegistered("select"))
            {
                tb_freetxtbox.Visible = false; tb_selectst.Visible = true;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "select", "alert3();", true);
            }
        }
        //pid=2
        if (Context.Request.QueryString["pid"] != null)
        {
            tb_freetxtbox.Visible = true; tb_selectst.Visible = false;
            lbl_st_list.Text = Session["list_student"].ToString();
        }
        //// type filter
        if (Session["filtertype"] != null)
        {
            if (Session["filtertype"].ToString() == "1")
            {
                SqlDataSource1.SelectCommand = "SELECT studentname, grade, classname, majorname, studentID FROM StudentTable WHERE (schoolID = @Param1) ORDER BY grade, classname, majorname, studentname";
            }
            else
            {
                if (Session["dropindex"] == null) { Session.Remove("filtertype"); return; }
                if (Session["filtertype"].ToString() == "2")
                {
                    SqlDataSource1.SelectCommand = "SELECT studentname, grade, classname, majorname, studentID FROM StudentTable WHERE  (schoolID = @Param1) AND (grade = " + Session["dropindex"].ToString() + ") ORDER BY grade, classname, majorname, studentname";
                }
                else if (Session["filtertype"].ToString() == "3")
                {
                    SqlDataSource1.SelectCommand = "SELECT studentname, grade, classname, majorname, studentID FROM StudentTable WHERE  (schoolID = @Param1) AND (classname = " + Session["dropindex"].ToString() + ") ORDER BY grade, classname, majorname, studentname";
                }
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (FreeTextBox1.Text == "" || txt_title.Text == "") Context.Response.Redirect("~/manager/sendpm.aspx?empty=2");
        string str_st_ides = Session["st_ides"].ToString();
        for (int i = 0; i < DataList2.Items.Count; i++)
        {
            Label lbl = (Label)DataList2.Items[i].FindControl("lbl_studentid");
            string strtmp = "__________________________________________________________________";
            string stradd = strtmp.Substring(0, (12 - lbl.Text.Length));
            if (str_st_ides.Contains(stradd + lbl.Text))
            {
                Label studentid = (Label)DataList2.Items[i].FindControl("lbl_studentid");
                sds_insertpm.InsertParameters["Param1"].DefaultValue = Session["mschoolid"].ToString();
                sds_insertpm.InsertParameters["Param2"].DefaultValue = studentid.Text;
                sds_insertpm.InsertParameters["Param3"].DefaultValue = txt_title.Text;
                sds_insertpm.InsertParameters["Param4"].DefaultValue = FreeTextBox1.Text;
                sds_insertpm.InsertParameters["Param5"].DefaultValue = "0";
                System.Globalization.PersianCalendar pc = new System.Globalization.PersianCalendar();
                DateTime dt = DateTime.Now;
                string datetime1 = pc.GetYear(dt).ToString() + "/" + (pc.GetMonth(dt).ToString().Length == 1 ? "0" + pc.GetMonth(dt).ToString() : pc.GetMonth(dt).ToString()) + "/" + (pc.GetDayOfMonth(dt).ToString().Length == 1 ? "0" + pc.GetDayOfMonth(dt).ToString() : pc.GetDayOfMonth(dt).ToString());
                sds_insertpm.InsertParameters["Param6"].DefaultValue = datetime1;
                sds_insertpm.Insert();
            }
        }
        Session["send"] = "1";
        //faal va gheyre faaal kardane  load info dar safheye aval
        //Session.Remove("dropindex");
        tb_selectst.Visible = true; tb_freetxtbox.Visible = false;
        Context.Response.Redirect("~/manager/sendpm.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session.Remove("list_student");
        //Session.Remove("filtertype");
        tb_freetxtbox.Visible = false; tb_selectst.Visible = true;
        Context.Response.Redirect("~/manager/sendpm.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["filtertype"] = "2";
        Session["dropindex"] = Convert.ToString(DropDownList1.SelectedIndex + 1);
        SqlDataSource1.SelectCommand = "SELECT studentname, grade, classname, majorname, studentID FROM StudentTable WHERE  (schoolID = @Param1) AND (grade = " + Convert.ToString(DropDownList1.SelectedIndex + 1) + ") ORDER BY grade, classname, majorname, studentname";
        SqlDataSource1.SelectParameters[0].DefaultValue = Session["mschoolid"].ToString();
        SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        SqlDataSource1.DataBind();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["filtertype"] = "3";
        Session["dropindex"] = DropDownList2.SelectedValue;
        SqlDataSource1.SelectCommand = "SELECT studentname, grade, classname, majorname, studentID FROM StudentTable WHERE  (schoolID = @Param1) AND (classname = " + DropDownList2.SelectedValue + ") ORDER BY grade, classname, majorname, studentname";
        SqlDataSource1.SelectParameters[0].DefaultValue = Session["mschoolid"].ToString();
        SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        SqlDataSource1.DataBind();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        DropDownList1_SelectedIndexChanged(null, null);
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        DropDownList2_SelectedIndexChanged(null, null);
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        int count = 0;
        for (int i = 0; i < DataList2.Items.Count; i++)
        {
            CheckBox chk = (CheckBox)DataList2.Items[i].FindControl("CheckBox2");
            if (chk.Checked)
                count++;
        }
        if (count == 0)
        {
            Session["nost"] = "2";
            Context.Response.Redirect("~/manager/sendpm.aspx");
        }
        else
        {
            string str = "";
            string str_st = "";
            string strtmp = "__________________________________________________________________";
            for (int i = 0; i < DataList2.Items.Count; i++)
            {
                CheckBox chk = (CheckBox)DataList2.Items[i].FindControl("CheckBox2");
                if (chk.Checked)
                {
                    if (str != "") str += " ";
                    if (str_st != "") str_st += " , ";
                    Label studentid = (Label)DataList2.Items[i].FindControl("lbl_studentid");
                    Label studentnameLabel = (Label)DataList2.Items[i].FindControl("studentnameLabel");
                    string stradd = strtmp.Substring(0, (12 - studentid.Text.Length));
                    str += stradd + studentid.Text;
                    str_st+=studentnameLabel.Text;
                }
            }
            Session["list_student"] = str_st;
            Session.Add("st_ides", str);
            Context.Response.Redirect("~/manager/sendpm.aspx?pid=2");
        }
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Session.Remove("dropindex");
        Session.Remove("filtertype");
        Context.Response.Redirect("~/manage.aspx");
    }
    protected void DataList2_Load(object sender, EventArgs e)
    {
        if (Session["filtertype"] != null)
        {
            if (Session["filtertype"].ToString() == "1")
            {
                SqlDataSource1.SelectCommand = "SELECT studentname, grade, classname, majorname, studentID FROM StudentTable WHERE (schoolID = @Param1) ORDER BY grade, classname, majorname, studentname";
            }
            else if (Session["filtertype"].ToString() == "2")
            {
                SqlDataSource1.SelectCommand = "SELECT studentname, grade, classname, majorname, studentID FROM StudentTable WHERE  (schoolID = @Param1) AND (grade = " + Session["dropindex"].ToString() + ") ORDER BY grade, classname, majorname, studentname";
            }
            else if (Session["filtertype"].ToString() == "3")
            {
                SqlDataSource1.SelectCommand = "SELECT studentname, grade, classname, majorname, studentID FROM StudentTable WHERE  (schoolID = @Param1) AND (classname = " + Session["dropindex"].ToString() + ") ORDER BY grade, classname, majorname, studentname";
            }
            ArrayList al = new ArrayList();
            for (int i = 0; i < DataList2.Items.Count; i++)
            {
                CheckBox chk = (CheckBox)DataList2.Items[i].FindControl("CheckBox2");
                if (chk.Checked) al.Add(i.ToString());
            }
            SqlDataSource1.SelectParameters[0].DefaultValue = Session["mschoolid"].ToString();
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            DataList2.DataBind();

            for (int i = 0; i < al.Count; i++)
            {
                if (int.Parse(al[i].ToString()) > DataList2.Items.Count) break;
                CheckBox chk = (CheckBox)DataList2.Items[int.Parse(al[i].ToString())].FindControl("CheckBox2");
                chk.Checked = true;
            }
        }
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Session["filtertype"] = "1";
        SqlDataSource1.SelectCommand = "SELECT studentname, grade, classname, majorname, studentID FROM StudentTable WHERE (schoolID = @Param1) ORDER BY grade, classname, majorname, studentname";
    }
    protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
    {
        for (int i = 0; i < DataList2.Items.Count; i++)
        {
            CheckBox chk = (CheckBox)DataList2.Items[i].FindControl("CheckBox2");
            chk.Checked = CheckBox3.Checked ;
        }

    }
    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session.Abandon();
        Context.Response.Redirect("~/login.aspx");
    }
}