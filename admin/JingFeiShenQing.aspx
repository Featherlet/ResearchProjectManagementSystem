<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JingFeiShenQing.aspx.cs" Inherits="JingFeiShenQing" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            color: #00FF00;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" style="text-align: center">
            <span class="style1"><b>项目经费申请<br />
            </b>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" CellSpacing="2" DataKeyNames="ProjectId" 
                DataSourceID="SqlDataSource1" style="font-size: medium">
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <Columns>
                    <asp:BoundField DataField="ProjectId" HeaderText="项目ID" ReadOnly="True" 
                        SortExpression="ProjectId" />
                    <asp:BoundField DataField="TchrId" HeaderText="指导教师ID" 
                        SortExpression="TchrId" />
                    <asp:BoundField DataField="Money" HeaderText="总钱数" SortExpression="Money" />
                    <asp:BoundField DataField="trafmoney" HeaderText="交通费" 
                        SortExpression="trafmoney" />
                    <asp:BoundField DataField="printmoney" HeaderText="印刷费" 
                        SortExpression="printmoney" />
                    <asp:BoundField DataField="matmoney" HeaderText="材料费" 
                        SortExpression="matmoney" />
                    <asp:BoundField DataField="docmoney" HeaderText="文献费用" 
                        SortExpression="docmoney" />
                    <asp:BoundField DataField="bookmoney" HeaderText="购书费" 
                        SortExpression="bookmoney" />
                    <asp:BoundField DataField="othermoney" HeaderText="其他费用" 
                        SortExpression="othermoney" />
                    <asp:BoundField DataField="ApplyState" HeaderText="申请状态" 
                        SortExpression="ApplyState" />
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ProjectSystemConnectionString2 %>" 
                DeleteCommand="DELETE FROM [FinanceApplication] WHERE [ProjectId] = @ProjectId" 
                InsertCommand="INSERT INTO [FinanceApplication] ([ProjectId], [TchrId], [Money], [trafmoney], [printmoney], [matmoney], [docmoney], [bookmoney], [othermoney], [ApplyState]) VALUES (@ProjectId, @TchrId, @Money, @trafmoney, @printmoney, @matmoney, @docmoney, @bookmoney, @othermoney, @ApplyState)" 
                SelectCommand="SELECT [ProjectId], [TchrId], [Money], [trafmoney], [printmoney], [matmoney], [docmoney], [bookmoney], [othermoney], [ApplyState] FROM [FinanceApplication]" 
                UpdateCommand="UPDATE [FinanceApplication] SET [TchrId] = @TchrId, [Money] = @Money, [trafmoney] = @trafmoney, [printmoney] = @printmoney, [matmoney] = @matmoney, [docmoney] = @docmoney, [bookmoney] = @bookmoney, [othermoney] = @othermoney, [ApplyState] = @ApplyState WHERE [ProjectId] = @ProjectId">
                <DeleteParameters>
                    <asp:Parameter Name="ProjectId" Type="String" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TchrId" Type="String" />
                    <asp:Parameter Name="Money" Type="Double" />
                    <asp:Parameter Name="trafmoney" Type="Double" />
                    <asp:Parameter Name="printmoney" Type="Double" />
                    <asp:Parameter Name="matmoney" Type="Double" />
                    <asp:Parameter Name="docmoney" Type="Double" />
                    <asp:Parameter Name="bookmoney" Type="Double" />
                    <asp:Parameter Name="othermoney" Type="Double" />
                    <asp:Parameter Name="ApplyState" Type="String" />
                    <asp:Parameter Name="ProjectId" Type="String" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="ProjectId" Type="String" />
                    <asp:Parameter Name="TchrId" Type="String" />
                    <asp:Parameter Name="Money" Type="Double" />
                    <asp:Parameter Name="trafmoney" Type="Double" />
                    <asp:Parameter Name="printmoney" Type="Double" />
                    <asp:Parameter Name="matmoney" Type="Double" />
                    <asp:Parameter Name="docmoney" Type="Double" />
                    <asp:Parameter Name="bookmoney" Type="Double" />
                    <asp:Parameter Name="othermoney" Type="Double" />
                    <asp:Parameter Name="ApplyState" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
            </span><br />
            
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
