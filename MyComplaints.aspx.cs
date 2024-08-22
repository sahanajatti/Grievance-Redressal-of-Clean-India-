using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class MyComplaints : System.Web.UI.Page
{
    string st = "";
    mydb db = new mydb();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId"] == null)
        {
            Response.Redirect("Logout.aspx");
        }
        if (!IsPostBack)
        {
            st = @"SELECT        TblComplaints.ComplaintId, TblComplaints.DeptId, TblComplaints.WarId, TblComplaints.Picture1, TblComplaints.CDescription, TblComplaints.ComplaintDate, TblComplaints.Status, TblWard.WardNo, 
                         TblDepartment.DeptName, TblComplaints.UserId
FROM            TblComplaints INNER JOIN
                         TblWard ON TblComplaints.WarId = TblWard.WardID INNER JOIN
                         TblDepartment ON TblComplaints.DeptId = TblDepartment.DeptId
WHERE        (TblComplaints.UserId = " + Session["UserId"] + ")";
            db.fill_rptr_ret_sqlda(st, rpt);
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
        }
    }
}