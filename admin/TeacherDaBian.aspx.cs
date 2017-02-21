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



public partial class TeacherDaBian : System.Web.UI.Page
{
    private string[] types = { "中期答辩", "结题答辩" };
    private string TchrId;
    private string ProjectName;
    private string CommonType;

    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 0; i < types.Length; i++)
            DropDownList3.Items.Add(new ListItem(types[i]));

    }
    protected void confirm_Click(object sender, EventArgs e)
    {
        TchrId = DropDownList1.SelectedValue.ToString();
        ProjectName = DropDownList2.SelectedValue.ToString();
        CommonType = DropDownList3.SelectedValue.ToString();

        string sql = ConfigurationManager.ConnectionStrings["ProjectSystemConnectionString2"].ToString();
        SqlConnection conn = new SqlConnection(sql);
        conn.Open();

        string insert="insert into Expert_Commons_Project values('"+TchrId+"','"+ProjectName+"','"+CommonType+"','"+"default"+"','"+"default"+"','"+"default"+"','"+"default"+"',0)";
        SqlCommand comm = new SqlCommand();
        comm.CommandText = insert;
        comm.Connection = conn;
        comm.ExecuteReader();
        Response.Write("<script>alert(\"添加专家记录成功\")</script>");

    }
}
