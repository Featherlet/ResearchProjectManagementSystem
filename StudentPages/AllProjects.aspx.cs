using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AllProjects : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "select * from ProjectInformation";
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(RadioButtonList1.SelectedIndex == 0)
            SqlDataSource1.SelectCommand = "select ProjectName, ApplyDate, ProjectType from ProjectInformation order by ProjectType";
        else if(RadioButtonList1.SelectedIndex == 1)
            SqlDataSource1.SelectCommand = "select * from ProjectInformation order by ApplyDate desc";
    }
}