using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class ViewComplaints : System.Web.UI.Page
{
    string st = "";
    mydb db = new mydb();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminId"] == null)
        {
            Response.Redirect("Logout.aspx");
        }

        if (!IsPostBack)
        {

            divstatus.Visible = false;
            st = @"SELECT TblDepartment.DeptName, TblComplaints.ComplaintId, TblComplaints.DeptId, TblComplaints.WarId, TblComplaints.Picture1, TblComplaints.CDescription, TblComplaints.ComplaintDate, TblComplaints.UserId, 
                         TblComplaints.Status, TblWard.WardNo, PublicUser.FirstName
FROM            PublicUser INNER JOIN
                         TblComplaints ON PublicUser.UserId = TblComplaints.UserId INNER JOIN
                         TblDepartment ON TblComplaints.DeptId = TblDepartment.DeptId INNER JOIN
                         TblWard ON TblComplaints.WarId = TblWard.WardID";
            db.fill_rptr_ret_sqlda(st, rpt);

            st = "Select DeptId,DeptName from TblDepartment";
            db.fill_drop_with_id(st, ddl);

        }

    }
    protected void rpt_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            Label lblStatus = (Label)e.Item.FindControl("lblStatus");
            if (lblStatus.Text == "Pending")
            {
                lblStatus.ForeColor = System.Drawing.Color.Red;
            }
            else if(lblStatus.Text=="UnderProcess")
            {
                lblStatus.ForeColor = System.Drawing.Color.Yellow;
            }
        }
    }
    protected void rpt_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            st = "Delete from TblComplaints where ComplaintId=" + e.CommandArgument;
            int x = db.ExeQuery(st);
            if (x > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Deleted');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Try again');", true);

            }
        }
    }

    protected void ddl_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (ddl.SelectedItem.Text == "Select")
        {
            Response.Redirect("ViewComplaints.aspx");
        }
        st = @" SELECT TblDepartment.DeptName, TblComplaints.ComplaintId, TblComplaints.DeptId, 
                TblComplaints.WarId, TblComplaints.Picture1, TblComplaints.CDescription, 
                TblComplaints.ComplaintDate, TblComplaints.UserId, 
                TblComplaints.Status, TblWard.WardNo, PublicUser.FirstName
                FROM PublicUser INNER JOIN TblComplaints ON PublicUser.UserId = TblComplaints.UserId
                 INNER JOIN
                TblDepartment ON TblComplaints.DeptId = TblDepartment.DeptId INNER JOIN
                TblWard ON TblComplaints.WarId = TblWard.WardID
                Where TblDepartment.DeptId=" + ddl.SelectedValue + "";
        db.fill_rptr_ret_sqlda(st, rpt);
        if (rpt.Items.Count == 0)
        {
            divrecords.Visible = false;
            divstatus.Visible = true;
        }
        else
        {
            divrecords.Visible = true;
            divstatus.Visible = false;
        }
    }
}