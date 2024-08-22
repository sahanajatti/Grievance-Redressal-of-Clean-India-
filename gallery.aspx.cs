using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class ViewGallery : System.Web.UI.Page
{
    string query = "";
    mydb db = new mydb();
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Assuming you have a table named Gallery with fields: ImageID, ImageUrl
            //query = "SELECT ImageUrl FROM Gallery"; // Adjust your query according to your database schema
            //db.fill_rptr_ret_sqlda(query, rptGallery); // Assuming rptGallery is the ID of your Repeater control
            string[] ImageUrl = { "~/img/banner-bg", "~/img/dog.png", "~/img/download.jpg", "~/img/ipad.png" };
        }
    }
}
