using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CheckResult : System.Web.UI.Page
{
    String stuid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        stuid = Session["userid"].ToString();
        DropDownList1.SelectedIndex = 0;
        String projectname = DropDownList1.SelectedValue.ToString();
        SqlDataSource1.SelectCommand = "select * from ProjectInformation inner join ProjectResult on ProjectInformation.ProjectId= ProjectResult.ProjectId" +
            " where ProjectInformation.StuId='" + stuid + "'";
        SqlDataSource2.SelectCommand = "select * from ProjectInformation where ProjectInformation.StuId='" + stuid + "'";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String projectname = DropDownList1.SelectedValue.ToString();
        SqlDataSource1.SelectCommand = "select * from ProjectInformation inner join ProjectResult on ProjectInformation.ProjectId= ProjectResult.ProjectId" +
            " where ProjectInformation.StuId='" + stuid + "' and ProjectName ='" + projectname + "'";
    }
}