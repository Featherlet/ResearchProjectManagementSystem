<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DaiShenHe.aspx.cs" Inherits="DaiShenHe" %>

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
                CellPadding="2" DataKeyNames="StuId" DataSourceID="Source" ForeColor="Black" OnRowCreated="GridView_Create" 
                GridLines="None">
                <Columns>
                    <asp:BoundField DataField="SubmitState" HeaderText="项目提交状态" 
                        SortExpression="SubmitState" />
                    <asp:BoundField DataField="ProjectName" HeaderText="项目名称" 
                        SortExpression="ProjectName" />
                    <asp:BoundField DataField="ProjectType" HeaderText="项目类型" 
                        SortExpression="ProjectType" />
                    <asp:BoundField DataField="StuId" HeaderText="项目负责人ID" ReadOnly="True" 
                        SortExpression="StuId" />
                    <asp:BoundField DataField="TeacherId" HeaderText="项目指导老师ID" 
                        SortExpression="TeacherId" />
                    <asp:BoundField DataField="Member1" HeaderText="小组成员1" 
                        SortExpression="Member1" />
                    <asp:BoundField DataField="Member2" HeaderText="小组成员2" 
                        SortExpression="Member2" />
                    <asp:BoundField DataField="Member3" HeaderText="小组成员3" 
                        SortExpression="Member3" />
                    <asp:BoundField DataField="Member4" HeaderText="小组成员4" 
                        SortExpression="Member4" />
                    <asp:TemplateField HeaderText="修改意见">
                     <ItemTemplate>
                         <asp:TextBox ID="ChangeText" runat="server"></asp:TextBox>
                       </ItemTemplate>
                    
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="查看申请书">
                       <ItemTemplate>
                           <asp:Button ID="ShenQingBtn" runat="server" Text="点击查看"  CausesValidation="false"  CommandName="" />
                       </ItemTemplate>
                    
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="确认提交">
                        <ItemTemplate>

                          <asp:Button ID="ConfirmSubmit" runat="server" CausesValidation="false" CommandName="" Text="确认信息"/>

                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="审核通过">
                        <ItemTemplate>

                          <asp:Button ID="ConfirmCheck" runat="server" CausesValidation="false" CommandName="" Text="审核通过"/>

                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                    HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
            </asp:GridView>
            <asp:SqlDataSource ID="Source" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ProjectSystemConnectionString2 %>" 
                DeleteCommand="DELETE FROM [Stu_Application_Info] WHERE [StuId] = @StuId" 
                InsertCommand="INSERT INTO [Stu_Application_Info] ([StuId], [TeacherId], [ProjectName], [FilePath], [SubmitState], [ProjectType], [Member1], [Member2], [Member3], [Member4], [Reply]) VALUES (@StuId, @TeacherId, @ProjectName, @FilePath, @SubmitState, @ProjectType, @Member1, @Member2, @Member3, @Member4, @Reply)" 
                SelectCommand="SELECT * FROM [Stu_Application_Info]" 
                UpdateCommand="UPDATE [Stu_Application_Info] SET [TeacherId] = @TeacherId, [ProjectName] = @ProjectName, [FilePath] = @FilePath, [SubmitState] = @SubmitState, [ProjectType] = @ProjectType, [Member1] = @Member1, [Member2] = @Member2, [Member3] = @Member3, [Member4] = @Member4, [Reply] = @Reply WHERE [StuId] = @StuId">
                <DeleteParameters>
                    <asp:Parameter Name="StuId" Type="String" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TeacherId" Type="String" />
                    <asp:Parameter Name="ProjectName" Type="String" />
                    <asp:Parameter Name="FilePath" Type="String" />
                    <asp:Parameter Name="SubmitState" Type="String" />
                    <asp:Parameter Name="ProjectType" Type="String" />
                    <asp:Parameter Name="Member1" Type="String" />
                    <asp:Parameter Name="Member2" Type="String" />
                    <asp:Parameter Name="Member3" Type="String" />
                    <asp:Parameter Name="Member4" Type="String" />
                    <asp:Parameter Name="Reply" Type="String" />
                    <asp:Parameter Name="StuId" Type="String" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="StuId" Type="String" />
                    <asp:Parameter Name="TeacherId" Type="String" />
                    <asp:Parameter Name="ProjectName" Type="String" />
                    <asp:Parameter Name="FilePath" Type="String" />
                    <asp:Parameter Name="SubmitState" Type="String" />
                    <asp:Parameter Name="ProjectType" Type="String" />
                    <asp:Parameter Name="Member1" Type="String" />
                    <asp:Parameter Name="Member2" Type="String" />
                    <asp:Parameter Name="Member3" Type="String" />
                    <asp:Parameter Name="Member4" Type="String" />
                    <asp:Parameter Name="Reply" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
