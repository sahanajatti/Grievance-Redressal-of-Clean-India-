using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

using System.Web.UI.WebControls;

public partial class DeptCompliants : System.Web.UI.Page
{
    string st = "";
    mydb db = new mydb();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["AuthorizeId"] == null)
        {
            Response.Redirect("Logout.aspx");
        }
        if (!IsPostBack)
        {
            fillrpt();
        }
    }
    void fillrpt()
    {
        st = @"SELECT TblComplaints.ComplaintId, TblComplaints.DeptId, TblComplaints.WarId, 
               TblComplaints.Picture1, TblComplaints.CDescription, 
               TblComplaints.ComplaintDate, TblComplaints.UserId, TblComplaints.Status, 
               TblDepartment.DeptName, TblAuthorize.AuthorizeId, PublicUser.FirstName,
               TblWard.WardNo, PublicUser.EmailId
               FROM TblComplaints INNER JOIN      TblAuthorize ON TblComplaints.DeptId = TblAuthorize.DeptId INNER JOIN
               TblDepartment ON TblComplaints.DeptId = TblDepartment.DeptId INNER JOIN
               PublicUser ON TblComplaints.UserId = PublicUser.UserId INNER JOIN
               TblWard ON TblComplaints.WarId = TblWard.WardID 
               WHERE (TblAuthorize.AuthorizeId = " + Session["AuthorizeId"] + ")";
        db.fill_rptr_ret_sqlda(st, rpt);

    }
    protected void rpt_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

        Label lblStatus = (Label)e.Item.FindControl("lblStatus");
        if (e.CommandName == "Attend")
        {
            if (lblStatus.Text == "Pending")
            {
                st = "Update  TblComplaints set Status='UnderProcess' where ComplaintId=" + e.CommandArgument;
                int x = db.ExeQuery(st);
                if (x > 0)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Complaint Attended');", true);

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Try Again');", true);
                }
            }
        }
        else if (e.CommandName == "Complete")
        {

            HiddenField hfEmailId = (HiddenField)e.Item.FindControl("hfEmailId");
            if (lblStatus.Text == "UnderProcess")
            {
                string EmailBody = "<h3><b>Your Complaint Details</b></h3><br/>";
                EmailBody += "<b>Status:</b> Completed";

                EmailClass.SendEmailId(hfEmailId.Value, "Your Complaint Details", EmailBody);



                st = "Update  TblComplaints set Status='Completed' where ComplaintId=" + e.CommandArgument;
                int x = db.ExeQuery(st);
                if (x > 0)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Completed');", true);

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Try Again');", true);
                }
            }
            else if (lblStatus.Text == "Completed")
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('This Complaint is already Completed');", true);
            }
        }
        fillrpt();
    }
    protected void rpt_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            Label lblStatus = (Label)e.Item.FindControl("lblStatus");
            LinkButton lnkAttend = (LinkButton)e.Item.FindControl("lnkAttend");
            LinkButton lnkComplete = (LinkButton)e.Item.FindControl("lnkComplete");

            if (lblStatus.Text == "Pending")
            {
                lnkComplete.Visible = false;
                lnkAttend.Visible = true;
                lblStatus.ForeColor = System.Drawing.Color.Red;
            }
            else if (lblStatus.Text == "Completed")
            {
                lblStatus.ForeColor = System.Drawing.Color.Green;
                lnkAttend.Visible = false;
            }
            else
            {
                lnkComplete.Visible = true;
                lnkAttend.Visible = false;
            }
        }

    }
}