using System;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Collections;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class _Default : System.Web.UI.Page 
{
    string datetime1;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["schoolid"] != null) Context.Response.Redirect("~/studentinformation.aspx");
        }
        catch
        {
        }
        if (Context.Request.QueryString["sid"] != null)
        {
            try
            {
                Int32.Parse(Context.Request.QueryString["sid"].ToString());
                tb_h.Visible = false;
            }
            catch
            {
                Context.Response.Redirect("~/default.aspx");
            }
        }
        System.Globalization.PersianCalendar pc = new System.Globalization.PersianCalendar();
        DateTime dt = DateTime.Now;
        datetime1 = pc.GetYear(dt).ToString() + "/" + (pc.GetMonth(dt).ToString().Length == 1 ? "0" + pc.GetMonth(dt).ToString() : pc.GetMonth(dt).ToString()) + "/" + (pc.GetDayOfMonth(dt).ToString().Length == 1 ? "0" + pc.GetDayOfMonth(dt).ToString() : pc.GetDayOfMonth(dt).ToString()) + "  ساعت " + (DateTime.Now.Hour.ToString().Length == 1 ? "0" + DateTime.Now.Hour.ToString() : DateTime.Now.Hour.ToString()) + ":" + (DateTime.Now.Minute.ToString().Length == 1 ? "0" + DateTime.Now.Minute.ToString() : DateTime.Now.Minute.ToString());
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox_userName.Text = "1234165";
        TextBox_Password.Text = "3147";
        Button1_Click(null, null);
    }
    protected void Button1_Click(object sender, ImageClickEventArgs e)
    {
        string userName;
        try
        {
            userName = Convert.ToInt64(TextBox_userName.Text).ToString();
        }
        catch
        {
            userName = "-1";
        }
        string pass = TextBox_Password.Text.Replace(" ", "").Replace('*', ' ').Replace("=", "").Replace("'","").Replace('"','A');
        sds_login.SelectParameters["user"].DefaultValue = userName;
        IEnumerable le = sds_login.Select(DataSourceSelectArguments.Empty);
        IEnumerator or = le.GetEnumerator();
        if (or.MoveNext() && ((DataRowView)or.Current)[0].ToString() == userName && ((DataRowView)or.Current)[1].ToString() == pass)
        {
            sds_getstate.SelectParameters[0].DefaultValue = userName.Substring(0, 4);
            IEnumerable i1= sds_getstate.Select(DataSourceSelectArguments.Empty);
            IEnumerator i2 = i1.GetEnumerator();
            i2.MoveNext();
            //======== بروز رسانی
            if (((DataRowView)i2.Current)[0].ToString() == "start") Context.Response.Redirect("ontransfer.htm");
            //======== لغو قرار داد
            if (((DataRowView)i2.Current)[1].ToString() == "DC") Context.Response.Redirect("ContractCancellation.htm"); 
            //========
            string[] inform = new string[3];
            inform[0] = userName;
            inform[1] = pass;
            inform[2] = ((DataRowView)or.Current)[2].ToString();
            Session.Add("info", inform);
            sds_login.UpdateParameters["user"].DefaultValue = userName;
            sds_login.UpdateParameters["lastV"].DefaultValue = datetime1;
            sds_login.Update();
            Response.Redirect("studentinformation.aspx");
        }
        else
        {
            if (TextBox_userName.Text == "")
                Label1.Text = "نام کاربری را وارد کنید";
            else
                Label1.Text = "نام کاربری یا کلمه عبور نادرست است";
            if (!ClientScript.IsStartupScriptRegistered("hide"))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "hide", "tb_hide()", true);

            }
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Context.Response.Redirect("http:\\www.msmsoft.ir");
    }
}
