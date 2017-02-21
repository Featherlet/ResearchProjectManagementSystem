<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPages/StuMasterPage.master" AutoEventWireup="true" CodeFile="AllProjects.aspx.cs" Inherits="AllProjects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table width="100%" align="center">
 <tr>
    <td style="text-align: center" bgcolor="#CCCCCC">
        <br />
        <asp:Label ID="Label2" runat="server" Text="项目基本信息" 
            style="font-size: x-large; text-align: left; font-family: 楷体; font-weight: 700"></asp:Label>
        <br />
    </td>
 </tr>
 <tr>
    <td style="text-align: center" bgcolor="#CCCCCC">
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            RepeatDirection="Horizontal" AutoPostBack="True" 
            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
            style="font-size: large">
            <asp:ListItem Value="1">按项目类型查看</asp:ListItem>
            <asp:ListItem Value="2">按日期倒序查看</asp:ListItem>
        </asp:RadioButtonList>
    </td>
 </tr>
 <tr>
    <td>
    <asp:DataList ID="DataList1" runat="server" 
        DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
        <AlternatingItemStyle BackColor="#DCDCDC" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
        <ItemTemplate>
              <table border="3"  width="100%">
                   <tr>
                       <td Width="80px" align=center valign=middle><asp:Label ID="Label1" runat="server" Text="项目信息"></asp:Label></td>
                       <td  colspan="5" Width="100px"><asp:Label ID="NameLabel" runat="server" Text='<%# Eval("ProjectName") %>'></asp:Label></td>
                       
                  </tr>
                  <tr>
                       <td Width="80px" align=center valign=middle><asp:Label ID="Label3" runat="server" Text="项目类型"></asp:Label></td>                       
                       <td Width="100px" ><asp:Label ID="PositionLabel" runat="server" Text='<%# Eval("ProjectType") %>'></asp:Label></td>
                       <td  Width="80px"align=center valign=middle><asp:Label ID="Label4" runat="server" Text="申请日期"></asp:Label></td>                       
                       <td  Width="100px"><asp:Label ID="PlayerNumber" runat="server" Text='<%# Eval("ApplyDate") %>'></asp:Label></td>
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
        SelectCommand="SELECT * FROM [ProjectInformation]"></asp:SqlDataSource>

</asp:Content>

