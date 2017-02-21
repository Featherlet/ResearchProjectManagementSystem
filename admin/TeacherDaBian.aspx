<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TeacherDaBian.aspx.cs" Inherits="TeacherDaBian" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            color: #FF3300;
            font-weight: bold;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
       
        <asp:Panel ID="Panel1" runat="server" style="text-align: center">
            <span class="style1">专家答辩评论<br />
            </span><br />
            <br />
            选择教师:<asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="TchrId" DataValueField="TchrId">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ProjectSystemConnectionString2 %>" 
                SelectCommand="SELECT [TchrId] FROM [Teachers]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            选择项目题目:<asp:DropDownList ID="DropDownList2" runat="server" 
                DataSourceID="SqlDataSource2" DataTextField="ProjectName" 
                DataValueField="ProjectName">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ProjectSystemConnectionString2 %>" 
                SelectCommand="SELECT [ProjectName] FROM [ProjectInformation]">
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            选择专家评论类型:<asp:DropDownList ID="DropDownList3" runat="server">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="confirm" runat="server" Text="确认指定" onclick="confirm_Click" />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
