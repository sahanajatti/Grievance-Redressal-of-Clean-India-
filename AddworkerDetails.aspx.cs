using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class AddWorkerDetails : System.Web.UI.Page
{
    string st = "";
    mydb db = new mydb();
    SqlDataReader dr;
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Bind data to repeater or perform other initializations
            Fillrpt();
        }
    }
    private void Fillrpt()
    {
        st = "Select * from workers order by Id desc";
        db.fill_rptr_ret_sqlda(st, rptWorkers);
    }

    protected void btnAddWorker_Click(object sender, EventArgs e)
    {
        try
        {            
            st = "Insert into workers(name,email_id,phone_number) values('" + txtName.Text + "','" + txtEmail.Text + "','" + txtPhone.Text + "') ";

            x = db.ExeQuery(st);
            Response.Write(Convert.ToString(x));
            if (x > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('New workers Added.');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Try Again');", true);
            }
            txtName.Text= txtEmail.Text= txtPhone.Text=string.Empty;
            //Fillrpt();
            Page.Response.Redirect(Page.Request.Url.ToString(), true);

        }
        catch (global::System.Exception)
        {

            throw;
        }

    }

    protected void rptWorkers_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            st = "Delete from workers where Id=" + e.CommandArgument;
            x = db.ExeQuery(st);
            if (x > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Worker Deleted.');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Try Again');", true);
            }
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }
        Fillrpt();
    }
}