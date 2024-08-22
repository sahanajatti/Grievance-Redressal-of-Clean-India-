using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using System.IO;
public partial class AddComplaint : System.Web.UI.Page
{
    string st = "";
    mydb db = new mydb();
    SqlDataReader dr;
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId"] == null)
        {
            Response.Redirect("Logout.aspx");
        }
        if (!IsPostBack)
        {
            st = "Select DeptId,DeptName from TblDepartment";
            db.fill_drop_with_id(st, ddlDpt);

            st = "Select WardID,WardNo from TblWard";
            db.fill_drop_with_id(st, ddlWardId);
        }
    }
    void ClearAll()
    {
        txtComplaintDesc.Text = "";
        ddlWardId.ClearSelection();
        ddlDpt.ClearSelection();
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        string imgname = "";
        if (file.HasFile)
        {
            string ext = Path.GetExtension(file.PostedFile.FileName);
            file.SaveAs(Server.MapPath("~/ComplaintImg") + "\\" + DateTime.Now.ToString("ddMMyyyyhhmmss") + ext);
            imgname = "ComplaintImg/" + DateTime.Now.ToString("ddMMyyyyhhmmss") + ext;

        }
        else
        {
            imgname = "Not Available";
        }

        st = "Insert into TblComplaints(DeptId,WarId,Picture1,CDescription,ComplaintDate,UserId,Status) values";
        st += "(" + ddlDpt.SelectedValue + "," + ddlWardId.SelectedValue + ",'" + imgname + "','" + txtComplaintDesc.Text + "',GETDATE()," + Session["UserId"] + ",'Pending')";
        x = db.ExeQuery(st);
        if (x > 0)
        {

            //string EmailBody = "<b><h2>Your Compliaint Details</b></h2><br/><hr/>";
            //EmailBody += "<b>Your Ward : " + ddlWardId.SelectedItem.Text + "</b><br/>";
            //EmailBody += "<b>Department  : " + ddlDpt.SelectedItem.Text + "</b><br/>";
            //EmailBody += "<b>Complaint Description  : " + txtComplaintDesc.Text + "</b><br/>";
            //EmailBody += "<b>Complaint Date  : " + System.DateTime.Now + "</b><br/>";



            //EmailClass.SendEmailId(Session["EmailId"].ToString(), "Your Complaint Details", EmailBody);
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('New Complaint Added');", true);
            ClearAll();
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Try Again');", true);

        }

    }
}