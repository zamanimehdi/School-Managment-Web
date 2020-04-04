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

public partial class azmoon : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string mdb_name="";
        try
        {
            IEnumerable i1 = sds_get_db_name.Select(DataSourceSelectArguments.Empty);
            IEnumerator i2 = i1.GetEnumerator();
            i2.MoveNext();
            mdb_name = ((DataRowView)i2.Current)[0].ToString();
        }
        catch { Response.Redirect("default.aspx"); }
        ///////////////////////////////
        AccessDataSource1.DataFile = "~/azmoon/"+mdb_name;
        ADS_2.DataFile = "~/azmoon/" + mdb_name;
        ADS_azmoonlist.DataFile = "~/azmoon/" + mdb_name;
        ADS_get_pid.DataFile = "~/azmoon/" + mdb_name;
        ADS_rotbe.DataFile = "~/azmoon/" + mdb_name;
        ///////////////////////////////
        if (Session["info"] == null)
        {
            Response.Redirect("default.aspx");
        }
        else
        {

            lbl_stname.Text = Session["stname"].ToString();
            lbl_lastv.Text = Session["lastlogin"].ToString();
            lbl_schooname.Text = Session["schoolname"].ToString();

            try
            {
                ADS_get_pid.SelectParameters[0].DefaultValue = Session["stname"].ToString();
                IEnumerable ii1 = ADS_get_pid.Select(DataSourceSelectArguments.Empty);
                IEnumerator ii2 = ii1.GetEnumerator();
                if (ii2.MoveNext())
                    Session.Add("PID", ((DataRowView)ii2.Current)[0].ToString());
                else
                {
                    Context.Response.Redirect("~/studentinformation.aspx?msgazmoon=yes");
                }

            }
            catch
            {
                Context.Response.Redirect("~/studentinformation.aspx?msgazmoon=yes");
            }
            //////////////
            if (Context.Request.QueryString["id"] != null)
            {
                try
                {
                    Int32.Parse(Context.Request.QueryString["id"].ToString());
                }
                catch
                {
                    Context.Response.Redirect("~/azmoon.aspx");
                }
                GridView1.Visible = false; tb_down.Visible = true;
                Label15.Text = "کارنامه آزمون";
            }
            else
            {
                Label15.Text = "لیست آزمون ها";
                GridView1.Visible = true; tb_down.Visible = false;
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
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Context.Response.Redirect("~/azmoon.aspx?id=" + GridView1.SelectedValue.ToString());
    }
}
