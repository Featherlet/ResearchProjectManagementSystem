<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPages/StuMasterPage.master" AutoEventWireup="true" CodeFile="StuApply.aspx.cs" Inherits="StudentPages_StuApply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:Panel ID="Panel1" runat="server" Width="100%" Height="640px" HorizontalAlign="Center">

<table align="center" width="100%">
 <tr>
    <td style="text-align: center" bgcolor="#CCCCCC">
        <br />
        <asp:Label ID="Label2" runat="server" Text="项目申报" style="font-size: x-large; text-align: left; 
            font-family: 楷体; font-weight: 700">
        </asp:Label>
        <br />
    </td>
 </tr>
 <tr>
    <td align=center>
        <asp:Label ID="Label9" runat="server" Text="选择项目类型" style="font-size: medium"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            style="font-size: medium" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" >
            <asp:ListItem>未选择</asp:ListItem>
            <asp:ListItem>大学生创新项目</asp:ListItem>
            <asp:ListItem>实验室基金项目</asp:ListItem>
            <asp:ListItem>培育项目</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="自主申报命题申报" 
            onclick="Button1_Click" style="font-size: large" />
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
                       <td  colspan="2" Width="100px"><asp:Label ID="NameLabel" runat="server" Text='<%# Eval("ProjectName") %>' Font-Bold="True" Font-Size="Large"></asp:Label></td>
                       <td  colspan="3" Width="100px">
                           <asp:Button ID="Button2" runat="server" Text="申请该项目" CommandName="apply" Font-Size="Large" /></td>
                       
                  </tr>
                  <tr>
                       <td Width="80px" align=center valign=middle><asp:Label ID="Label4" runat="server" Text="项目类型" Font-Size="Large"></asp:Label></td>                       
                       <td Width="100px" ><asp:Label ID="PositionLabel" runat="server" Text='<%# Eval("ProjectType") %>' Font-Size="Large"></asp:Label></td>
                       <td  Width="80px"align=center valign=middle><asp:Label ID="Label6" runat="server" Text="指导老师" Font-Size="Large"></asp:Label></td>                       
                       <td  Width="100px"><asp:Label ID="Label5" runat="server" Text='<%# Eval("TchrName") %>' Font-Size="Large"></asp:Label></td>
                       <td  Width="80px"align=center valign=middle><asp:Label ID="Label7" runat="server" Text="申请日期" Font-Size="Large"></asp:Label></td>                       
                       <td  Width="150px"><asp:Label ID="Label1" runat="server" Text='<%# Eval("ApplyDate") %>' Font-Size="Large"></asp:Label></td>
                  </tr>
                  <tr>
                       <td height="50px" Width="80px" align=center valign=middle><asp:Label ID="Label10" runat="server" Text="项目简介" Font-Size="Large"></asp:Label></td>                       
                       <td height="50px" colspan="5" Width="100px" ><asp:Label ID="Label3" runat="server" Text='<%# Eval("Description") %>' Font-Size="Large"></asp:Label></td>
                  </tr>
              </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    </td>
 </tr>
</table>
</asp:Panel>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ProjectSystemConnectionString %>" 
        SelectCommand="SELECT * FROM [Projects]"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ProjectSystemConnectionString %>" 
        SelectCommand="SELECT [TypeName] FROM [ProjectTypeInformation]">
    </asp:SqlDataSource>

</asp:Content>

