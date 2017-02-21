using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TeacherPages_TeacherMain : System.Web.UI.Page
{
    String tname = "";
    String tdepartment = "";
    String tid = "";
    String tmail = "";
    String tphone = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        String tid = Session["userid"].ToString();

        string sql = "Data Source=(local);Initial Catalog=ProjectSystem;Integrated Security=false ;User ID=sa;Password=1234";
        SqlConnection conn = new SqlConnection(sql);
        conn.Open();
        //查找用户名是否有重复
        string find = "select * from Teachers where TchrId ='" + tid + "'";
        SqlCommand comm = new SqlCommand();
        comm.CommandText = find;
        comm.Connection = conn;
        SqlDataReader dr = comm.ExecuteReader();
        if (dr.HasRows == true)
        {
            while (dr.Read())
            {
                tname = dr["TchrName"].ToString();
                tdepartment= dr["TchrDepartment"].ToString();
                tmail = dr["TMail"].ToString();
                tphone = dr["TPhone"].ToString();
            }
        }
        dr.Close();
        conn.Close();
        this.LabelName.Text = tname;
        this.LabelDepartment.Text = tdepartment;
        this.LabelId.Text = tid;
        this.LabelMail.Text = tmail;
        this.LabelPhone.Text = tphone;
    }
}