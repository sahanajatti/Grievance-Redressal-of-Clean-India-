using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (ddlUser.SelectedItem.Text == "Admin")
        {
            if (txtEmailId.Text == "admin@gmail.com" & txtPassword.Text == "admin")
            {
                Session["AdminId"] = "AdminId";
                Response.Redirect("AddAuthorizeDetails.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert(' Invalid EmailId or Password');", true);
            }
        }
        else if (ddlUser.SelectedItem.Text == "Public User")
        {
            mydb db = new mydb();
            string st = "Select UserId,EmailId,Password from PublicUser where EmailId='" + txtEmailId.Text + "' and Password='" + txtPassword.Text + "'";
            SqlDataReader dr = db.readall(st);
            if (dr.Read())
            {
                Session["UserId"] = dr["UserId"].ToString();
                Session["EmailId"] = dr["EmailId"].ToString();
                Response.Redirect("AddComplaint.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Invalid EmailId or Password');", true);
            }
        }
        else if (ddlUser.SelectedItem.Text == "Department Section")
        {
            mydb db = new mydb();
            string st = "Select AuthorizeId,EmailId,Password from TblAuthorize where EmailId='" + txtEmailId.Text + "' and Password='" + txtPassword.Text + "'";
            SqlDataReader dr = db.readall(st);
            if (dr.Read())
            {
                Session["AuthorizeId"] = dr["AuthorizeId"].ToString();
                Response.Redirect("DeptCompliants.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Invalid EmailId or Password');", true);
            }
        }
    }
}