<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPages/StuMasterPage.master" AutoEventWireup="true" CodeFile="ProjectInformation.aspx.cs" Inherits="ProjectInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<table>
 <tr>
    <td style="text-align: center" bgcolor="#CCCCCC">
        <br />
        <asp:Label ID="Label2" runat="server" Text="项目基本信息" 
            style="font-size: x-large; text-align: left; font-family: 楷体; font-weight: 700"></asp:Label>
        <br />
    </td>
 </tr>
 <tr>
    <td>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="ProjectId" 
        DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
        <AlternatingItemStyle BackColor="#DCDCDC" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
        <ItemTemplate>
              <table border="3"  width="100%">
                   <tr>
                       <td Width="80px" align=center valign=middle><asp:Label ID="Label9" runat="server" Text="项目名称" style="color: navy" Font-Bold="True"></asp:Label></td>
                       <td  colspan="5" Width="100px"><asp:Label ID="NameLabel" runat="server" Text='<%# Eval("ProjectName") %>' Font-Bold="True"></asp:Label></td>
                       
                  </tr>
                  <tr>
                       <td Width="80px" align=center valign=middle><span style="color: navy">项目类型</span></td>                       
                       <td Width="100px" ><asp:Label ID="PositionLabel" runat="server" Text='<%# Eval("ProjectType") %>'></asp:Label></td>
                       <td  Width="80px"align=center valign=middle><span style="color: navy">申请日期</span></td>                       
                       <td  Width="100px"><asp:Label ID="PlayerNumber" runat="server" Text='<%# Eval("ApplyDate") %>'></asp:Label></td>
                       <td  Width="80px"align=center valign=middle><span style="color: navy">指导老师</span></td>                       
                       <td  Width="100px"><asp:Label ID="Label5" runat="server" Text='<%# Eval("TchrName") %>'></asp:Label></td>
                  </tr>
                  <tr>
                       <td Width="80px" align=center valign=middle><span style="color: navy">小组成员1</span></td>                       
                       <td Width="100px" ><asp:Label ID="Label1" runat="server" Text='<%# Eval("Member1") %>'></asp:Label></td>
                       <td  Width="80px"align=center valign=middle><span style="color: navy">小组成员2</span></td>                       
                       <td  Width="100px"><asp:Label ID="Label6" runat="server" Text='<%# Eval("Member2") %>'></asp:Label></td>
                       <td  Width="80px"align=center valign=middle><span style="color: navy">小组成员3</span></td>                       
                       <td  Width="100px"><asp:Label ID="Label7" runat="server" Text='<%# Eval("Member3") %>'></asp:Label></td>
                  </tr>
                  <tr>
                        <td  Width="80px"align=center valign=middle><span style="color: navy">小组成员4</span></td>                       
                       <td  Width="100px"><asp:Label ID="Label8" runat="server" Text='<%# Eval("Member4") %>'></asp:Label></td>
                       <td Width="80px" align=center valign=middle><span style="color: navy">中期报告</span></td>                       
                       <td Width="100px" ><asp:Label ID="Label3" runat="server" Text='<%# Eval("MidtermState") %>'></asp:Label></td>
                       <td Width="80px" align=center valign=middle><span style="color: navy">结题报告</span></td>                       
                       <td Width="100px" ><asp:Label ID="Label4" runat="server" Text='<%# Eval("FinalState") %>'></asp:Label></td>
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

