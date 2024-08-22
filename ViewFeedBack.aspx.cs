using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewFeedBack : System.Web.UI.Page
{
    string st = "";
    mydb db = new mydb();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        st = @"SELECT  Feedbacks.FeedbackID, Feedbacks.UserId, Feedbacks.FeedDate as FeedDate, Feedbacks.Description as Description, PublicUser.FirstName as FirstName FROM   PublicUser INNER JOIN Feedbacks ON PublicUser.UserId = Feedbacks.UserId";

        //db.fill_rptr_ret_sqlda(st, rpt);

        ////
        SqlCommand cmd = new SqlCommand(st, new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\sahan\OneDrive\ドキュメント\cleanindia.mdf;Integrated Security=True;Connect Timeout=30;MultipleActiveResultSets=true"));

        cmd.Connection.Open();
        rpt.DataSource = cmd.ExecuteReader();
        rpt.DataBind();
        
        cmd.Connection.Close();
        cmd.Connection.Dispose();
        //if (!IsPostBack)
        //{
        //    st = @"SELECT  Tbl_FeedBack.FeedbackID, Tbl_FeedBack.UserId, Tbl_FeedBack.FeedDate as FeedDate, Tbl_FeedBack.Description as Description, PublicUser.FirstName as FirstName FROM   PublicUser INNER JOIN Tbl_FeedBack ON PublicUser.UserId = Tbl_FeedBack.UserId";

        //    db.fill_rptr_ret_sqlda(st, rpt);

        //    //st = "Select ,DeptName from TblDepartment";


        //}
    }
    
    }
