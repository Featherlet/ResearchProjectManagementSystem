<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPages/StuMasterPage.master" AutoEventWireup="true" CodeFile="FinalReport.aspx.cs" Inherits="FinalReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table>
<tr>
  <td bgcolor="#DCDCC9" style="text-align: center; font-size: large">
      <br />
      <asp:Label ID="Label12" runat="server" style="font-size: x-large" 
          Text="结题报告在线填写"></asp:Label>
      <br />
  </td>
</tr>
<tr>
  <td>
    <asp:Wizard ID="Wizard1" runat="server" BackColor="#F7F6F3" 
        BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
        Font-Names="Verdana" Font-Size="0.8em" Height="344px" style="font-size: medium" 
        Width="589px" ActiveStepIndex="0" 
        onfinishbuttonclick="Wizard1_FinishButtonClick">
        <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" 
            Font-Size="0.9em" ForeColor="White" HorizontalAlign="Left" />
        <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#284775" />
        <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
        <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="0.9em" 
            VerticalAlign="Top" />
        <StepStyle BorderWidth="0px" ForeColor="#5D7B9D" />
        <WizardSteps>
            <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                <table style="width: 100%;">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="项目名称"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="ProjectName" 
                                DataValueField="ProjectName" style="font-size: medium">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="项目类别"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" style="font-size: large">
                                <asp:ListItem Value="dc">大学生创新项目</asp:ListItem>
                                <asp:ListItem Value="sy">实验室基金项目</asp:ListItem>
                                <asp:ListItem Value="py">培育项目</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="指导老师ID"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TBTchrID" runat="server" style="font-size: large"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label11" runat="server" Text="指导老师姓名"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TBTchrName" runat="server" style="font-size: large"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="指导老师职称"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TBTchrPosition" runat="server" style="font-size: large"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="小组成员1"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TBMember1" runat="server" style="font-size: large"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="小组成员2"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TBMember2" runat="server" style="font-size: large"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="小组成员3"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TBMember3" runat="server" style="font-size: large"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label13" runat="server" Text="小组成员4"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TBMember4" runat="server" style="font-size: large"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="项目完成情况"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TBConclude" runat="server" style="font-size: large" 
                                Height="200px" TextMode="MultiLine" Width="240px"></asp:TextBox>
                        </td>
                    </tr>
                </table>

            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                <table style="width:100%;">
                    <tr>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="小组人员参与情况"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="TBMember" runat="server" Height="200px" 
                                style="font-size: large" TextMode="MultiLine" Width="240px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label10" runat="server" Text="项目成果总结"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="TBResult" runat="server" Height="200px" 
                                style="font-size: large" TextMode="MultiLine" Width="240px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
  </td>
</tr>
</table>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ProjectSystemConnectionString %>" 
        SelectCommand="SELECT * FROM [ProjectInformation]"></asp:SqlDataSource>

</asp:Content>

