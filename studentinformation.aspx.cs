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

public partial class studentinformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        tb_schoolinfo.Visible = false;
        if (Session["info"] == null)
        {
            Response.Redirect("default.aspx");
        }
        else
        {
            string[] info = { "", "", "", "", "" };
            try
            {
                info = (string[])Session["info"];
                Session.Add("schoolID", info[0].Substring(0, 4));
                Session.Add("studentID", info[0].Substring(4));
            }
            catch
            { Session.Abandon(); Context.Response.Redirect("~/Default.aspx"); }
            //===================== rannk and average
            try
            {
                IEnumerable d1 = sds_schoolInfo.Select(DataSourceSelectArguments.Empty);
                IEnumerator d2 = d1.GetEnumerator();
                d2.MoveNext();
                string startdate = "000000", enddate = "999999";
                lbl_txtdatefirstpage.Text=((DataRowView)d2.Current)["txtdate_firstpagescore"].ToString();
                startdate = ((DataRowView)d2.Current)["startdate_firstpagescore"].ToString();
                enddate = ((DataRowView)d2.Current)["enddate_firstpagescore"].ToString();
                
                // model 
                sds_Avg.SelectParameters["startdate"].DefaultValue = startdate;
                sds_Avg.SelectParameters["enddate"].DefaultValue = enddate;
                d1 = sds_Avg.Select(DataSourceSelectArguments.Empty);
                d2 = d1.GetEnumerator();
                if (d2.MoveNext())
                    averageLabel.Text = Math.Round(double.Parse(((DataRowView)d2.Current)["moadel"].ToString()), 2).ToString();
                ////////////////////////// rank in paye and class
                d1 = sds_grade_major_class.Select(DataSourceSelectArguments.Empty);
                d2 = d1.GetEnumerator();
                string major = "";
                int grade = 0;
                string classname = "";
                if (d2.MoveNext())
                {
                    major = ((DataRowView)d2.Current)[1].ToString();
                    grade = int.Parse(((DataRowView)d2.Current)[0].ToString());
                    classname = ((DataRowView)d2.Current)[2].ToString();
                }
                ///// rank class
                sds_rank_inclass.SelectParameters["gradep"].DefaultValue = grade.ToString();
                sds_rank_inclass.SelectParameters["majorp"].DefaultValue = major.ToString();
                sds_rank_inclass.SelectParameters["classp"].DefaultValue = classname.ToString();
                sds_rank_inclass.SelectParameters["startdate"].DefaultValue = startdate;
                sds_rank_inclass.SelectParameters["enddate"].DefaultValue = enddate;

                d1 = sds_rank_inclass.Select(DataSourceSelectArguments.Empty);
                d2 = d1.GetEnumerator();
                if (d2.MoveNext())
                    rankLabel.Text = ((DataRowView)d2.Current)[0].ToString();
                ///// rank paye
                sds_rank_ingrade.SelectParameters["gradep"].DefaultValue = grade.ToString();
                sds_rank_ingrade.SelectParameters["majorp"].DefaultValue = major.ToString();
                sds_rank_ingrade.SelectParameters["startdate"].DefaultValue = startdate;
                sds_rank_ingrade.SelectParameters["enddate"].DefaultValue = enddate;

                d1 = sds_rank_ingrade.Select(DataSourceSelectArguments.Empty);
                d2 = d1.GetEnumerator();
                if (d2.MoveNext())
                    rankall.Text = ((DataRowView)d2.Current)[0].ToString();
            }
            catch
            {
                rankLabel.Text = "";
            }
            //=======================================

            //lbl_stname.Text = studentInfo[2];
            lbl_lastv.Text = info[2];
            IEnumerable i1 = sds_name_on_upbaner.Select(DataSourceSelectArguments.Empty);
            IEnumerator i2 = i1.GetEnumerator();
            i2.MoveNext();
            lbl_stname.Text = ((DataRowView)i2.Current)[0].ToString();//studentname
            lbl_schooname.Text = ((DataRowView)i2.Current)[1].ToString();//studentname
            Session.Add("schoolname", lbl_schooname.Text);
            Session.Add("stname", lbl_stname.Text);
            Session.Add("lastlogin", lbl_lastv.Text);
            // pass change secsuus msg
            if (Context.Request.QueryString["passchange"] != null)
            {
                if (!ClientScript.IsStartupScriptRegistered("alert"))
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alertMe();", true);
                }
            }
            // send ok
            if (Context.Request.QueryString["send"] != null)
            {
                if (!ClientScript.IsStartupScriptRegistered("sendok"))
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "sendok", "alert2();", true);
                }
            }
            //  daneshamoz gheybati nadashte ast
            if (Context.Request.QueryString["emptya"] != null)
            {
                if (!ClientScript.IsStartupScriptRegistered("hazer"))
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "hazer", "alert3();", true);
                }
            }
            //  mdb azmonyar baraye azmoon  vojod nadarad
            if (Context.Request.QueryString["msgazmoon"] != null)
            {
                if (!ClientScript.IsStartupScriptRegistered("noazmoon"))
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "noazmoon", "alert7();", true);
                }
            }

            //  daneshamoz morede enzebati nadashte ast
            if (Context.Request.QueryString["emptyb"] != null)
            {
                if (!ClientScript.IsStartupScriptRegistered("enzebati"))
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "enzebati", "alert4();", true);
                }
            }
            //  daneshamoz morede enzebati nadashte ast
            if (Context.Request.QueryString["noscore"] != null)
            {
                if (!ClientScript.IsStartupScriptRegistered("noscore"))
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "noscore", "alert5();", true);
                }
            }
            //  nemitavan avg gereft
            if (Context.Request.QueryString["noavg"] != null)
            {
                if (!ClientScript.IsStartupScriptRegistered("noavg"))
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "noavg", "alert6();", true);
                }
            }
            // new pm
            IEnumerable ia = sds_newpm.Select(DataSourceSelectArguments.Empty);
            IEnumerator it = ia.GetEnumerator();
            it.MoveNext();
            if (((DataRowView)it.Current)[0].ToString() != "0")
            {
                tb_newmsg.Visible = true;
                lbl_pmcount.Text = ((DataRowView)it.Current)[0].ToString();
            }
            // new inbox pm
            ia = sds_newinbox.Select(DataSourceSelectArguments.Empty);
            it = ia.GetEnumerator();
            it.MoveNext();
            i1 = sds_toppm_inbox.Select(DataSourceSelectArguments.Empty);
            i2 = i1.GetEnumerator();
            if (((DataRowView)it.Current)[0].ToString() != "0")
            {
                i2.MoveNext();
                tb_newmsg_inbox.Visible = true;
                lbl_inbox_top_pm.Text = ((DataRowView)i2.Current)[0].ToString();
                ImageButton17.PostBackUrl = "~/inbox.aspx?readid=" + ((DataRowView)i2.Current)[1].ToString();
            }
            // remove school msg
            if (Context.Request.QueryString["remove"] != null)
            {
                if (Session["remove"] == null) Session["remove"] = "yes";
            }
            if (Session["remove"] != null)
            {
                DataList1.Visible = false;
            }
        }
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        if (Session["mschoolid"] != null)
        {
            Response.Redirect("manage.aspx");
        }
        else
        {
            Session.Abandon();
            Response.Redirect("Default.aspx");
        }
    }
    protected void btn_logout(object sender, ImageClickEventArgs e)
    {
        if (Session["mschoolid"] != null)
        {
            Response.Redirect("manage.aspx");
        }
        else
        {
            Session.Abandon();
            Response.Redirect("Default.aspx");
        }
    }
    protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void img_443_Click(object sender, ImageClickEventArgs e)
    {
        System.Web.HttpBrowserCapabilities browser = Request.Browser;
        if (browser.Browser == "IE")
        {
            Context.Response.Redirect("~/messageie.aspx");
        }
        else
        {
            Context.Response.Redirect("~/message.aspx");
        }

    }
    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        System.Web.HttpBrowserCapabilities browser = Request.Browser;
        if (browser.Browser == "IE")
        {
            Context.Response.Redirect("~/messageie.aspx");
        }
        else
        {
            Context.Response.Redirect("~/message.aspx");
        }
    }
    protected void ImageButton15_Click(object sender, ImageClickEventArgs e)
    {
        System.Web.HttpBrowserCapabilities browser = Request.Browser;
        if (browser.Browser == "IE")
        {
            Context.Response.Redirect("~/messageie.aspx");
        }
        else
        {
            Context.Response.Redirect("~/message.aspx");
        }
    }
}
