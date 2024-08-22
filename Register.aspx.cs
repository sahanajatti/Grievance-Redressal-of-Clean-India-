using System;

using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    string st = "";
    SqlDataReader dr;
    mydb db = new mydb();
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    void ClearAll()
    {
        txtFname.Text = "";
        txtLname.Text = "";
        txtEmailId.Text = "";

        txtPwd.Text = "";
        txtMob.Text = "";
        txtAddress.Text = "";
       
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        st = "Insert into PublicUser(FirstName,LastName,EmailId,Password,PhoneNo,Address) values";
        st += "('" + txtFname.Text + "','" + txtLname.Text + "','" + txtEmailId.Text + "','" + txtPwd.Text + "','" + txtMob.Text + "','" + txtAddress.Text + "')";
        x = db.ExeQuery(st);
        if (x > 0)
        {
            ClearAll();
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Register Successfully');", true);
    
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Try Again');", true);
        }
    }
}