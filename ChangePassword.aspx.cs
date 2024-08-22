using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePassword : System.Web.UI.Page
{
   mydb db = new mydb();
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId"] == null)
        {
            Response.Redirect("Logout.aspx");
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string st = "Select Password from PublicUser where UserId=" + Session["UserId"] + " and Password=" + txtOldPassword.Text + "";
        SqlDataReader dr = db.readall(st);
        if (dr.Read())
        {
            dr.Close();
            st = "Update PublicUser set Password='" + txtNewPassword.Text + "'  where UserId=" + Session["UserId"] + "";
            x = db.ExeQuery(st);
            if (x > 0)
            {

                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Password Updated');", true);
            }

        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Invalid Password');", true);
        }

    }
}