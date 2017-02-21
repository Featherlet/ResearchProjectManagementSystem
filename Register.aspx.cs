using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Response.Write(RadioButtonList1.SelectedValue.ToString());
        if (RadioButtonList1.SelectedValue.ToString().Equals("学生"))
        {
            this.Wizard1.Visible = true;
            this.Wizard2.Visible = false;
        }
        else 
        {
            this.Wizard1.Visible = false;
            this.Wizard2.Visible = true;
        }
    }
    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        //学生信息收集
        String stuname = this.TBStuName.Text;
        String stuclass = this.TBStuClass.Text;
        String stuid = this.TBStuId.Text;
        String stupw = this.TBStuPw1.Text;
        String stumail = this.TBStuMail.Text;
        String stushenfen = this.TBStuShenfen.Text;
        String stuphone = this.TBStuPhone.Text;

        string sql = "Data Source=(local);Initial Catalog=ProjectSystem;Integrated Security=false ;User ID=sa;Password=1234";
        SqlConnection conn = new SqlConnection(sql);
        conn.Open();

        //查找用户名是否有重复
        string find = "select * from Students where StuId ='" + stuid + "'";
        SqlCommand comm = new SqlCommand();
        comm.CommandText = find;
        comm.Connection = conn;
        SqlDataReader dr = comm.ExecuteReader();
        if (dr.HasRows != true)
        {
            //读数据库
            string sql2 = "Data Source=(local);Initial Catalog=ProjectSystem;Integrated Security=false ;User ID=sa;Password=1234";
            SqlConnection conn2 = new SqlConnection(sql2);
            conn2.Open();
            //插入数据
            string tuple = "insert into Students (StuId ,StuName, StuClass, SPassword, SMail, SShenfen, SPhone) values ('" + stuid + "','"
                + stuname + "','" + stuclass + "','"  + stupw + "','" + stumail + "','" + stushenfen + "','" + stuphone + "')";
            SqlCommand comm2 = new SqlCommand();
            comm2.CommandText = tuple;
            comm2.Connection = conn2;
            comm2.ExecuteReader();
            conn2.Close();
        }
        dr.Close();
        conn.Close();
        Session["userid"] = stuid;
        Session["position"] = "student";
        Response.Write("<script>alert('注册成功!');window.location.href ='StudentMain.aspx'</script>"); 


    }
    protected void Wizard2_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        //教师信息收集
        String tname = this.TBTName.Text;
        String tdepartment = this.TBTDepartment.Text;
        String tid = this.TBTId.Text;
        String tpw = this.TBTPw1.Text;
        String tmail = this.TBTMail.Text;
        String tshenfen = this.TBTShenfen.Text;
        String tphone = this.TBTPhone.Text;

        string sql = "Data Source=(local);Initial Catalog=ProjectSystem;Integrated Security=false ;User ID=sa;Password=1234";
        SqlConnection conn = new SqlConnection(sql);
        conn.Open();

        //查找用户名是否有重复
        string find = "select * from Teachers where TchrId ='" + tid + "'";
        SqlCommand comm = new SqlCommand();
        comm.CommandText = find;
        comm.Connection = conn;
        SqlDataReader dr = comm.ExecuteReader();
        if (dr.HasRows != true)
        {
            //读数据库
            string sql2 = "Data Source=(local);Initial Catalog=ProjectSystem;Integrated Security=false ;User ID=sa;Password=1234";
            SqlConnection conn2 = new SqlConnection(sql2);
            conn2.Open();
            //插入数据
            string tuple = "insert into Teachers (TchrId ,TchrName, TchrDepartment, TPassword, TMail, TShenfen, TPhone) values ('" + tid + "','"
                + tname + "','" + tdepartment + "','" + tpw + "','" + tmail + "','" + tshenfen + "','" + tphone + "')";
            SqlCommand comm2 = new SqlCommand();
            comm2.CommandText = tuple;
            comm2.Connection = conn2;
            comm2.ExecuteReader();
            conn2.Close();
        }
        dr.Close();
        conn.Close();
        Session["userid"] = tid;
        Session["position"] = "teacher";
        Response.Write("<script>alert('注册成功!');window.location.href ='TeacherMain.aspx'</script>"); 
    }
}