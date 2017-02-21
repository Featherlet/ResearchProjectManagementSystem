<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPages/StuMasterPage.master" AutoEventWireup="true" CodeFile="CheckResult.aspx.cs" Inherits="CheckResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width: 100%;">
        <tr>
            <td align="center" bgcolor="#DEDEE9">
                <br />
                <asp:Label ID="Label1" runat="server" Text="已提交成果查看" 
                    style="font-size: x-large; font-family: 楷体"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" style="height: 23px" bgcolor="#D2D2E1">
                <asp:Label ID="Label6" runat="server" Text="选择项目："></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="ProjectName" 
                    DataValueField="ProjectName" AutoPostBack="True">
                </asp:DropDownList>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="搜索" />
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
                       <td Width="80px" align=center valign=middle><span style="color: navy">成果名称</span></td>                       
                       <td Width="100px" ><asp:Label ID="PositionLabel" runat="server" Text='<%# Eval("ResultName") %>'></asp:Label></td>
                       <td  Width="80px"align=center valign=middle><span style="color: navy">成果类型</span></td>                       
                       <td  Width="100px"><asp:Label ID="PlayerNumber" runat="server" Text='<%# Eval("FileType") %>'></asp:Label></td>
                       <td  Width="80px"align=center valign=middle><span style="color: navy">审查状态</span></td>                       
                       <td  Width="100px"><asp:Label ID="Label5" runat="server" Text='<%# Eval("CheckState") %>'></asp:Label></td>
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
        SelectCommand="SELECT * FROM [ProjectInformation]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ProjectSystemConnectionString %>" 
        SelectCommand="SELECT * FROM [ProjectInformation]"></asp:SqlDataSource>
    <br />
</asp:Content>

