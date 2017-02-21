<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPages/StuMasterPage.master" AutoEventWireup="true" CodeFile="MidtermPlan.aspx.cs" Inherits="MidtermPlan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table>
 <tr>
    <td style="text-align: center" bgcolor="#DEDEE9">
        <br />
        <asp:Label ID="Label2" runat="server" Text="中期考核信息" 
            style="font-size: x-large; text-align: left; font-family: 楷体; font-weight: 700"></asp:Label>
        <br />
    </td>
 </tr>
 <tr>
    <td>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="ProjectId" 
        DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <AlternatingItemStyle BackColor="#F7F7F7" />
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <ItemTemplate>
              <table border="3"  width="100%">
                   <tr>
                       <td Width="80px" align=center valign=middle><span style="color: navy">项目名称</span>
                       </td>
                       <td  colspan="5" Width="100px"><asp:Label ID="NameLabel" runat="server" Text='<%# Eval("ProjectName") %>'></asp:Label>
                       </td>
                  </tr>
                  <tr>
                       <td Width="80px" align=center valign=middle><span style="color: navy">考核日期</span></td>                       
                       <td Width="100px" ><asp:Label ID="PositionLabel" runat="server" Text='<%# Eval("MidDate") %>'></asp:Label></td>
                       <td  Width="80px"align=center valign=middle><span style="color: navy">考核时间</span></td>                       
                       <td  Width="100px"><asp:Label ID="PlayerNumber" runat="server" Text='<%# Eval("MidTime") %>'></asp:Label></td>
                       <td  Width="80px"align=center valign=middle><span style="color: navy">考核地点</span></td>                       
                       <td  Width="100px"><asp:Label ID="Label5" runat="server" Text='<%# Eval("MidLocation") %>'></asp:Label></td>
                  </tr>
              </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
    </asp:DataList>
    </td>
 </tr>
</table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ProjectSystemConnectionString %>" 
        SelectCommand="SELECT * FROM [MidtermExam]"></asp:SqlDataSource>

</asp:Content>

