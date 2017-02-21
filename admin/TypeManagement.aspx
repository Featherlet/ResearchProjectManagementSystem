<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TypeManagement.aspx.cs" Inherits="TypeManagement" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" style="text-align: center">
            <asp:Label ID="Label1" runat="server" Text="项目类别管理" style="text-align: center" 
                Font-Names="Arial" Font-Size="XX-Large" ForeColor="#33CC33"></asp:Label>
            <br />
            <br />
            修改项目类型:<br />
            <asp:TextBox ID="TypeInput" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            项目时间修改：<br />
            <br />
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TodayDayStyle BackColor="#CCCCCC" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                    VerticalAlign="Bottom" />
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                    Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            </asp:Calendar>
            <br />
            项目申请开始时间:<asp:Label ID="applybeginlabel" runat="server"></asp:Label>
            <asp:Button ID="confirm1" runat="server" Text="确认" onclick="confirm1_Click" />
            <br />
            <br />
            项目结束申请开始时间:<asp:Label ID="applyendlabel" runat="server"></asp:Label>
            <asp:Button ID="confirm2" runat="server" Text="确认" onclick="confirm2_Click" />
            <br />
            <br />
            项目中期考核开始时间:<asp:Label ID="projmidbegin" runat="server"></asp:Label>
            <asp:Button ID="confirm3" runat="server" Text="确认" onclick="confirm3_Click" />
            <br />
            <br />
            项目中期考核结束时间:<asp:Label ID="projmidend" runat="server"></asp:Label>
            <asp:Button ID="confirm4" runat="server" Text="确认" onclick="confirm4_Click" />
            <br />
            <br />
            项目最终考核开始时间:<asp:Label ID="projfinalbegin" runat="server"></asp:Label>
            <asp:Button ID="confirm5" runat="server" Text="确认" onclick="confirm5_Click" />
            <br />
            <br />
            项目最终考核结束时间:<asp:Label ID="projfinalend" runat="server"></asp:Label>
            <asp:Button ID="confirm6" runat="server" Text="确认" onclick="confirm6_Click" />
            <br />
            <br />
            <br />
            中期报告模板上传：<br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            结题报告模板上传:<br />
            <asp:FileUpload ID="FileUpload2" runat="server" />
            <br />
            <br />
            <br />
            <asp:Button ID="confirmAll" runat="server" onclick="Button1_Click" 
                Text="提交全部信息" />
            <br />
            <br />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
