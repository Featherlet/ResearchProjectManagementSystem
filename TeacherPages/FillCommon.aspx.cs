using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TeacherPages_FillCommon : System.Web.UI.Page
{
    protected string tid = "";
    String projectname = "";
    String commontype = "";
    String common = "";
    String practical = ""; 
    String innovate= ""; 
    String shortcoming = ""; 
    String grade = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        tid = Session["userid"].ToString();
        SqlDataSource1.SelectCommand = "select DISTINCT ProjectName from Expert_Commons_Project inner join ProjectInformation on " +
            "Expert_Commons_Project.ProjectId = ProjectInformation.ProjectId where ProjectInformation.TchrId='" + tid + "'";
    }

    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        projectname = DropDownList2.SelectedItem.ToString();
        commontype = DropDownList1.SelectedValue.ToString();
        common = TBCommon.Text.ToString();
        practical = TBpractical.Text.ToString();
        innovate = TBinnovate.Text.ToString();
        shortcoming =TBshort.Text.ToString();
        grade = TBgrade.Text.ToString();

        string sql = "Data Source=(local);Initial Catalog=ProjectSystem;Integrated Security=false ;User ID=sa;Password=1234";
        SqlConnection conn = new SqlConnection(sql);
        conn.Open();

        string find = "select * from ProjectInformation where TchrId ='" + tid + "' and ProjectName = '" + projectname + "'";
        SqlCommand comm = new SqlCommand();
        comm.CommandText = find;
        comm.Connection = conn;
        SqlDataReader dr = comm.ExecuteReader();
        if (dr.HasRows == true)
        {
            if (dr.Read())
            {
                string projectid = dr["ProjectId"].ToString();
                dr.Close();
                string update = "update Expert_Commons_Project set Common = '" + common + "',practical= '" + practical + "', innovate= '"
                    +innovate + "',short= '" + shortcoming + "',grade= '" + grade+ "' where TchrId ='" + tid +
                    "' and ProjectId = '" + projectid + "' and CommonType = '" + commontype + "'";
                SqlCommand comm2 = new SqlCommand();
                comm2.CommandText = update;
                comm2.Connection = conn;
                comm2.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('添加评价成功!');</script>");
            }
            else
                Response.Write("<script>alert('错误!');</script>");
        }
        else
        {
            Response.Write("<script>alert('错误!');</script>");
        }
        dr.Close();
        conn.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}