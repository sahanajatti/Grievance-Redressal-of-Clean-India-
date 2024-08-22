using System;

using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class AddAuthorizeDetails : System.Web.UI.Page
{
    string st = "";
    mydb db = new mydb();
    SqlDataReader dr;
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            st = "Select DeptId,DeptName from TblDepartment";
            db.fill_drop_with_id(st, ddlDpt);

            Fillrpt();
        }
    }
    void Fillrpt()
    {
        st = @"SELECT TblDepartment.DeptName, TblAuthorize.AuthorizeId, TblAuthorize.FullName, TblAuthorize.EmailId, TblAuthorize.Password, TblAuthorize.Phone, TblAuthorize.Address
               FROM TblDepartment INNER JOIN       TblAuthorize ON TblDepartment.DeptId = TblAuthorize.DeptId";
        db.fill_rptr_ret_sqlda(st, rpt);

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
       
    }
    protected void rpt_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            st = "Delete from TblAuthorize where AuthorizeId=" + e.CommandArgument;
            x = db.ExeQuery(st);
            if (x > 0)
            {
                Fillrpt();
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Deleted');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Try again');", true);

            }
            Fillrpt();
        }
    }

    protected void btnAdd_Click1(object sender, EventArgs e)
    {
        st = "Select DeptId from  TblAuthorize where DeptId=" + ddlDpt.SelectedValue + "";
        dr = db.readall(st);
        if (dr.Read())
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('This Department is already Assigned');", true);

        }
        else
        {
            st = "Insert into TblAuthorize(DeptId,FullName,EmailId,Password,Phone,Address) values";
            st += "(" + ddlDpt.SelectedValue + ",'" + txtFullName.Text + "','" + txtEmailId.Text + "','" + txtPwd.Text + "','" + txtMob.Text + "','" + txtAddress.Text + "')";
            x = db.ExeQuery(st);
            if (x > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Authorize Details Added');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Try again');", true);

            }
        }
        Fillrpt();
    }
}