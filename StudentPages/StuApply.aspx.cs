using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentPages_StuApply : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //String stuid = Session["userid"].ToString();    
        if(!IsPostBack)
            SqlDataSource1.SelectCommand = "select * from Projects inner join Teachers on Projects.TeacherId = Teachers.TchrId";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("FillApplication.aspx?state=selfApply");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)
        {
            SqlDataSource1.SelectCommand = "select * from Projects inner join Teachers on Projects.TeacherId = Teachers.TchrId";
        }
        else
        {
            SqlDataSource1.SelectCommand = "select * from Projects inner join Teachers on Projects.TeacherId = Teachers.TchrId where ProjectType ='"
                + DropDownList1.SelectedValue.ToString() + "'";
        }     
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName.ToString().Equals("apply")) 
        {
            Label namelabel = (Label)e.Item.FindControl("NameLabel");
            String projectname = namelabel.Text.ToString();
            Response.Redirect("FillApplication.aspx?state=notSelfApply&pname="+projectname);
        }
    }
}