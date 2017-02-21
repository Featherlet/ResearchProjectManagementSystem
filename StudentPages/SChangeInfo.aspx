<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPages/StuMasterPage.master" AutoEventWireup="true" CodeFile="SChangeInfo.aspx.cs" Inherits="StudentPages_SChangeInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table>
<tr>
  <td bgcolor="#DCDCC9" style="text-align: center; font-size: large">
      <br />
      <asp:Label ID="Label6" runat="server" style="font-size: x-large" 
          Text="个人信息修改"></asp:Label>
      <br />
  </td>
</tr>
<tr>
  <td>
    <asp:Wizard ID="Wizard1" runat="server" BackColor="#F7F6F3" 
        BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
        Font-Names="Verdana" Font-Size="0.8em" Height="344px" style="font-size: large" 
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
                        <td style="font-size: large">
                            <asp:Label ID="Label1" runat="server" Text="学号："></asp:Label>
                        </td>
                        <td style="font-size: large">
                            <asp:Label ID="LabelID" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: large">
                            <asp:Label ID="Label2" runat="server" Text="学生姓名"></asp:Label>
                        </td>
                        <td style="font-size: large">
                            <asp:Label ID="LabelName" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: large">
                            <asp:Label ID="Label3" runat="server" Text="学生班级"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="LabelClass" runat="server" Text="" style="font-size: large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: large">
                            <asp:Label ID="Label4" runat="server" Text="密码"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TBPw1" runat="server" style="font-size: large"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                        ErrorMessage="密码必须是4位以上" style="font-size: large" ValidationGroup=".{4,}" 
                                        ControlToValidate="TBPw1">
                                    </asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: large">
                            <asp:Label ID="Label5" runat="server" Text="确认密码"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TBPw2" runat="server" style="font-size: large"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator2" runat="server" 
                                        ControlToCompare="TBPw1" ControlToValidate="TBPw2" 
                                        ErrorMessage="密码必须保持一致" style="font-size: large">
                                    </asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: large">
                            <asp:Label ID="Label7" runat="server" Text="邮箱"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TBMail" runat="server" style="font-size: large"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                        ControlToValidate="TBMail" ErrorMessage="邮箱格式错误！" style="font-size: large" 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                    </asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: large">
                            <asp:Label ID="Label8" runat="server" Text="身份证号"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TBShenfen" runat="server" style="font-size: large"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: large">
                            <asp:Label ID="Label9" runat="server" Text="手机号"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TBPhone" runat="server" style="font-size: large"></asp:TextBox>
                        </td>
                    </tr>
                </table>

            </asp:WizardStep>           
        </WizardSteps>
    </asp:Wizard>
  </td>
</tr>
</table>

</asp:Content>

