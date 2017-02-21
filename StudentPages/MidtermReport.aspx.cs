using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MidtermReport : System.Web.UI.Page
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
    String process = "";
    String member = "";
    String predict = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        userid = Session["userid"].ToString();
        SqlDataSource1.SelectCommand = "select * from ProjectInformation where ProjectInformation.StuId='" + userid + "'";
    }
    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        String projectname = DropDownList2.SelectedValue.ToString();
        String projecttype = DropDownList1.SelectedValue.ToString();
        String teacherid = TBTchrID.Text;
        String teachername = TBTchrName.ToString();
        String member1 = TBMember1.Text;
        String member2 = TBMember2.Text;
        String member3 = TBMember3.Text;
        String member4 = TBMember4.Text;
        String process = TBProcess.Text;
        String member = TBMember.Text;
        String predict = TBPredict.Text;
    }
}