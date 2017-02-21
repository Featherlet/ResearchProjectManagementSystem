<%@ Page Language="C#" AutoEventWireup="true" CodeFile="YiShenHe.aspx.cs" Inherits="YiShenHe" %>

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
                BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                CellPadding="2" DataKeyNames="ProjectId" DataSourceID="SqlDataSource1" 
                ForeColor="Black" GridLines="None">
                <Columns>
                    <asp:BoundField DataField="ProjectId" HeaderText="项目ID" ReadOnly="True" 
                        SortExpression="ProjectId" />
                    <asp:BoundField DataField="TchrId" HeaderText="指导教师ID" 
                        SortExpression="TchrId" />
                    <asp:BoundField DataField="StuId" HeaderText="项目负责人ID" SortExpression="StuId" />
                    <asp:BoundField DataField="ProjectName" HeaderText="项目名称" 
                        SortExpression="ProjectName" />
                    <asp:BoundField DataField="ProjectType" HeaderText="项目类型" 
                        SortExpression="ProjectType" />
                    <asp:BoundField DataField="ApplyDate" HeaderText="项目申请时间" 
                        SortExpression="ApplyDate" />
                    <asp:BoundField DataField="MidtermState" HeaderText="中期状态" 
                        SortExpression="MidtermState" />
                    <asp:BoundField DataField="FinalState" HeaderText="结题状态" 
                        SortExpression="FinalState" />
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                    HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ProjectSystemConnectionString2 %>" 
                DeleteCommand="DELETE FROM [ProjectInformation] WHERE [ProjectId] = @ProjectId" 
                InsertCommand="INSERT INTO [ProjectInformation] ([ProjectId], [TchrId], [StuId], [ProjectName], [ProjectType], [ApplyDate], [MidtermState], [FinalState]) VALUES (@ProjectId, @TchrId, @StuId, @ProjectName, @ProjectType, @ApplyDate, @MidtermState, @FinalState)" 
                SelectCommand="SELECT [ProjectId], [TchrId], [StuId], [ProjectName], [ProjectType], [ApplyDate], [MidtermState], [FinalState] FROM [ProjectInformation]" 
                UpdateCommand="UPDATE [ProjectInformation] SET [TchrId] = @TchrId, [StuId] = @StuId, [ProjectName] = @ProjectName, [ProjectType] = @ProjectType, [ApplyDate] = @ApplyDate, [MidtermState] = @MidtermState, [FinalState] = @FinalState WHERE [ProjectId] = @ProjectId">
                <DeleteParameters>
                    <asp:Parameter Name="ProjectId" Type="String" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TchrId" Type="String" />
                    <asp:Parameter Name="StuId" Type="String" />
                    <asp:Parameter Name="ProjectName" Type="String" />
                    <asp:Parameter Name="ProjectType" Type="String" />
                    <asp:Parameter DbType="Date" Name="ApplyDate" />
                    <asp:Parameter Name="MidtermState" Type="String" />
                    <asp:Parameter Name="FinalState" Type="String" />
                    <asp:Parameter Name="ProjectId" Type="String" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="ProjectId" Type="String" />
                    <asp:Parameter Name="TchrId" Type="String" />
                    <asp:Parameter Name="StuId" Type="String" />
                    <asp:Parameter Name="ProjectName" Type="String" />
                    <asp:Parameter Name="ProjectType" Type="String" />
                    <asp:Parameter DbType="Date" Name="ApplyDate" />
                    <asp:Parameter Name="MidtermState" Type="String" />
                    <asp:Parameter Name="FinalState" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
