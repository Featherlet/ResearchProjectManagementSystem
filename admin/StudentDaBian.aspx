<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentDaBian.aspx.cs" Inherits="StudentDaBian" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" style="text-align: center">
            <asp:Label ID="Label1" runat="server" Text="中期答辩安排" Font-Names="Angsana New" 
                Font-Size="XX-Large" ForeColor="#66FF66"></asp:Label>
            <br />
            <br />
            项目ID:<asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="ProjectId" 
                DataValueField="ProjectId">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ProjectSystemConnectionString2 %>" 
                SelectCommand="SELECT [ProjectId] FROM [ProjectInformation]">
            </asp:SqlDataSource>
            <br />
            <br />
            项目中期答辩开始时间:<asp:TextBox ID="MidStartTime" runat="server"></asp:TextBox>
            <br />
            <br />
            项目中期答辩结束时间:<asp:TextBox ID="MidEndTime" runat="server"></asp:TextBox>
            <br />
            <br />
            项目中期答辩地点:<asp:TextBox ID="MidLocation" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnconfirm1" runat="server" Text="信息确认" 
                onclick="btnconfirm1_Click" />
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="结题答辩安排" Font-Names="Aparajita" 
                Font-Size="XX-Large" ForeColor="#66FF33"></asp:Label>
            <br />
            <br />
            项目ID:<asp:DropDownList ID="DropDownList2" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="ProjectId" 
                DataValueField="ProjectId">
            </asp:DropDownList>
            <br />
            <br />
            项目结题答辩开始时间:<asp:TextBox ID="FinalStartTime" runat="server"></asp:TextBox>
            <br />
            <br />
            项目结题答辩结束时间:<asp:TextBox ID="FinalEndTime" runat="server"></asp:TextBox>
            <br />
            <br />
            项目结题答辩地点:<asp:TextBox ID="FinalLocation" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnconfirm2" runat="server" Text="信息确认" 
                onclick="btnconfirm2_Click" />
            <br />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
