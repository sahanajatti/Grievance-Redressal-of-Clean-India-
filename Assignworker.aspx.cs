using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AssignWorker : System.Web.UI.Page
{
    string st = "";
    mydb db = new mydb();
    SqlDataReader dr;
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Bind assigned workers data to repeater
            BindAssignedWorkers();
        }
    }

    protected void btnAssign_Click(object sender, EventArgs e)
    {
        // Logic to assign worker
        // You can implement your logic here to assign a worker to a task or project

        // After assigning, rebind the repeater
        BindAssignedWorkers();
    }

    protected void rptAssignedWorkers_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        
        if (e.CommandName == "Unassign")
        {
            // Logic to unassign worker
            // You can implement your logic here to unassign a worker from a task or project

            // After unassigning, rebind the repeater
            //HiddenField hfEmailId = (HiddenField)e.Item.FindControl("hfEmailId");

            string EmailBody = "<h3><b>Worker Assigned</b></h3><br/>";
            EmailBody += "<b>Status:</b> Assigned the work";

            EmailClass.SendEmailId("123faridaaunty@gmail.com", "Worker Assigned", EmailBody);

            //ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Assigned');", true);


            //st = "Update  TblComplaints set Status='Completed' where ComplaintId=" + e.CommandArgument;
            //int x = db.ExeQuery(st);
            //if (x > 0)
            //{
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Worker Assigned');", true);

            //}
            //else
            //{
            //    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Try Again');", true);
            //}
            BindAssignedWorkers();

        }
    }
    private void BindAssignedWorkers()
    {
        // Logic to retrieve assigned workers data and bind to the repeater rptAssignedWorkers
        // You need to implement your logic here to retrieve assigned workers data from your database or any other source
        // Example:
        // rptAssignedWorkers.DataSource = YourDataSource;
        // rptAssignedWorkers.DataBind();
        st = "Select * from workers order by Id desc";
        db.fill_rptr_ret_sqlda(st, rptAssignedWorkers);
    }
}
