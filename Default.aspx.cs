using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    CommonClass ccObj = new CommonClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.labValid.Text = ccObj.RandomNum(4);//产生随机验证码
            Session["userid"] = null;
            Session["position"] = null;
        }
        
    }
    protected void btnLoad_Click(object sender, ImageClickEventArgs e)
    {
        String userid = txtId.Text.ToString();
        String password = txtPassword.Text.ToString();      

        if (this.txtValid.Text.Trim() == this.labValid.Text.Trim())
        {
            string sql = "Data Source=(local);Initial Catalog=ProjectSystem;Integrated Security=false ;User ID=sa;Password=1234";
            //string sql = ConfigurationManager.ConnectionStrings["NBAManagementConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(sql);
            conn.Open();

            if (RadioButtonList1.SelectedIndex == 0)
            {
                //从学生表中查询数据
                string search = "select * from Students where StuId = '" + userid + "' and SPassword = '" + password + "'";
                SqlCommand comm = new SqlCommand();
                comm.CommandText = search;
                comm.Connection = conn;
                SqlDataReader dr = comm.ExecuteReader();
                if (dr.HasRows == true)
                {
                    Session["userid"] = userid;
                    Session["position"] = "student";
                    Response.Redirect("~/StudentPages/StudentMain.aspx");
                    dr.Close();
                }
                else
                    dr.Close();
                    Response.Write("<script>alert('用户名或密码输入错误!');</script>");
            }
            else
            { //否则从老师表中查数据                
                string search2 = "select * from Teachers where TchrId = '" + userid + "' and TPassword = '" + password + "'";
                SqlCommand comm2 = new SqlCommand();
                comm2.CommandText = search2;
                comm2.Connection = conn;
                SqlDataReader dr2 = comm2.ExecuteReader();
                if (dr2.HasRows == true)
                {
                    Session["userid"] = userid;
                    Session["position"] = "teacher";
                    Response.Redirect("~/TeacherPages/TeacherMain.aspx");
                    dr2.Close();
                }
                else
                {
                    dr2.Close();
                    Response.Write("<script>alert('用户名或密码输入错误!');</script>");
                }
            }
            conn.Close();
        }
        else 
        {
            Response.Write(ccObj.MessageBoxPage("请正确输入验证码！"));
        }
    }
    protected void btnReg_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
}