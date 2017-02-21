using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TeacherPages_CommonPlan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String tid = Session["userid"].ToString();
        if (DropDownList1.SelectedIndex == 0)
        {
            DataList1.Visible = true;
            DataList2.Visible = false;
            SqlDataSource1.SelectCommand = "select * from Expert_Commons_Project inner join ProjectInformation on Expert_Commons_Project.ProjectId= ProjectInformation.ProjectId " +
                "inner join MidtermExam on Expert_Commons_Project.ProjectId = MidtermExam.ProjectId" +
                " where Expert_Commons_Project.TchrId='" + tid + "' and Expert_Commons_Project.CommonType = '期中考核'";
        }
        else 
        {
            DataList2.Visible = true;
            DataList1.Visible = false;
            SqlDataSource1.SelectCommand = "select * from Expert_Commons_Project inner join ProjectInformation on Expert_Commons_Project.ProjectId= ProjectInformation.ProjectId" +
                " inner join FinalExam on Expert_Commons_Project.ProjectId = FinalExam.ProjectId" +
                " where Expert_Commons_Project.TchrId='" + tid + "' and Expert_Commons_Project.CommonType = '结题考核'";
        }
    }
}