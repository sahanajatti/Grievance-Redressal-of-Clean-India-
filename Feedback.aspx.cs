using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

using System.Web.UI.HtmlControls;

public partial class Feedback : System.Web.UI.Page
{
    string st = "";
    SqlDataReader dr;
    mydb db = new mydb();
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   

    protected void BTNSUBMIT_Click(object sender, EventArgs e)
    {
        st = "Insert into Feedbacks(UserId,FeedDate,Description) values";
        st += "('" + Session["UserId"] + "',GETDATE(),'" + txtfeedback.Text + "')";
        x = db.ExeQuery(st);
        if (x > 0)
        {
            txtfeedback.Text = "";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Thank you for your feedback');", true);

        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Try Again');", true);
        }
    }
}