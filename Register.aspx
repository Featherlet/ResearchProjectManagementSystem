<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <asp:Label ID="Label1" runat="server" Text="请如实填写个人信息" 
            style="font-size: x-large"></asp:Label>
        <br />
        </br>
        <asp:Label ID="Label2" runat="server" Text="选择身份:"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
            RepeatDirection="Horizontal">
            <asp:ListItem Selected="True">学生</asp:ListItem>
            <asp:ListItem>教师</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Wizard ID="Wizard1" runat="server" BackColor="#EFF3FB" 
            BorderColor="#B5C7DE" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
            Height="400px" Width="600px" style="font-size: medium" ActiveStepIndex="0" 
            onfinishbuttonclick="Wizard1_FinishButtonClick">
            <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" 
                BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" 
                HorizontalAlign="Center" />
            <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                ForeColor="#284E98" />
            <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" 
                ForeColor="White" />
            <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
            <StepStyle Font-Size="0.8em" ForeColor="#333333" />
            <WizardSteps>
                <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                    <table style="width:100%; font-size: medium;">
                        <tr>
                            <td align=right>
                                <asp:Label ID="Label3" runat="server" Text="姓名"></asp:Label></td>
                            <td align=left>
                                <asp:TextBox ID="TBStuName" runat="server"></asp:TextBox></td>
                        </tr>

                        </tr>
                        <td align="right">
                            <asp:Label ID="Label4" runat="server" Text="班级"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="TBStuClass" runat="server"></asp:TextBox>
                        </td>
                        <tr>
                            <td align=right>
                                <asp:Label ID="Label5" runat="server" Text="学号"></asp:Label></td>
                            <td align=left>
                                <asp:TextBox ID="TBStuId" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                                <td  align=right >
                                    <asp:Label ID="Label6" runat="server" Text="密码"></asp:Label>
                                </td>
                                <td  align=left>
                                    <asp:TextBox ID="TBStuPw1" runat="server" ></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                        ErrorMessage="密码必须是4位以上" style="font-size: large" ValidationGroup=".{4,}" 
                                        ControlToValidate="TBStuPw1">
                                    </asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td  align=right >
                                    <asp:Label ID="Label7" runat="server" Text="密码确认"></asp:Label>
                                </td>
                                <td align=left>
                                    <asp:TextBox ID="TBStuPw2" runat="server" ></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator2" runat="server" 
                                        ControlToCompare="TBStuPw1" ControlToValidate="TBStuPw2" 
                                        ErrorMessage="密码必须保持一致" style="font-size: large">
                                    </asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td  align=right >
                                    邮箱
                                </td>
                                <td align=left>
                                    <asp:TextBox ID="TBStuMail" runat="server" ></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                        ControlToValidate="TBStuMail" ErrorMessage="邮箱格式错误！" style="font-size: large" 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                    </asp:RegularExpressionValidator>
                                </td>
                            </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                    <table style="width:100%; font-size: medium;">
                        <tr>
                            <td align=right>
                                <asp:Label ID="Label8" runat="server" Text="身份证号"></asp:Label></td>
                            <td align=left>
                                <asp:TextBox ID="TBStuShenfen" runat="server"></asp:TextBox></td>
                        </tr>

                        </tr>
                        <td align="right">
                            <asp:Label ID="Label9" runat="server" Text="手机号"></asp:Label>
                        </td>
                        <td align="left" style="font-size: medium">
                            <asp:TextBox ID="TBStuPhone" runat="server"></asp:TextBox>
                        </td>
                     </table>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>

        <asp:Wizard ID="Wizard2" runat="server" BackColor="#E6E2D8" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            Font-Names="Verdana" Font-Size="0.8em" Height="400px" Width="600px" 
            style="font-size: medium" Visible="False" ActiveStepIndex="0" 
            onfinishbuttonclick="Wizard2_FinishButtonClick">
            <HeaderStyle BackColor="#666666" BorderColor="#E6E2D8" BorderStyle="Solid" 
                BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" 
                HorizontalAlign="Center" />
            <NavigationButtonStyle BackColor="White" BorderColor="#C5BBAF" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                ForeColor="#1C5E55" />
            <SideBarButtonStyle ForeColor="White" />
            <SideBarStyle BackColor="#1C5E55" Font-Size="0.9em" VerticalAlign="Top" />
            <StepStyle BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" 
                BorderWidth="2px" />
            <WizardSteps>
                <asp:WizardStep ID="WizardStep3" runat="server" Title="Step 1">
                <table style="width:100%;">
                        <tr>
                            <td align=right>
                                <asp:Label ID="Label10" runat="server" Text="姓名"></asp:Label></td>
                            <td align=left>
                                <asp:TextBox ID="TBTName" runat="server"></asp:TextBox></td>
                        </tr>

                            <td align=right>
                                <asp:Label ID="Label11" runat="server" Text="学院"></asp:Label></td>
                            <td align=left>
                                <asp:TextBox ID="TBTDepartment" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td align=right>
                                <asp:Label ID="Label12" runat="server" Text="教师号"></asp:Label></td>
                            <td align=left>
                                <asp:TextBox ID="TBTId" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                                <td  align=right >
                                    <asp:Label ID="Label13" runat="server" Text="密码"></asp:Label>
                                </td>
                                <td  align=left>
                                    <asp:TextBox ID="TBTPw1" runat="server" ></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                        ErrorMessage="密码必须是4位以上" style="font-size: large" ValidationGroup=".{4,}" 
                                        ControlToValidate="TBTPw1">
                                    </asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td  align=right >
                                    <asp:Label ID="Label14" runat="server" Text="密码确认"></asp:Label>
                                </td>
                                <td align=left>
                                    <asp:TextBox ID="TBTPw2" runat="server" ></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                        ControlToCompare="TBTPw1" ControlToValidate="TBTPw2" 
                                        ErrorMessage="密码必须保持一致" style="font-size: large">
                                    </asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td  align=right >
                                    邮箱
                                </td>
                                <td align=left>
                                    <asp:TextBox ID="TBTMail" runat="server" ></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                        ControlToValidate="TBTMail" ErrorMessage="邮箱格式错误！" style="font-size: large" 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                    </asp:RegularExpressionValidator>
                                </td>
                            </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep4" runat="server" Title="Step 2">
                <table style="width:100%;">
                        <tr>
                            <td align=right>
                                <asp:Label ID="Label15" runat="server" Text="身份证号"></asp:Label></td>
                            <td align=left>
                                <asp:TextBox ID="TBTShenfen" runat="server"></asp:TextBox></td>
                        </tr>

                        </tr>
                        <td align="right">
                            <asp:Label ID="Label16" runat="server" Text="手机号"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="TBTPhone" runat="server"></asp:TextBox>
                        </td>
                     </table>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    </div>
    </form>
</body>
</html>
