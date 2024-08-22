using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class USERDETAILLS : System.Web.UI.Page
{
    string st = "";
    SqlDataReader dr;
    mydb db = new mydb();
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminId"] == null)
        {
            Response.Redirect("LOGOUT.aspx");
        }
        if(!IsPostBack)
        {
            fill();
        }
    }
    private void fill()
    {
        st = "select * from PublicUser";
        db.fill_rptr_ret_sqlda(st,rep);
    }
    protected void rep_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            st = "Delete from PublicUser where UserId=" + e.CommandArgument;
            x = db.ExeQuery(st);
            if (x > 0)
            {
                fill();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "<script>alert('Record Deleted')</script>", false);

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "<script>alert('Try again')</script>", false);
            }
        }
    }
}