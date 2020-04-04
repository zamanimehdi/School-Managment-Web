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

public partial class sendmessage : System.Web.UI.Page
{
    string grade = "";
    string majorname = "";
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

            //Make School Info
            sds_schoolInfo.SelectParameters["schoolID"].DefaultValue = Session["schoolid"].ToString();
            sds_schoolInfo.Select(DataSourceSelectArguments.Empty);
            IEnumerable ib = sds_studentInfo.Select(DataSourceSelectArguments.Empty);
            IEnumerator it = ib.GetEnumerator();
            it.MoveNext();
            grade = ((DataRowView)it.Current)["grade"].ToString();
            majorname = ((DataRowView)it.Current)["majorname"].ToString();
            sds_teacherselect.SelectParameters["Param3"].DefaultValue = grade;
            sds_teacherselect.SelectParameters["Param4"].DefaultValue = majorname;
            sds_teacherselect.Select(DataSourceSelectArguments.Empty);
            ///
            if (Context.Request.QueryString["id"] != null)
            {
                try
                {
                    Int32.Parse(Context.Request.QueryString["id"].ToString());
                }
                catch
                {
                    Context.Response.Redirect("~/sendmessage.aspx");
                }
                tb_contentmsg.Visible = true;
                DataList1.Visible = false;
                Label8.Text = "ارسال پیام";
                if (Context.Request.QueryString["id"] == "-1")
                    Label9.Visible = false;
                else Label9.Visible = true;
            }   
            if (Context.Request.QueryString["msg"] != null)
            {
                tb_contentmsg.Visible = false;
                DataList1.Visible = true;
                
                if (!ClientScript.IsStartupScriptRegistered("alert"))
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alertMe();", true);
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
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        if (txt_msg.Text != "")
        {
            sds_insertmsg.InsertParameters["Param1"].DefaultValue = Session["schoolid"].ToString();
            sds_insertmsg.InsertParameters["Param2"].DefaultValue = Session["studentid"].ToString();
            sds_insertmsg.InsertParameters["Param3"].DefaultValue = Context.Request.QueryString["id"].ToString();
            sds_insertmsg.InsertParameters["Param4"].DefaultValue = txt_msg.Text.Replace("\r\n", "<br>");
            System.Globalization.PersianCalendar pc = new System.Globalization.PersianCalendar();
            DateTime dt = DateTime.Now;
            string datetime1 = pc.GetYear(dt).ToString() + "/" + (pc.GetMonth(dt).ToString().Length == 1 ? "0" + pc.GetMonth(dt).ToString() : pc.GetMonth(dt).ToString()) + "/" + (pc.GetDayOfMonth(dt).ToString().Length == 1 ? "0" + pc.GetDayOfMonth(dt).ToString() : pc.GetDayOfMonth(dt).ToString()) + " " + (DateTime.Now.Hour.ToString().Length == 1 ? "0" + DateTime.Now.Hour.ToString() : DateTime.Now.Hour.ToString()) + ":" + (DateTime.Now.Minute.ToString().Length == 1 ? "0" + DateTime.Now.Minute.ToString() : DateTime.Now.Minute.ToString());
            sds_insertmsg.InsertParameters["Param5"].DefaultValue = datetime1;
            sds_insertmsg.Insert();
            if (Context.Request.QueryString["id"] == "-1")
            {
                Context.Response.Redirect("~/studentinformation.aspx?send=ok");
            }
            else
            Context.Response.Redirect("~/sendmessage.aspx?msg=ok");
        }
        else lbl_msg.Text = "<center>" + "متن پیام نمی تواند خالی باشد" + "</center>";
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        if (Context.Request.QueryString["id"] == "-1")
        {
            Context.Response.Redirect("studentinformation.aspx");
        }
        else
        {
            tb_contentmsg.Visible = false;
            DataList1.Visible = true;
            Label9.Visible = true;
        }
    }
}