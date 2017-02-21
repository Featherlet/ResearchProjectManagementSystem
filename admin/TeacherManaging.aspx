<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TeacherManaging.aspx.cs" Inherits="TeacherManaging" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" style="text-align: center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" CellSpacing="2" DataKeyNames="TchrId" 
                DataSourceID="SqlDataSource1">
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <Columns>
                    <asp:BoundField DataField="TchrId" HeaderText="教师id" ReadOnly="True" 
                        SortExpression="TchrId" />
                    <asp:BoundField DataField="TchrName" HeaderText="教师姓名" 
                        SortExpression="TchrName" />
                    <asp:BoundField DataField="TchrDepartment" HeaderText="所在部门" 
                        SortExpression="TchrDepartment" />
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ProjectSystemConnectionString2 %>" 
                DeleteCommand="DELETE FROM [Teachers] WHERE [TchrId] = @TchrId" 
                InsertCommand="INSERT INTO [Teachers] ([TchrName], [TchrId], [TchrDepartment]) VALUES (@TchrName, @TchrId, @TchrDepartment)" 
                SelectCommand="SELECT [TchrName], [TchrId], [TchrDepartment] FROM [Teachers]" 
                UpdateCommand="UPDATE [Teachers] SET [TchrName] = @TchrName, [TchrDepartment] = @TchrDepartment WHERE [TchrId] = @TchrId">
                <DeleteParameters>
                    <asp:Parameter Name="TchrId" Type="String" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TchrName" Type="String" />
                    <asp:Parameter Name="TchrDepartment" Type="String" />
                    <asp:Parameter Name="TchrId" Type="String" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="TchrName" Type="String" />
                    <asp:Parameter Name="TchrId" Type="String" />
                    <asp:Parameter Name="TchrDepartment" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            添加教师信息:<br />
            <br />
            教师ID：<br />
            <asp:TextBox ID="IDinput" runat="server"></asp:TextBox>
            <br />
            教师姓名:<br />
            <asp:TextBox ID="Nameinput" runat="server"></asp:TextBox>
            <br />
            教师身份证号:<br />
            <asp:TextBox ID="Shenfeninput" runat="server" 
                ></asp:TextBox>
            <br />
            教师邮箱:<br />
            <asp:TextBox ID="TMail" runat="server"></asp:TextBox>
            <br />
            教师部门:<br />
            <asp:TextBox ID="Tdepartment" runat="server"></asp:TextBox>
            <br />
            教师电话:<br />
            <asp:TextBox ID="Ttel" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="addConfirm" runat="server" Text="确认添加" 
            onclick="addConfirm_Click" />
            <br />
        </asp:Panel>
    
       
    
    </div>
    </form>
</body>
</html>
