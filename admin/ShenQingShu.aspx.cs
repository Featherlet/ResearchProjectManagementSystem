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


public partial class ShenQingShu : System.Web.UI.Page
{
    public string strshow = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        string sql = ConfigurationManager.ConnectionStrings["ProjectSystemConnectionString2"].ToString();
        SqlConnection conn = new SqlConnection(sql);
        conn.Open();
        string search = "select ProjectName,FilePath from Stu_Application_Info";
        SqlCommand comm = new SqlCommand();
        comm.CommandText = search;
        comm.Connection = conn;
        SqlDataReader dr = comm.ExecuteReader();
        strshow += "<table border='1'>";
        strshow+="<tr><td>项目名称</td><td>项目申请书链接</td></tr>";
        while (dr.Read())
        {
            strshow += "<tr>";
            strshow += "<td>";
            strshow += dr[0];
            strshow += "</td>";
            strshow += "<td>";
            strshow += "<a href=\"" + dr[1] + "\">" + "目标链接" + "</a>";
            strshow += "</td>";
            strshow += "</tr>";

        }
        strshow += "</table>";



    }
}
