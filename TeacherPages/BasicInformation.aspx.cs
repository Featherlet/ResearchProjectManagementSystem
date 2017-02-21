using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TeacherPages_BasicInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String tid = Session["userid"].ToString();
        SqlDataSource1.SelectCommand = "select * from ProjectInformation inner join Students on ProjectInformation.StuId=Students.StuId" +
            " where ProjectInformation.TchrId='" + tid + "'";
    }
}