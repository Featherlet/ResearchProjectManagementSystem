<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdministerManaging.aspx.cs" Inherits="AdministerManaging" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="text-align: center"><div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" CellSpacing="2" DataKeyNames="CommId" 
            DataSourceID="sqladmin" AllowPaging="True">
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <Columns>
                <asp:BoundField DataField="CommId" HeaderText="管理员ID" ReadOnly="True" 
                    SortExpression="CommId" />
                <asp:BoundField DataField="CommName" HeaderText="管理员姓名" 
                    SortExpression="CommName" />
                <asp:BoundField DataField="CPassword" HeaderText="管理员密码" 
                    SortExpression="CPassword" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowSelectButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="sqladmin" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ProjectSystemConnectionString2 %>" 
            DeleteCommand="DELETE FROM [Commanders] WHERE [CommId] = @CommId" 
            InsertCommand="INSERT INTO [Commanders] ([CommId], [CommName], [CPassword]) VALUES (@CommId, @CommName, @CPassword)" 
            SelectCommand="SELECT [CommId], [CommName], [CPassword] FROM [Commanders]" 
            UpdateCommand="UPDATE [Commanders] SET [CommName] = @CommName, [CPassword] = @CPassword WHERE [CommId] = @CommId">
            <DeleteParameters>
                <asp:Parameter Name="CommId" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="CommName" Type="String" />
                <asp:Parameter Name="CPassword" Type="String" />
                <asp:Parameter Name="CommId" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="CommId" Type="String" />
                <asp:Parameter Name="CommName" Type="String" />
                <asp:Parameter Name="CPassword" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
       <br />
            添加管理员信息:<br />
            <br />
            管理员ID：<br />
            <asp:TextBox ID="IDinput" runat="server"></asp:TextBox>
            <br />
            管理员姓名:<br />
            <asp:TextBox ID="Nameinput" runat="server"></asp:TextBox>
            <br />
            管理员密码:<br />
            <asp:TextBox ID="Passinput" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="addConfirm" runat="server" Text="确认添加" 
            onclick="addConfirm_Click" />
            <br />
    </div>
    </asp:Panel>
    
    </form>
</body>
</html>
