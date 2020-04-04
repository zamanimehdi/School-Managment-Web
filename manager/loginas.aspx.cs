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

public partial class manager_loginas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["mschoolid"] == null) Context.Response.Redirect("~/login.aspx");
        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        sds_login.SelectParameters[0].DefaultValue = Session["mschoolid"].ToString() + GridView1.SelectedDataKey.Value.ToString();
        IEnumerable le = sds_login.Select(DataSourceSelectArguments.Empty);
        IEnumerator or = le.GetEnumerator(); or.MoveNext();
        string[] inform = new string[3];
        inform[0] = Session["mschoolid"].ToString() + GridView1.SelectedDataKey.Value.ToString();
        inform[1] = "";
        try // yek bar dar db naghes mogheye test error midad
        {
            inform[2] = ((DataRowView)or.Current)[2].ToString();
        }
        catch
        {
        }
        Session.Add("info", inform);
        Response.Redirect("~/studentinformation.aspx");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            HiddenField1.Value = "mehdi zamnai +989112148248";
        }
        else
        {
            HiddenField1.Value = TextBox1.Text.Replace('ی', 'ي');
            SqlDataSource1.SelectParameters["Param2"].DefaultValue = TextBox1.Text;
            SqlDataSource1.SelectParameters["Param3"].DefaultValue = HiddenField1.Value;
            SqlDataSource1.DataBind();
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session.Abandon();
        Context.Response.Redirect("~/login.aspx");
    }
}