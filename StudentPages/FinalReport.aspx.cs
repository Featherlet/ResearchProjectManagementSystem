using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FinalReport : System.Web.UI.Page
{
    String projectname = "";
    String projecttype = "";
    String teacherid = "";
    String teachername = "";
    String member1 = "";
    String member2 = "";
    String member3 = "";
    String member4 = "";
    String userid = "";
    String conclude = "";
    String member = "";
    String result = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        userid = Session["userid"].ToString();
        SqlDataSource1.SelectCommand = "select * from ProjectInformation where ProjectInformation.StuId='" + userid + "'";
    }
    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        projectname = DropDownList2.SelectedValue.ToString();
        projecttype = DropDownList1.SelectedValue.ToString();
        teacherid = TBTchrID.Text;
        teachername = TBTchrName.ToString();
        member1 = TBMember1.Text;
        member2 = TBMember2.Text;
        member3 = TBMember3.Text;
        member4 = TBMember4.Text;
        conclude = TBConclude.Text;
        member = TBMember.Text;
        result = TBResult.Text;
    }
}