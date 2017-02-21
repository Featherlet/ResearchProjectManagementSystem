using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class FillApplication : System.Web.UI.Page
{
    protected string userid = "";
    protected string projectname = "";
    protected string memberstr = "";
    protected string state = "";
    //private static  int memnum=0;
    protected int memnum;
    protected void Page_Load(object sender, EventArgs e)
    {
        userid = Session["userid"].ToString();
        Button btn = Wizard1.FindControl("FinishNavigationTemplateContainerID").FindControl("FinishButton") as Button;
        btn.Parent.Controls.Remove(btn);

        if (!IsPostBack)
        {
            Session["memnum"] = "0";
            state = Request["state"].ToString();
            if (Request["pname"] != null)
                projectname = Request["pname"].ToString();

            if (state.Equals("checkSubmit"))
            {
                this.ButtonSave.Visible = false;
                this.ButtonSubmit.Visible = false;
                this.LabelNote.Visible = false;
                this.ButtonPrint.Visible = true;
            }
            else
            {
                this.ButtonSave.Visible = true;
                this.ButtonSubmit.Visible = true;
                this.LabelNote.Visible = true;
                this.ButtonPrint.Visible = false;
            }

            //如果是申请非自主申请的题目
            if (state.Equals("notSelfApply"))
            {
                string sql = "Data Source=(local);Initial Catalog=ProjectSystem;Integrated Security=false ;User ID=sa;Password=1234";
                SqlConnection conn = new SqlConnection(sql);
                conn.Open();
                //查找项目
                string find = "select * from Projects inner join Teachers on Projects.TeacherId = Teachers.TchrId where ProjectName ='" + projectname + "'";
                SqlCommand comm = new SqlCommand();
                comm.CommandText = find;
                comm.Connection = conn;
                SqlDataReader dr = comm.ExecuteReader();
                if (dr.HasRows == true)
                {
                    while (dr.Read())
                    {
                        TBProjectName.Text = projectname;
                        TBTchrName.Text = dr["TchrName"].ToString();
                        TBTchrID.Text = dr["TchrId"].ToString();
                        if (dr["ProjectType"].ToString().Equals("大学生创新项目"))
                            DropDownList1.SelectedIndex = 0;
                        else if (dr["ProjectType"].ToString().Equals("实验室基金项目"))
                            DropDownList1.SelectedIndex = 1;
                        else if (dr["ProjectType"].ToString().Equals("培育项目"))
                            DropDownList1.SelectedIndex = 2;
                        TBProjectName.Enabled = false;
                        TBTchrName.Enabled = false;
                        TBTchrID.Enabled = false;
                        DropDownList1.Enabled = false;
                    }
                }
                dr.Close();
                conn.Close();
            }

            //如果是查看修改未提交的项目
            if (state.Equals("checkNotSubmit"))
            {
                string sql = "Data Source=(local);Initial Catalog=ProjectSystem;Integrated Security=false ;User ID=sa;Password=1234";
                SqlConnection conn = new SqlConnection(sql);
                conn.Open();
                //查找项目
                string find = "select * from Stu_Application_Info inner join Teachers on Stu_Application_Info.TeacherId = Teachers.TchrId where"+
                                " ProjectName ='" + projectname + "' and StuId ='" + userid +"'";
                SqlCommand comm = new SqlCommand();
                comm.CommandText = find;
                comm.Connection = conn;
                SqlDataReader dr = comm.ExecuteReader();
                if (dr.HasRows == true)
                {
                    while (dr.Read())
                    {
                        TBProjectName.Text = projectname;
                        if (dr["TchrName"] != null)
                            TBTchrName.Text = dr["TchrName"].ToString();
                        if (dr["TchrId"] != null)
                            TBTchrID.Text = dr["TchrId"].ToString();
                        if (dr["ProjectType"].ToString().Equals("大学生创新项目"))
                            DropDownList1.SelectedIndex = 0;
                        else if (dr["ProjectType"].ToString().Equals("实验室基金项目"))
                            DropDownList1.SelectedIndex = 1;
                        else if (dr["ProjectType"].ToString().Equals("培育项目"))
                            DropDownList1.SelectedIndex = 2;
                        if (dr["Member1"] != null)
                            if (!dr["Member1"].ToString().Equals(""))
                            {
                                Panel1.Visible = true;
                                TBMember1.Text = dr["Member1"].ToString();
                                Session["memnum"] = 1;
                            }
                        if (dr["Member2"] != null)
                            if (!dr["Member2"].ToString().Equals(""))
                            {
                                Panel2.Visible = true;
                                TBMember2.Text = dr["Member2"].ToString();
                                Session["memnum"] = 2;
                            }
                        if (dr["Member3"] != null)
                            if (!dr["Member3"].ToString().Equals(""))
                            {
                                Panel3.Visible = true;
                                TBMember3.Text = dr["Member3"].ToString();
                                Session["memnum"] = 3;
                            }
                        if (dr["Member4"] != null)
                            if (!dr["Member4"].ToString().Equals(""))
                            {
                                Panel4.Visible = true;
                                TBMember4.Text = dr["Member4"].ToString();
                                Session["memnum"] = 4;
                            }
                        if (dr["Description"] != null)
                            TBDescription.Text = dr["Description"].ToString();
                    }
                }
                dr.Close();
                conn.Close();
            }

            //如果是查看已提交的项目
            if (state.Equals("checkSubmit"))
            {
                string sql = "Data Source=(local);Initial Catalog=ProjectSystem;Integrated Security=false ;User ID=sa;Password=1234";
                SqlConnection conn = new SqlConnection(sql);
                conn.Open();
                //查找项目
                string find = "select * from Stu_Application_Info inner join Teachers on Stu_Application_Info.TeacherId = Teachers.TchrId where" +
                                " ProjectName ='" + projectname + "' and StuId ='" + userid + "'";
                SqlCommand comm = new SqlCommand();
                comm.CommandText = find;
                comm.Connection = conn;
                SqlDataReader dr = comm.ExecuteReader();
                if (dr.HasRows == true)
                {
                    while (dr.Read())
                    {
                        TBProjectName.Text = projectname;
                        TBProjectName.Enabled = false;
                        if (dr["TchrName"] != null)
                            TBTchrName.Text = dr["TchrName"].ToString();
                        TBTchrName.Enabled = false;
                        if (dr["TchrId"] != null)
                            TBTchrID.Text = dr["TchrId"].ToString();
                        TBTchrID.Enabled = false;
                        if (dr["ProjectType"].ToString().Equals("大学生创新项目"))
                            DropDownList1.SelectedIndex = 0;
                        else if (dr["ProjectType"].ToString().Equals("实验室基金项目"))
                            DropDownList1.SelectedIndex = 1;
                        else if (dr["ProjectType"].ToString().Equals("培育项目"))
                            DropDownList1.SelectedIndex = 2;
                        DropDownList1.Enabled = false;
                        if (dr["Member1"] != null)
                            if (!dr["Member1"].ToString().Equals(""))
                            {
                                Panel1.Visible = true;
                                TBMember1.Text = dr["Member1"].ToString();
                                Session["memnum"] = 1;
                                TBMember1.Enabled = false;
                            }
                        if (dr["Member2"] != null)
                            if (!dr["Member2"].ToString().Equals(""))
                            {
                                Panel2.Visible = true;
                                TBMember2.Text = dr["Member2"].ToString();
                                Session["memnum"] = 2;
                                TBMember1.Enabled = false;
                            }
                        if (dr["Member3"] != null)
                            if (!dr["Member3"].ToString().Equals(""))
                            {
                                Panel3.Visible = true;
                                TBMember3.Text = dr["Member3"].ToString();
                                Session["memnum"] = 3;
                                TBMember1.Enabled = false;
                            }
                        if (dr["Member4"] != null)
                            if (!dr["Member4"].ToString().Equals(""))
                            {
                                Panel4.Visible = true;
                                TBMember4.Text = dr["Member4"].ToString();
                                Session["memnum"] = 4;
                                TBMember1.Enabled = false;
                            }
                        if (dr["Description"] != null)
                            TBDescription.Text = dr["Description"].ToString();
                        TBDescription.Enabled = false;
                    }
                }
                dr.Close();
                conn.Close();
            }
    
        }

        //即时更新组员填写数量
        memnum = int.Parse(Session["memnum"].ToString());
        if (memnum==0)
        {
             ButtonDel.Enabled = false;
             ButtonAdd.Enabled = true;
        }
        else if (memnum==4)
        {
             ButtonAdd.Enabled = false;
             ButtonDel.Enabled = true;
        }
        else 
        {
             ButtonAdd.Enabled = true;
             ButtonDel.Enabled = true;
        }
        Response.Write(memnum);       
        
    }


    protected void ButtonAdd_Click(object sender, EventArgs e)
    {
        memnum = int.Parse(Session["memnum"].ToString());
        if (memnum == 0) memnum = 1;
        else
        {
            if(memnum<4)
            ++memnum;
        }
        switch (memnum)
        {
               
            
            case 1:
                {
                    Panel1.Visible = true;
                    Panel2.Visible = false;
                    Panel3.Visible = false;
                    Panel4.Visible = false;
                   
                } break;
                    
         
            case 2:
                {
                    Panel1.Visible = true;
                    Panel2.Visible = true;
                    Panel3.Visible = false;
                    Panel4.Visible = false;

                }break;
            case 3:
                {
                    Panel1.Visible = true;
                    Panel2.Visible = true;
                    Panel3.Visible = true;
                   Panel4.Visible = false;

                }break;
            case 4:
                {
                    Panel1.Visible = true;
                    Panel2.Visible = true;
                    Panel3.Visible = true;
                    Panel4.Visible = true;
                }break;
        }
        Session["memnum"] = memnum.ToString();
        
    }
    protected void ButtonDel_Click(object sender, EventArgs e)
    {
        memnum = int.Parse(Session["memnum"].ToString());
        if(memnum>0)
        --memnum;
        
        switch (memnum)
        {
            case 0:
                {
                    Panel1.Visible = false;
                    Panel2.Visible = false;
                    Panel3.Visible = false;
                    Panel4.Visible = false;
                } break;
            case 1:
                {
                    Panel1.Visible = true;
                    Panel2.Visible = false;
                    Panel3.Visible = false;
                    Panel4.Visible = false;
                } break;
            case 2:
                {
                    Panel1.Visible = true;
                    Panel2.Visible = true;
                    Panel3.Visible = false;
                    Panel4.Visible = false;

                } break;
            case 3:
                {
                    Panel1.Visible = true;
                    Panel2.Visible = true;
                    Panel3.Visible = true;
                    Panel4.Visible = false;

                } break;
            case 4:
                {
                    Panel1.Visible = true;
                    Panel2.Visible = true;
                    Panel3.Visible = true;
                    Panel4.Visible = true;
                } break;
              
        }
        Session["memnum"] = memnum.ToString();
    }


    //===========================================================================================================================
    //保存按钮
    protected void ButtonSave_Click(object sender, EventArgs e)
    {
        //String content = "";
        String projectname = this.TBProjectName.Text;
        String projecttype = this.DropDownList1.SelectedValue;
        String teacherid = this.TBTchrID.Text;
        String teachername = this.TBTchrName.Text;
        String member1 = "NULL";
        String member2 = "NULL";
        String member3 = "NULL";
        String member4 = "NULL";
        //content = "学生申请表：" + "\n项目名称：" + projectname + "\n项目类型：" + projecttype
        //+ "\n教师ID：" + teacherid + "\n教师姓名：" + teachername;

        memnum = int.Parse(Session["memnum"].ToString());
        if (memnum == 1)
        {
            member1 = this.TBMember1.Text;
            //content = content + "\n小组成员1：" + member1;
        }
        else if (memnum == 2)
        {
            member1 = this.TBMember1.Text;
            member2 = this.TBMember2.Text;
            //content = content + "\n小组成员1：" + member1 + "\n小组成员2：" + member2;
        }
        else if (memnum == 3)
        {
            member1 = this.TBMember1.Text;
            member2 = this.TBMember2.Text;
            member3 = this.TBMember3.Text;
            //content = content + "\n小组成员1：" + member1 + "\n小组成员2：" + member2 + "\n小组成员3：" + member3;
        }
        else if (memnum == 4)
        {
            member1 = this.TBMember1.Text;
            member2 = this.TBMember2.Text;
            member3 = this.TBMember3.Text;
            member4 = this.TBMember4.Text;
            //content = content + "\n小组成员1：" + member1 + "\n小组成员2：" + member2 + "\n小组成员3：" + member3 + "\n小组成员4：" + member4;
        }

        String description = this.TBDescription.Text;

        //content = content + "\n项目描述：" + description + "\n立项依据：" + reason + "\n成果形式：" + result;
        //string filename = "E:\\Web专业实习\\ProjectSystemWeb\\applications\\" + userid + "_" + projectname + ".doc";
        //OfficeWord word = new OfficeWord(filename, content);
        // word.CreateWord();

        string sql = "Data Source=(local);Initial Catalog=ProjectSystem;Integrated Security=false ;User ID=sa;Password=1234";
        SqlConnection conn = new SqlConnection(sql);
        conn.Open();

        //查找用户名是否有重复
        string find = "select * from Stu_Application_Info where ProjectName ='" + projectname + "'";
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
            string tuple = "insert into Stu_Application_Info (StuId ,ProjectName, FilePath, SubmitState, ProjectType, Member1, Member2, " +
                "Member3, Member4, TeacherId)" + " values ('" + userid + "','" + projectname + "'," + "NULL,'未提交','" + projecttype + "','"
                + member1 + "','" + member2 + "','" + member3 + "','" + member4 + "','" + teacherid + "')";
            SqlCommand comm2 = new SqlCommand();
            comm2.CommandText = tuple;
            comm2.Connection = conn2;
            comm2.ExecuteReader();
            conn2.Close();
        }
        else 
        {
            //读数据库
            string sql2 = "Data Source=(local);Initial Catalog=ProjectSystem;Integrated Security=false ;User ID=sa;Password=1234";
            SqlConnection conn2 = new SqlConnection(sql2);
            conn2.Open();
            //更新数据
            string tuple = "update  Stu_Application_Info  set ProjectType = '" + projecttype
                + "', Member1 = '" + member1 + "', Member2 = '" + member2 + "', Member3 = '" + member3 + "', Member4 = '" + member4
                + "', TeacherId = '" + teacherid + "' where StuId ='" + userid + "' and ProjectName = '" + projectname + "'";
            SqlCommand comm2 = new SqlCommand();
            comm2.CommandText = tuple;
            comm2.Connection = conn2;
            comm2.ExecuteReader();
            conn2.Close();
        }
        dr.Close();
        conn.Close();

        Response.Write("<script>alert('保存成功!');window.location.href ='StudentMain.aspx'</script>"); 
    }

    //===================================================================
    //提交按钮
    protected void ButtonSubmit_Click(object sender, EventArgs e)
    {
        //String content = "";
        String projectname = this.TBProjectName.Text;
        String projecttype = this.DropDownList1.SelectedValue;
        String teacherid = this.TBTchrID.Text;
        String teachername = this.TBTchrName.Text;
        String member1 = "null";
        String member2 = "null";
        String member3 = "null";
        String member4 = "null";

        //content = "学生申请表：" + "\n项目名称：" + projectname + "\n项目类型：" + projecttype
        //+ "\n教师ID：" + teacherid + "\n教师姓名：" + teachername;


        memnum = int.Parse(Session["memnum"].ToString());
        if (memnum == 1)
        {
            member1 = this.TBMember1.Text;
            //content = content + "\n小组成员1：" + member1;
        }
        else if (memnum == 2)
        {
            member1 = this.TBMember1.Text;
            member2 = this.TBMember2.Text;
            //content = content + "\n小组成员1：" + member1 + "\n小组成员2：" + member2;
        }
        else if (memnum == 3)
        {
            member1 = this.TBMember1.Text;
            member2 = this.TBMember2.Text;
            member3 = this.TBMember3.Text;
            //content = content + "\n小组成员1：" + member1 + "\n小组成员2：" + member2 + "\n小组成员3：" + member3;
        }
        else if (memnum == 4)
        {
            member1 = this.TBMember1.Text;
            member2 = this.TBMember2.Text;
            member3 = this.TBMember3.Text;
            member4 = this.TBMember4.Text;
            //content = content + "\n小组成员1：" + member1 + "\n小组成员2：" + member2 + "\n小组成员3：" + member3 + "\n小组成员4：" + member4;
        }

        String description = this.TBDescription.Text;

        //content = content + "\n项目描述：" + description + "\n立项依据：" + reason + "\n成果形式：" + result;
        //string filename = "E:\\Web专业实习\\ProjectSystemWeb\\applications\\" + userid + "_" + projectname + ".doc";
        //OfficeWord word = new OfficeWord(filename, content);
        // word.CreateWord();

        string sql = "Data Source=(local);Initial Catalog=ProjectSystem;Integrated Security=false ;User ID=sa;Password=1234";
        SqlConnection conn = new SqlConnection(sql);
        conn.Open();

        //查找用户名是否有重复
        string find = "select * from Stu_Application_Info where ProjectName ='" + projectname + "'";
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
            string tuple = "insert into Stu_Application_Info (StuId ,ProjectName, FilePath, SubmitState, ProjectType, Member1, Member2, " +
                "Member3, Member4, TeacherId)" + " values ('" + userid + "','" + projectname + "'," + "NULL,'已提交','" + projecttype + "','"
                + member1 + "','" + member2 + "','" + member3 + "','" + member4 + "','" + teacherid + "')";
            SqlCommand comm2 = new SqlCommand();
            comm2.CommandText = tuple;
            comm2.Connection = conn2;
            comm2.ExecuteReader();
            conn2.Close();
        }
        else
        {
            //读数据库
            string sql2 = "Data Source=(local);Initial Catalog=ProjectSystem;Integrated Security=false ;User ID=sa;Password=1234";
            SqlConnection conn2 = new SqlConnection(sql2);
            conn2.Open();
            //更新数据
            string tuple = "update  Stu_Application_Info  set ProjectType = '" + projecttype + "', SubmitState = '已提交', Member1 = '"
                + member1 + "', Member2 = '" + member2 + "', Member3 = '" + member3 + "', Member4 = '" + member4
                + "', TeacherId = '" + teacherid + "' where StuId ='" + userid + "' and ProjectName = '" + projectname + "'";
            SqlCommand comm2 = new SqlCommand();
            comm2.CommandText = tuple;
            comm2.Connection = conn2;
            comm2.ExecuteReader();
            conn2.Close();
        }
        dr.Close();
        conn.Close();

        Response.Write("<script>alert('保存成功!');window.location.href ='StudentMain.aspx'</script>"); 
    }
}