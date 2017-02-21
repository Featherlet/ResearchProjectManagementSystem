<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPages/TchrMasterPage.master" AutoEventWireup="true" CodeFile="Application.aspx.cs" Inherits="TeacherPages_Application" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table>
<tr>
  <td bgcolor="#DCDCC9" style="text-align: center; font-size: large">
      <br />
      <asp:Label ID="Label6" runat="server" style="font-size: x-large" 
          Text="申请书在线填写"></asp:Label>
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
                            <asp:TextBox ID="TBProjectName" runat="server" style="font-size: large"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="项目类别"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" style="font-size: large">
                                <asp:ListItem Value="大学生创新项目">大学生创新项目</asp:ListItem>
                                <asp:ListItem Value="sy">实验室基金项目</asp:ListItem>
                                <asp:ListItem Value="py">培育项目</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>                    
                    <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="项目简介"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TBDescription" runat="server" style="font-size: large" 
                                Height="150px" TextMode="MultiLine" Width="240px" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="立项依据"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="TBProjectReason" runat="server" Height="150px" 
                                style="font-size: large" TextMode="MultiLine" Width="240px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label10" runat="server" Text="成果形式"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="TBResult" runat="server" Height="150px" 
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

</asp:Content>

