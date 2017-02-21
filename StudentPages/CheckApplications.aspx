<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPages/StuMasterPage.master" AutoEventWireup="true" CodeFile="CheckApplications.aspx.cs" Inherits="CheckApplications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%" align="center">
 <tr>
    <td style="text-align: center" bgcolor="#CCCCCC">
        <br />
        <asp:Label ID="Label2" runat="server" Text="项目申请查看" 
            
            style="font-size: x-large; text-align: left; font-family: 楷体; font-weight: 700"></asp:Label>
        <br />
    </td>
 </tr>
 <tr>
    <td align="center">
    <asp:DataList ID="DataList1" runat="server" 
        DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" 
            onitemcommand="DataList1_ItemCommand">
        <AlternatingItemStyle BackColor="#DCDCDC" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
        <ItemTemplate>
              <table border="3"  width="100%">
                   <tr>
                       <td Width="80px" align=center valign=middle><asp:Label ID="Label8" runat="server" Text="项目名称" style="color: navy" Font-Bold="True" Font-Size="Large"></asp:Label></td>
                       <td  colspan="5" Width="100px"><asp:Label ID="NameLabel" runat="server" Text='<%# Eval("ProjectName") %>' Font-Bold="True" Font-Size="Large"></asp:Label></td>
                       
                  </tr>
                  <tr>
                       <td Width="80px" align=center valign=middle><asp:Label ID="Label1" runat="server" Text="项目类型" Font-Size="Large"></asp:Label></td>                       
                       <td Width="100px" ><asp:Label ID="PositionLabel" runat="server" Text='<%# Eval("ProjectType") %>' Font-Size="Large"></asp:Label></td>
                       <td  Width="80px"align=center valign=middle><asp:Label ID="Label5" runat="server" Text="指导老师" Font-Size="Large"></asp:Label></td>                       
                       <td  Width="100px"><asp:Label ID="Label9" runat="server" Text='<%# Eval("TchrName") %>' Font-Size="Large"></asp:Label></td>
                       <td  Width="80px"align=center valign=middle><asp:Label ID="Label10" runat="server" Text="组员1" Font-Size="Large"></asp:Label></td>                       
                       <td  Width="150px"><asp:Label ID="Label11" runat="server" Text='<%# Eval("Member1") %>' Font-Size="Large"></asp:Label></td>
                  </tr>
                  <tr>
                       <td  Width="80px"align=center valign=middle><asp:Label ID="Label3" runat="server" Text="组员2" Font-Size="Large"></asp:Label></td>                       
                       <td  Width="150px"><asp:Label ID="Label4" runat="server" Text='<%# Eval("Member2") %>' Font-Size="Large"></asp:Label></td>
                       <td  Width="80px"align=center valign=middle><asp:Label ID="Label6" runat="server" Text="组员3" Font-Size="Large"></asp:Label></td>                       
                       <td  Width="150px"><asp:Label ID="Label12" runat="server" Text='<%# Eval("Member3") %>' Font-Size="Large"></asp:Label></td>
                       <td  Width="80px"align=center valign=middle><asp:Label ID="Label13" runat="server" Text="组员4" Font-Size="Large"></asp:Label></td>                       
                       <td  Width="150px"><asp:Label ID="Label14" runat="server" Text='<%# Eval("Member4") %>' Font-Size="Large"></asp:Label></td>
                  </tr>
                  <tr>
                       <td Width="80px" align=center valign=middle><asp:Label ID="Label15" runat="server" Text="提交状态" Font-Size="Large"></asp:Label></td>                       
                       <td Width="100px" ><asp:Label ID="LabelState" runat="server" Text='<%# Eval("SubmitState") %>' Font-Size="Large"></asp:Label></td>
                       
                       <td><asp:Button ID="Button1" runat="server" Text="修改" Width="80px" CommandName="edit"/></td>
                  </tr>
              </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    </td>
 </tr>

 <tr>
    <td>
        
    </td>
 </tr>

  <tr>
    <td align="center">
    <asp:DataList ID="DataList2" runat="server" 
        DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#999999" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" 
            onitemcommand="DataList2_ItemCommand">
        <AlternatingItemStyle BackColor="#DCDCDC" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
        <ItemTemplate>
              <table border="3"  width="100%">
                   <tr>
                       <td Width="80px" align=center valign=middle><asp:Label ID="Label16" runat="server" Text="项目名称" style="color: navy" Font-Bold="True" Font-Size="Large"></asp:Label></td>
                       <td  colspan="5" Width="100px"><asp:Label ID="NameLabel" runat="server" Text='<%# Eval("ProjectName") %>' Font-Bold="True" Font-Size="Large"></asp:Label></td>
                       
                  </tr>
                  <tr>
                       <td Width="80px" align=center valign=middle><asp:Label ID="Label17" runat="server" Text="项目类型" Font-Size="Large"></asp:Label></td>                       
                       <td Width="100px" ><asp:Label ID="PositionLabel" runat="server" Text='<%# Eval("ProjectType") %>' Font-Size="Large"></asp:Label></td>
                       <td  Width="80px"align=center valign=middle><asp:Label ID="Label18" runat="server" Text="指导老师" Font-Size="Large"></asp:Label></td>                       
                       <td  Width="100px"><asp:Label ID="Label9" runat="server" Text='<%# Eval("TchrName") %>' Font-Size="Large"></asp:Label></td>
                       <td  Width="80px"align=center valign=middle><asp:Label ID="Label19" runat="server" Text="组员1" Font-Size="Large"></asp:Label></td>                       
                       <td  Width="150px"><asp:Label ID="Label11" runat="server" Text='<%# Eval("Member1") %>' Font-Size="Large"></asp:Label></td>
                  </tr>
                  <tr>
                       <td  Width="80px"align=center valign=middle><asp:Label ID="Label20" runat="server" Text="组员2" Font-Size="Large"></asp:Label></td>                       
                       <td  Width="150px"><asp:Label ID="Label4" runat="server" Text='<%# Eval("Member2") %>' Font-Size="Large"></asp:Label></td>
                       <td  Width="80px"align=center valign=middle><asp:Label ID="Label21" runat="server" Text="组员3" Font-Size="Large"></asp:Label></td>                       
                       <td  Width="150px"><asp:Label ID="Label12" runat="server" Text='<%# Eval("Member3") %>' Font-Size="Large"></asp:Label></td>
                       <td  Width="80px"align=center valign=middle><asp:Label ID="Label22" runat="server" Text="组员4" Font-Size="Large"></asp:Label></td>                       
                       <td  Width="150px"><asp:Label ID="Label14" runat="server" Text='<%# Eval("Member4") %>' Font-Size="Large"></asp:Label></td>
                  </tr>
                  <tr>
                       <td Width="80px" align=center valign=middle><asp:Label ID="Label23" runat="server" Text="提交状态" Font-Size="Large"></asp:Label></td>                       
                       <td Width="100px" ><asp:Label ID="Label7" runat="server" Text='<%# Eval("SubmitState") %>' Font-Size="Large"></asp:Label></td>
                       <td Width="80px" align=center valign=middle><asp:Label ID="Label24" runat="server" Text="审核意见" Font-Size="Large"></asp:Label></td>                       
                       <td Width="100px" ><asp:Label ID="Label25" runat="server" Text='<%# Eval("Reply") %>' Font-Size="Large"></asp:Label></td>
                       <td><asp:Button ID="Button1" runat="server" Text="查看" Width="80px" CommandName="check"/></td>
                  </tr>
              </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    </td>
 </tr>
</table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ProjectSystemConnectionString %>" 
        SelectCommand="SELECT * FROM [Stu_Application_Info]"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ProjectSystemConnectionString %>" 
        SelectCommand="SELECT * FROM [Stu_Application_Info]"></asp:SqlDataSource>
</asp:Content>

