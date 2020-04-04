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
    protected void Page_Load(object sender, EventArgs e)
    {

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
            TextBox_userName.Text = "-1";

        }
        IEnumerable ia = sds_login.Select(DataSourceSelectArguments.Empty);
        if (ia != null)
        {
            IEnumerator it = ia.GetEnumerator();
            if (it.MoveNext())
                if (TextBox_Password.Text == ((DataRowView)it.Current)["pass"].ToString())
                {
                    sds_done.SelectParameters[0].DefaultValue = TextBox_userName.Text;
                    IEnumerable ia_done = sds_done.Select(DataSourceSelectArguments.Empty);
                    IEnumerator it_done = ia_done.GetEnumerator();
                    it_done.MoveNext();
                    if (((DataRowView)it_done.Current)["state"].ToString()!="done")
                        Context.Response.Redirect("~/manager/nodone.htm");
                    Session.Timeout = 2000;
                    Session.Add("mschoolid", TextBox_userName.Text);
                    Context.Response.Redirect("~/manage.aspx");
                }
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Context.Response.Redirect("http:\\www.msmsoft.ir");
    }
}
