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
using System.Data.SqlClient;

public partial class TypeManagement : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {
       


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql = ConfigurationManager.ConnectionStrings["ProjectSystemConnectionString2"].ToString();
       
        SqlConnection conn = new SqlConnection(sql);
        conn.Open();

        string filepath1 = "files/"+FileUpload1.FileName.ToString();
        string filepath2 = "files/" + FileUpload2.FileName.ToString();
        string savepath1 = Server.MapPath("files/")+FileUpload1.FileName.ToString();
        string savepath2 = Server.MapPath("files/")+FileUpload2.FileName.ToString();
        FileUpload1.SaveAs(savepath1);
        FileUpload2.SaveAs(savepath2);

        string typestring = TypeInput.Text.ToString();


        string search = "insert into ProjectTypeInformation(TypeName,ApplyBeginDate,ApplyEndDate,MidBeginDate,MidEndDate,FinalBeginDate,FinalEndDate,MidReportModel,FinalReportModel) values('" 
            + typestring + "','" + applybeginlabel.Text+"','"+
            applyendlabel.Text + "','" + projmidbegin.Text + "','" + projmidend.Text+"','"+
            projfinalbegin.Text + "','" + projfinalend.Text+"','"+filepath1+"','"+filepath2+"')";
        SqlCommand comm = new SqlCommand();
        comm.CommandText = search;
        comm.Connection = conn;
        SqlDataReader dr = comm.ExecuteReader();
        Response.Write("<script>alert('信息添加成功');</script>");
    }
    protected void confirm1_Click(object sender, EventArgs e)
    {
        applybeginlabel.Text = Calendar1.SelectedDate.ToShortDateString();
    }
    protected void confirm2_Click(object sender, EventArgs e)
    {
        applyendlabel.Text = Calendar1.SelectedDate.ToShortDateString();
    }
    protected void confirm3_Click(object sender, EventArgs e)
    {
        projmidbegin.Text = Calendar1.SelectedDate.ToShortDateString();
    }
    protected void confirm4_Click(object sender, EventArgs e)
    {
        projmidend.Text = Calendar1.SelectedDate.ToShortDateString();
    }
    protected void confirm5_Click(object sender, EventArgs e)
    {
        projfinalbegin.Text = Calendar1.SelectedDate.ToShortDateString();
    }
    protected void confirm6_Click(object sender, EventArgs e)
    {
        projfinalend.Text = Calendar1.SelectedDate.ToShortDateString();
    }
}
