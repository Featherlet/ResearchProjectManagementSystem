<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPages/StuMasterPage.master" AutoEventWireup="true" CodeFile="StudentMain.aspx.cs" Inherits="StudentMain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Panel ID="Panel1" runat="server" Height="640px" BackColor="#A4C8FF">
 
    <table style="width: 100%; height: 257px;">
        <tr style="font-family: 楷体">
            <td colspan="3" align="center" bgcolor="#5398FF" style="font-size: x-large">
                <br />
                个人基本信息
             
                <br />
            </td>
        </tr>
        <tr style="font-family: 楷体">
            <td  align="center" width="40px" height="80px">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/默认头像.jpg" />
            </td>

            <td>
                <table style="width: 100%;" >
                    <tr >
                         <td align="center" style="height: 35px" >
                            <asp:Label ID="Label1" runat="server" style="font-size: large" Text="姓名"></asp:Label>
                        </td>
                        <td align="left" style="height: 35px">
                            <asp:Label ID="LabelName" runat="server" style="font-size: large"></asp:Label>
                        </td>
                    </tr>
                    <tr style="font-family: 楷体" >
                        <td align="center" style="height: 35px" >
                            <asp:Label ID="Label2" runat="server" Text="班级" style="font-size: large"></asp:Label>
                        </td>
                        <td align="left" style="height: 35px" >
                            <asp:Label ID="LabelClass" runat="server" style="font-size: large"></asp:Label>
                        </td>
                    </tr>
                    <tr style="font-family: 楷体">
                        <td align="center" style="height: 35px" >
                            <asp:Label ID="Label3" runat="server" Text="学号" style="font-size: large"></asp:Label>
                        </td>
                        <td align="left" style="height: 35px" >
                            <asp:Label ID="LabelId" runat="server" style="font-size: large"></asp:Label>
                        </td>
                    </tr>
                    <tr style="font-family: 楷体">
                        <td align="center" style="height: 35px" >
                            <asp:Label ID="Label4" runat="server" Text="邮箱" style="font-size: large"></asp:Label>
                        </td>
                        <td align="left" style="height: 35px" >
                            <asp:Label ID="LabelMail" runat="server" style="font-size: large"></asp:Label>
                        </td>
                    </tr>
                    <tr style="font-family: 楷体">
                        <td align="center" style="height: 35px" >
                            <asp:Label ID="Label6" runat="server" Text="手机号" style="font-size: large"></asp:Label>
                        </td>
                        <td align="left" style="height: 35px" >
                            <asp:Label ID="LabelPhone" runat="server" style="font-size: large"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>           
         </tr>        
         
         <tr>
            <td colspan="2" style="text-align: center; font-size: large">

                <br />
                <br />
                <span style="font-family: 楷体; font-size: x-large"><strong>申请项目概览</strong></span></td>
         </tr>

         <tr>
            <td colspan="3" align="center">
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
                       <td Width="80px" align=center valign=middle><asp:Label ID="Label8" runat="server" Text="项目名称" style="color: navy" Font-Bold="True" Font-Size="Large"></asp:Label></td>
                       <td  colspan="5" Width="100px"><asp:Label ID="NameLabel" runat="server" Text='<%# Eval("ProjectName") %>' Font-Bold="True" Font-Size="Large"></asp:Label></td>
                       
                  </tr>
                  <tr>
                       <td Width="80px" align=center valign=middle><asp:Label ID="Label1" runat="server" Text="项目类型" Font-Size="Large"></asp:Label></td>                       
                       <td Width="100px" ><asp:Label ID="PositionLabel" runat="server" Text='<%# Eval("ProjectType") %>' Font-Size="Large"></asp:Label></td>
                       <td  Width="80px"align=center valign=middle><asp:Label ID="Label5" runat="server" Text="指导老师" Font-Size="Large"></asp:Label></td>                       
                       <td  Width="100px"><asp:Label ID="Label9" runat="server" Text='<%# Eval("TchrName") %>' Font-Size="Large"></asp:Label></td>
                       <td Width="80px" align=center valign=middle><asp:Label ID="Label10" runat="server" Text="审核状态" Font-Size="Large"></asp:Label></td>                       
                       <td Width="100px" ><asp:Label ID="Label11" runat="server" Text='<%# Eval("SubmitState") %>' Font-Size="Large"></asp:Label></td>
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
</asp:Panel>
</asp:Content>

