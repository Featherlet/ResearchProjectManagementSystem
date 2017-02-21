using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TeacherPages_ApplyFinance : System.Web.UI.Page
{
    protected string tid = "";
    String projectname = "";
    String money = "";
    String trafmoney = "";
    String trafdetail = "";
    String printmoney = "";
    String printdetail = "";
    String matmoney = "";
    String matdetail = "";
    String docmoney = "";
    String docdetail = "";
    String bookmoney = "";
    String bookdetail = "";
    String othermoney = "";
    String otherdetail = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        tid = Session["userid"].ToString();
        SqlDataSource1.SelectCommand = "select * from ProjectInformation where ProjectInformation.TchrId='" + tid + "'";
    }

    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        projectname = DropDownList2.SelectedItem.ToString();
        money = TBMoney.Text.ToString();
        trafmoney = TBtrafmoney.Text.ToString();
        trafdetail = TBtrafdetail.Text.ToString();
        printmoney = TBprintmoney.Text.ToString();
        printdetail = TBprintdetail.Text.ToString();
        matmoney = TBmatmoney.Text.ToString();
        matdetail = TBmatdetail.Text.ToString();
        docmoney = TBdocmoney.Text.ToString();
        docdetail = TBdocdetail.Text.ToString();
        bookmoney = TBbookmoney.Text.ToString();
        bookdetail = TBbookdetail.Text.ToString();
        othermoney = TBothermoney.Text.ToString();
        otherdetail = TBotherdetail.Text.ToString();
        

        string sql = "Data Source=(local);Initial Catalog=ProjectSystem;Integrated Security=false ;User ID=sa;Password=1234";
        SqlConnection conn = new SqlConnection(sql);
        conn.Open();

        string find = "select * from ProjectInformation where TchrId ='" + tid + "' and ProjectName = '" + projectname + "'";
        SqlCommand comm = new SqlCommand();
        comm.CommandText = find;
        comm.Connection = conn;
        SqlDataReader dr = comm.ExecuteReader();
        if (dr.HasRows == true)
        {
            if (dr.Read())
            {
                string projectid = dr["ProjectId"].ToString();
                dr.Close();
                string insert = "insert into FinanceApplication (TchrId, ProjectId, Money, ApplyState,trafmoney,trafdetail,printmoney,printdetail,matmoney,matdetail,docmoney,docdetail,bookmoney,bookdetail,othermoney,otherdetail ) values ('" + tid + "','"
                    + projectid + "','" + money + "','未审核','" + trafmoney + "','" + trafdetail + "','" + printmoney+ "','" + printdetail + "','" + matmoney + "','" + matdetail + "','" + docmoney + "','" +docdetail + "','" + bookmoney + "','" + bookdetail+ "','" +othermoney + "','" + otherdetail+ "')";
                SqlCommand comm2 = new SqlCommand();
                comm2.CommandText = insert;
                comm2.Connection = conn;
                comm2.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('申请成功!');</script>");
            }
            else
                Response.Write("<script>alert('错误!');</script>"); 
        }
        else 
        {
            Response.Write("<script>alert('错误!');</script>"); 
        }
        dr.Close();
        conn.Close();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Unnamed1_TextChanged(object sender, EventArgs e)
    {

    }
}