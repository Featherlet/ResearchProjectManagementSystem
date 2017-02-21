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


public partial class StudentDaBian : System.Web.UI.Page
{
    string projectname1;
    string projectname2;
    string midstarttime;
    string midendtime;
    string midlocation;
    string finalstarttime;
    string finalendtime;
    string finallocation;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnconfirm1_Click(object sender, EventArgs e)
    {
        projectname1=DropDownList1.SelectedValue.ToString();
        midstarttime=MidStartTime.Text.ToString();
        midendtime=MidEndTime.Text.ToString();
        midlocation=MidLocation.Text.ToString();

      //  Response.Write("<script>alert(\"" + projectname1 + "\")</script>");
        string sql = ConfigurationManager.ConnectionStrings["ProjectSystemConnectionString2"].ToString();
        SqlConnection conn1 = new SqlConnection(sql);
        conn1.Open();
        SqlCommand comm1 = new SqlCommand();
        string check = "select * from MidtermExam where ProjectId='" + projectname1 + "'";
        comm1.Connection = conn1;
        comm1.CommandText = check;
        SqlDataReader dr1 = comm1.ExecuteReader();


        if (dr1.HasRows == false)
        {
            SqlConnection conn = new SqlConnection(sql);
            conn.Open();
            SqlCommand comm = new SqlCommand();
            string search = "insert into MidtermExam(ProjectId,MidDate,MidTime,MidLocation) values('" + projectname1 + "','" + midstarttime + "','" + midendtime + "','" + midlocation + "')";
            comm.CommandText = search;
            comm.Connection = conn;
            comm.ExecuteReader();
            Response.Write("<Script>alert(\"信息添加成功\")</Script>");
        }
        else
        {
            Response.Write("<Script>alert(\"信息无法添加，已有记录\")</Script>");
        }

    }
    protected void btnconfirm2_Click(object sender, EventArgs e)
    {
        projectname2 = DropDownList2.SelectedValue.ToString();
        finalstarttime = FinalStartTime.Text.ToString();
        finalendtime = FinalEndTime.Text.ToString();
        finallocation = FinalLocation.Text.ToString();

      //  Response.Write("<script>alert(\""+projectname2+"\")</script>");
        string sql = "Data Source=SC-201505151153;Initial Catalog=ProjectSystem;Integrated Security=True";
        SqlConnection conn1 = new SqlConnection(sql);
        conn1.Open();
        SqlCommand comm1 = new SqlCommand();
        string check = "select * from FinalExam where ProjectId='" + projectname2 + "'";
        comm1.Connection = conn1;
        comm1.CommandText = check;
        SqlDataReader dr1 = comm1.ExecuteReader();


        if (dr1.HasRows == false)
        {
            SqlConnection conn = new SqlConnection(sql);
            conn.Open();
            SqlCommand comm = new SqlCommand();
            string search = "insert into FinalExam(ProjectId,FinalDate,FinalTime,FinalLocation) values('" + projectname2 + "','" + finalstarttime + "','" + finalendtime + "','" + finallocation + "')";
            comm.CommandText = search;
            comm.Connection = conn;
            comm.ExecuteReader();
            Response.Write("<Script>alert(\"信息添加成功\")</Script>");
        }
        else
        {
            Response.Write("<Script>alert(\"信息无法添加，已有记录\")</Script>");
        }

    }
}
