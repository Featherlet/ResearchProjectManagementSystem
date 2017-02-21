using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ResultSubmit : System.Web.UI.Page
{
    protected string stuid = "";
    String resultname = "";
    String filetype = "";
    String filepath = "";
    String description = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        stuid = Session["userid"].ToString();
        SqlDataSource1.SelectCommand = "select * from ProjectInformation where ProjectInformation.StuId='" + stuid + "'";
    }

    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        resultname = TBRName.Text;
        filetype = DropDownList1.SelectedValue;
        filepath = "";
        description = TBDescription.Text;
    }
}