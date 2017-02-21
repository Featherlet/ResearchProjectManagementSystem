<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPages/StuMasterPage.master" AutoEventWireup="true" CodeFile="FillApplication.aspx.cs" Inherits="FillApplication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%" align="center">
<tr>
  <td bgcolor="#DCDCC9" style="text-align: center; font-size: large">
      <br />
      <asp:Label ID="Label6" runat="server" style="font-size: x-large" 
          Text="申请书在线填写"></asp:Label>
      <br />
  </td>
</tr>
<tr>
  <td align="center">
    <asp:Wizard ID="Wizard1" runat="server" BackColor="#F7F6F3" 
        BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
        Font-Names="Verdana" Font-Size="Large" Height="344px" 
        Width="100%" ActiveStepIndex="0" >
        <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" 
            Font-Size="0.9em" ForeColor="White" HorizontalAlign="Left" />
        <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="Large" 
            ForeColor="#284775" />
        <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
        <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="Large" 
            VerticalAlign="Top" />
        <StepStyle BorderWidth="0px" ForeColor="#5D7B9D" />
        <WizardSteps>
            <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                <table style="width: 100%;">
                    <tr>
                        <td align="right" style="width: 45%; font-size: large;">
                            <asp:Label ID="Label1" runat="server" Text="项目名称"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="TBProjectName" runat="server" style="font-size: large"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 45%; font-size: large;">
                            <asp:Label ID="Label2" runat="server" Text="项目类别"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="DropDownList1" runat="server" style="font-size: large">
                                <asp:ListItem Value="大学生创新项目">大学生创新项目</asp:ListItem>
                                <asp:ListItem Value="实验室基金项目">实验室基金项目</asp:ListItem>
                                <asp:ListItem Value="培育项目">培育项目</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 45%; font-size: large;">
                            <asp:Label ID="Label3" runat="server" Text="指导老师ID"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="TBTchrID" runat="server" style="font-size: large"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 45%; font-size: large;">
                            <asp:Label ID="Label4" runat="server" Text="指导老师姓名"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="TBTchrName" runat="server" style="font-size: large"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 45%; font-size: large;">
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" align=center>
                            <asp:Button ID="ButtonAdd" runat="server" Text="增加组员" 
                                OnClick="ButtonAdd_Click" style="font-size: large" />
                            <span style="font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                            <asp:Button ID="ButtonDel" runat="server" Text="删除组员" 
                                OnClick="ButtonDel_Click" style="font-size: large" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="right">
                            <asp:Panel ID="Panel1" runat="server" Width="100%" Visible="False" 
                                style="font-size: large">
                                <table width="100%">
                                    <tr>
                                        <td style="width: 45%" align="right">
                                            <asp:Label ID="Label11" runat="server" Text="小组成员1" style="font-size: large"></asp:Label>
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="TBMember1" runat="server" style="font-size: large"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>

                            <asp:Panel ID="Panel2" runat="server" Width="100%"  Visible="False" 
                                style="font-size: large">
                                <table width="100%">
                                    <tr>
                                        <td style="width: 45%" align="right">
                                            <asp:Label ID="Label12" runat="server" Text="小组成员2" style="font-size: large"></asp:Label>
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="TBMember2" runat="server" style="font-size: large"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>

                            <asp:Panel ID="Panel3" runat="server" Width="100%"  Visible="False" 
                                style="font-size: large">
                                <table width="100%">
                                    <tr>
                                        <td style="width: 45%" align="right">
                                            <asp:Label ID="Label13" runat="server" Text="小组成员3" style="font-size: large"></asp:Label>
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="TBMember3" runat="server" style="font-size: large"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>

                            <asp:Panel ID="Panel4" runat="server" Width="100%"  Visible="False" 
                                style="font-size: large">
                                <table width="100%">
                                    <tr>
                                        <td style="width: 45%" align="right">
                                            <asp:Label ID="Label14" runat="server" Text="小组成员4" style="font-size: large"></asp:Label>
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="TBMember4" runat="server" style="font-size: large"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                    </tr>                   
                    
                </table>

            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                <table style="width:100%;">
                    <tr>
                        <td style="font-size: large; width: 20%;">
                            <asp:Label ID="Label8" runat="server" Text="项目简介"></asp:Label>
                        </td>
                        <td width="80%">
                            <asp:TextBox ID="TBDescription" runat="server" style="font-size: large" 
                                Height="200px" TextMode="MultiLine" Width="80%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: large; width: 20%;">
                            <asp:Label ID="Label5" runat="server" Text="立项依据"></asp:Label>
                        </td>
                        <td width="80%">
                            <asp:TextBox ID="TBReason" runat="server" style="font-size: large" 
                                Height="200px" TextMode="MultiLine" Width="80%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan = "2">
                            
                            <br />
                            <br />
                            
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: large; width: 33%;" align="center">
                            <asp:Button ID="ButtonSave" runat="server" Text="保存" style="font-size: large" 
                                OnClick="ButtonSave_Click"  />
                        </td>
                        <td align="center">
                            <asp:Button ID="ButtonSubmit" runat="server" Text="提交" 
                                style="font-size: large" OnClick="ButtonSubmit_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="font-size: large;" align="center">
                            <asp:Label ID="LabelNote" runat="server" Text="注意：提交后将不能再修改，如需继续修改，请点击保存。"></asp:Label>
                        </td>
                        
                    </tr>
                    <tr>
                        <td colspan="2" style="font-size: large;" align="center">
                            <asp:Button ID="ButtonPrint" runat="server" Text="打印" style="font-size: large" />
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

