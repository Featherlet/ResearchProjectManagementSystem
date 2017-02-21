using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class StudentMain : System.Web.UI.Page
{
    String stuname = "";
    String stuclass = "";
    String stuid = "";
    String stumail = "";
    String stuphone = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        String stuid = Session["userid"].ToString();
        SqlDataSource1.SelectCommand = "select * from Stu_Application_Info inner join Teachers on Stu_Application_Info.TeacherId=Teachers.TchrId" +
            " where Stu_Application_Info.StuId='" + stuid + "'";
        string sql = "Data Source=(local);Initial Catalog=ProjectSystem;Integrated Security=false ;User ID=sa;Password=1234";
        SqlConnection conn = new SqlConnection(sql);
        conn.Open();
        
        string find = "select * from Students where StuId ='" + stuid + "'";
        SqlCommand comm = new SqlCommand();
        comm.CommandText = find;
        comm.Connection = conn;
        SqlDataReader dr = comm.ExecuteReader();
        if (dr.HasRows == true)
        {
            while (dr.Read())
            {
                stuname = dr["StuName"].ToString();
                stuclass = dr["StuClass"].ToString();
                stumail = dr["SMail"].ToString();
                stuphone = dr["SPhone"].ToString();
            }
        }
        dr.Close();
        conn.Close();
        this.LabelName.Text = stuname;
        this.LabelClass.Text = stuclass;
        this.LabelId.Text = stuid;
        this.LabelMail.Text = stumail;
        this.LabelPhone.Text = stuphone;
    }
}