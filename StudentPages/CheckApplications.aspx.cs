using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CheckApplications : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String stuid = Session["userid"].ToString();
        SqlDataSource1.SelectCommand = "select * from Stu_Application_Info inner join Teachers on Stu_Application_Info.TeacherId=Teachers.TchrId" +
            " where Stu_Application_Info.StuId='" + stuid + "' and SubmitState='未提交'";
        SqlDataSource2.SelectCommand = "select * from Stu_Application_Info inner join Teachers on Stu_Application_Info.TeacherId=Teachers.TchrId" +
           " where Stu_Application_Info.StuId='" + stuid + "' and SubmitState='已提交'";
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName.ToString().Equals("edit"))
        {
            Label namelabel = (Label)e.Item.FindControl("NameLabel");
            String projectname = namelabel.Text.ToString();
            Response.Redirect("FillApplication.aspx?state=checkNotSubmit&pname=" + projectname);               
        }
        
    }
    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName.ToString().Equals("check"))
        {
            Label namelabel = (Label)e.Item.FindControl("NameLabel");
            String projectname = namelabel.Text.ToString();
            Response.Redirect("FillApplication.aspx?state=checkSubmit&pname=" + projectname);
        }
    }
}