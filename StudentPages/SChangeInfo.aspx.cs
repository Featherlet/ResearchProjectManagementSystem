using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class StudentPages_SChangeInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String stuid = Session["userid"].ToString();

        if (!IsPostBack) 
        {
            string sql = "Data Source=(local);Initial Catalog=ProjectSystem;Integrated Security=false ;User ID=sa;Password=1234";
            SqlConnection conn = new SqlConnection(sql);
            conn.Open();

            string find = "select * from Students where StuId ='" + stuid + "'";
            SqlCommand comm = new SqlCommand();
            comm.CommandText = find;
            comm.Connection = conn;
            SqlDataReader dr = comm.ExecuteReader();
            if (dr.HasRows == true)
            {
                while (dr.Read())
                {
                    this.LabelID.Text = dr["StuId"].ToString();
                    this.LabelName.Text = dr["StuName"].ToString();
                    this.LabelClass.Text = dr["StuClass"].ToString();
                    this.TBPw1.Text = dr["SPassword"].ToString();
                    this.TBMail.Text = dr["SMail"].ToString();
                    this.TBPhone.Text = dr["SPhone"].ToString();
                    this.TBShenfen.Text = dr["SShenfen"].ToString();
                }
            }
            dr.Close();
            conn.Close();
        }
        
    }
    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        String stuid = Session["userid"].ToString();
        String pw = TBPw1.Text.ToString();
        String mail = TBMail.Text.ToString();
        String phone = TBPhone.Text.ToString();
        String shenfen = TBShenfen.Text.ToString();

        string sql = "Data Source=(local);Initial Catalog=ProjectSystem;Integrated Security=false ;User ID=sa;Password=1234";
        SqlConnection conn = new SqlConnection(sql);
        conn.Open();

        string find = "update Students set SPassword ='"+ pw + "', Smail ='"+ mail +"', SPhone ='" + phone + "', SShenfen = '"+
            shenfen +"' where StuId ='" + stuid + "'";
        SqlCommand comm = new SqlCommand();
        comm.CommandText = find;
        comm.Connection = conn;
        comm.ExecuteNonQuery();
        conn.Close();
        Response.Write("<script>alert('信息修改成功!');</script>");
        Response.Redirect("StudentMain.aspx");
    }
}