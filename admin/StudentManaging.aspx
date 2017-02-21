<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentManaging.aspx.cs" Inherits="StudentManaging" %>

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
                DataKeyNames="StuId" DataSourceID="SqlDataSource" CellPadding="4" 
                ForeColor="#333333" GridLines="None">
                <RowStyle BackColor="#E3EAEB" />
                <Columns>
                    <asp:BoundField DataField="StuId" HeaderText="学生ID" ReadOnly="True" 
                        SortExpression="StuId" />
                    <asp:BoundField DataField="StuName" HeaderText="学生姓名" 
                        SortExpression="StuName" />
                    <asp:BoundField DataField="StuClass" HeaderText="学生班级" 
                        SortExpression="StuClass" />
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ProjectSystemConnectionString2 %>" 
                DeleteCommand="DELETE FROM [Students] WHERE [StuId] = @StuId" 
                InsertCommand="INSERT INTO [Students] ([StuId], [StuName], [StuClass]) VALUES (@StuId, @StuName, @StuClass)" 
                SelectCommand="SELECT [StuId], [StuName], [StuClass] FROM [Students]" 
                UpdateCommand="UPDATE [Students] SET [StuName] = @StuName, [StuClass] = @StuClass WHERE [StuId] = @StuId">
                <DeleteParameters>
                    <asp:Parameter Name="StuId" Type="String" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="StuName" Type="String" />
                    <asp:Parameter Name="StuClass" Type="String" />
                    <asp:Parameter Name="StuId" Type="String" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="StuId" Type="String" />
                    <asp:Parameter Name="StuName" Type="String" />
                    <asp:Parameter Name="StuClass" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
            
            
            
        </asp:Panel>
   
       
      
    </div>
   
    </form>
</body>
</html>
