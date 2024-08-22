using System;
using System.Data.SqlClient;

using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddDepartment : System.Web.UI.Page
{
    string st = "";
    mydb db = new mydb();
    SqlDataReader dr;
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["AdminId"] == null)
        {
            Response.Redirect("Logout.aspx");
        }
        if (!IsPostBack)
        {
            Fillrpt();
        }
    }

    private void Fillrpt()
    {
        st = "Select * from TblDepartment";
        db.fill_rptr_ret_sqlda(st, rpt);
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        st = "Select DeptName from  TblDepartment where DeptName='" + txtDeptName.Text + "'";
        dr = db.readall(st);
        if (dr.Read())
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Department Name Already Exists');", true);
        }
        else
        {
            dr.Close();
            st = "Insert into TblDepartment(DeptName) values('" + txtDeptName.Text + "') ";
            x = db.ExeQuery(st);
            if (x > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('New Department Added.');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Try Again');", true);
            }

        }
        Fillrpt();
    }
    protected void rpt_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            st = "Delete from TblDepartment where DeptId=" + e.CommandArgument;
            x = db.ExeQuery(st);
            if (x > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Department Deleted.');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Try Again');", true);
            }

        }
        Fillrpt();
    }
}