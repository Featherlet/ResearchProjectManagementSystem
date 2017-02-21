using System;
using System.Collections;
using System.Configuration;
using System.Data;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.Sql;
using System.Data.SqlClient;
using System.IO;


public partial class DaiShenHe : System.Web.UI.Page
{
    string ProjectName ;
    string StuId ;
    string TeacherId ;
    string Member1 ;
    string Member2 ;
    string Member3 ;
    string Member4 ;
    string ProjectType ;


    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void GridView_Create(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType != DataControlRowType.DataRow) return;

        if (e.Row.FindControl("ShenQingBtn") != null)
        {
            Button CtlButton = (Button)e.Row.FindControl("ShenQingBtn");
            CtlButton.Click += new EventHandler(ShenQingBtn_Click);
        }
        if (e.Row.FindControl("ConfirmSubmit") != null)
        {
            Button btn1 = (Button)e.Row.FindControl("ConfirmSubmit");
            btn1.Click += new EventHandler(ConfirmSubmit_Click);
        }
        if (e.Row.FindControl("ChangeText") != null)
        {
            TextBox box1 = (TextBox)e.Row.FindControl("ChangeText");
           
        }
        if (e.Row.FindControl("ConfirmCheck") != null)
        {
            Button btn = (Button)e.Row.FindControl("ConfirmCheck");
            btn.Click += new EventHandler(ConfirmCheck_Click);
        }
    }



    private void ConfirmCheck_Click(object sender, EventArgs e)
    {
      Button button = (Button)sender;
      GridViewRow gvr = (GridViewRow)button.Parent.Parent;
      

      string sql = ConfigurationManager.ConnectionStrings["ProjectSystemConnectionString2"].ToString();

      ProjectName=GridView1.Rows[gvr.RowIndex].Cells[1].Text.ToString();
      StuId = GridView1.Rows[gvr.RowIndex].Cells[3].Text.ToString();
      TeacherId = GridView1.Rows[gvr.RowIndex].Cells[4].Text.ToString();
      Member1 = GridView1.Rows[gvr.RowIndex].Cells[5].Text.ToString();
      Member2 = GridView1.Rows[gvr.RowIndex].Cells[6].Text.ToString();
      Member3 = GridView1.Rows[gvr.RowIndex].Cells[7].Text.ToString();
      Member4 = GridView1.Rows[gvr.RowIndex].Cells[8].Text.ToString();
      ProjectType = GridView1.Rows[gvr.RowIndex].Cells[2].Text.ToString();


      string del = "delete from Stu_Application_Info where ProjectName='" + ProjectName + "' and StuId='"+StuId+"'";
      SqlConnection conn1 = new SqlConnection(sql);
      conn1.Open();
      SqlCommand comm1 = new SqlCommand();
      comm1.Connection = conn1;
      comm1.CommandText = del;
      comm1.ExecuteReader();
      Response.Write("<script>alert(\"删除记录成功!\")</script>");

      string str = "select count(*) from ProjectInformation";
      SqlConnection conn2 = new SqlConnection(sql);
      conn2.Open();
      SqlCommand comm2 = new SqlCommand();
      comm2.CommandText = str;
      comm2.Connection = conn2;
      SqlDataReader dr2 = comm2.ExecuteReader();
      int count = 0;
      if (dr2.Read() == true)
      {
          count = System.Convert.ToInt32(dr2[0].ToString()) + 1;
      }
      string MidtermState = "待审核";
      string FinalState = "待审核";
      string ApplyDate = DateTime.Now.ToString();

      string insert = "insert into ProjectInformation(ProjectId,TchrId,StuId,ProjectType,ApplyDate,Member1,Member2,Member3,Member4,ProjectName,MidtermState,FinalState) values('" +
          count + "','" + TeacherId + "','" + StuId + "','" + ProjectType + "','" + ApplyDate + "','" + Member1 + "','" + Member2 + "','" +
          Member3 + "','" + Member4 + "','" + ProjectName + "','" + MidtermState + "','" + FinalState + "')";
      SqlConnection conn3 = new SqlConnection(sql);
      conn3.Open();
      SqlCommand comm3 = new SqlCommand();
      comm3.CommandText = insert;
      comm3.Connection = conn3;
      comm3.ExecuteReader();
      // Response.Write("<script>alert(\"添加记录成功\")</script>");

      Response.Redirect("DaiShenHe.aspx");

    }



    private void ShenQingBtn_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        GridViewRow gvr = (GridViewRow)button.Parent.Parent;
       // string pk = GridView1.DataKeys[gvr.RowIndex].Value.ToString();
        string ProjectName=GridView1.Rows[gvr.RowIndex].Cells[1].Text.ToString();
        string StuId = GridView1.Rows[gvr.RowIndex].Cells[3].Text.ToString();
      //  Response.Write(wk);
        string sql=ConfigurationManager.ConnectionStrings["ProjectSystemConnectionString2"].ToString();
        SqlConnection conn = new SqlConnection(sql);
        conn.Open();

        string sel = "select FilePath from Stu_Application_Info where StuId='" + StuId + "' and ProjectName='" + ProjectName + "'";
        SqlCommand comm = new SqlCommand();
        comm.CommandText = sel;
        comm.Connection = conn;

        SqlDataReader dr = comm.ExecuteReader();
        if (dr.Read() == true)
        {
            OpenFile(dr[0].ToString());
        }
        else
        {
            Response.Write("<script>alert(\"未提交项目申请书\")</script>");
        }

        
    }

    public void OpenFile(string FileName)
    {
        string FullFileName = "";
        //无错版: 
        try
        {
            
            FullFileName = Server.MapPath(FileName);
            //FileName--要下载的文件名 
            FileInfo DownloadFile = new FileInfo(FullFileName);
            if (DownloadFile.Exists)
            {
                Response.Clear();
                Response.ClearHeaders();
                Response.Buffer = false;
                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("Content-Disposition", "attachment;filename=" + HttpUtility.UrlEncode(DownloadFile.FullName, System.Text.Encoding.ASCII));
                Response.AppendHeader("Content-Length", DownloadFile.Length.ToString());
                Response.WriteFile(DownloadFile.FullName);
                Response.Flush();
                Response.End();
            }
            else
            {
               
            }
        }
        catch
        {
            //打开时异常了
        }

    }




    private void ConfirmSubmit_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        GridViewRow gvr = (GridViewRow)button.Parent.Parent;
        string ProjectName = GridView1.Rows[gvr.RowIndex].Cells[1].Text.ToString();
        string StuId = GridView1.Rows[gvr.RowIndex].Cells[3].Text.ToString();
        string sql = ConfigurationManager.ConnectionStrings["ProjectSystemConnectionString2"].ToString();
        SqlConnection conn = new SqlConnection(sql);
        conn.Open();

        TextBox box = (TextBox)GridView1.Rows[gvr.RowIndex].FindControl("ChangeText");
        string reply = box.Text.ToString();
        if (reply.Equals("") == false)
        {
            string submitstate = "未提交";
            string update = "update Stu_Application_Info set Reply='" + reply +
                "',SubmitState='" + submitstate + "' where ProjectName='" + ProjectName +
                "' and StuId='" + StuId + "'";
            SqlCommand comm = new SqlCommand();
            comm.CommandText = update;
            comm.Connection = conn;
            comm.ExecuteReader();
            Response.Redirect("DaiShenHe.aspx");
        }
        else
        {
            Response.Write("<script>alert(\"请填写修改意见后进行确认\")</script>");
        }


    }
   
}
