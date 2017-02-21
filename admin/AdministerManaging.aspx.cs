using System;
using System.Collections;
using System.Configuration;
using System.Data;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.Sql;
using System.Data.SqlClient;


public partial class AdministerManaging : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void addConfirm_Click(object sender, EventArgs e)
    {
        String id = IDinput.Text.ToString();
        String name = Nameinput.Text.ToString();
        String password = Passinput.Text.ToString();
        String sql = ConfigurationManager.ConnectionStrings["ProjectSystemConnectionString2"].ToString();
        SqlConnection conn = new SqlConnection(sql);
        conn.Open();
        String search = "select * from Commanders where CommId='" + id + "'";
        SqlCommand comm = new SqlCommand();
        comm.CommandText = search;
        comm.Connection = conn;

        SqlDataReader dr = comm.ExecuteReader();
        if (dr.HasRows == true)
        {
            Response.Write("<script>alert('该用户的信息已经存在');</script>");
        }
        else
        {
            String insert="insert into Commanders values('" + id + "','" + name + "','" + password + "')";
            SqlConnection conn1 = new SqlConnection(sql);
            conn1.Open();
            SqlCommand comm1 = new SqlCommand();
            comm1.CommandText = insert;
            comm1.Connection = conn1;
            comm1.ExecuteReader();
            Response.Write("<script>alert('用户信息添加成功');</script>");
            Response.Redirect("AdministerManaging.aspx");

        }
    }
}
