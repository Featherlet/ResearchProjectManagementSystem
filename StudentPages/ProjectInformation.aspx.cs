using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProjectInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String stuid = Session["userid"].ToString();
        SqlDataSource1.SelectCommand = "select * from ProjectInformation inner join Teachers on ProjectInformation.TchrId=Teachers.TchrId" +
            " where ProjectInformation.StuId='" + stuid + "'";
    }
}