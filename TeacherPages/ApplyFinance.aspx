<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPages/TchrMasterPage.master" AutoEventWireup="true" CodeFile="ApplyFinance.aspx.cs" Inherits="TeacherPages_ApplyFinance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table>
<tr>
  <td bgcolor="#DCDCC9" style="text-align: center; font-size: large">
      <br />
      <asp:Label ID="Label12" runat="server" style="font-size: x-large" 
          Text="项目经费申请"></asp:Label>
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
                        <td colspan="3" style="text-align: center; height: 20px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 110px; text-align: center;">
                            <asp:Label ID="Label1" runat="server" Text="项目名称" style="font-size: small; font-weight: 700"></asp:Label>
                        </td>
                        <td style="width: 157px">
                            <asp:DropDownList ID="DropDownList2" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="ProjectName" 
                                DataValueField="ProjectName" style="font-size: medium" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>        
                 <tr>
                        <td style="width: 110px; ">
                            <strong>申请总费用（元）</strong></td>
                        <td style="width: 157px">
                            <asp:TextBox ID="TBMoney" runat="server" style="font-size: large" Height="29px" Width="138px"></asp:TextBox>
                        </td>
                         <td style="height: 18px">
                            </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 20px">
                            &nbsp;</td>
                    </tr>

                   
                    <tr>
                        <td colspan="3" style="text-align: center; height: 20px">
                            <asp:Label ID="Label2" runat="server" Text="项目明细" style="font-size: large; font-weight: 700"></asp:Label>
                        </td>
                    </tr>
                 <tr>
                        <td style="height: 18px; width: 110px; text-align: center; font-size: small;" class="style1">
                            <b>经费支出项目</b></td>
                        <td style="height: 18px; width: 157px; text-align: center; font-size: small;" class="style1">
                            <strong>金额数（元）</strong></td>
                     <td style="height: 18px; text-align: center; font-size: small;" class="style1">
                            <strong>具体明细</b></strong></td>
                    </tr>
                    <tr>
                        <td style="height: 18px; width: 110px; text-align: center; font-size: small;" class="style1">
                            交通费</td>
                        <td style="height: 18px; width: 157px; text-align: center;">
                            <asp:TextBox ID="TBtrafmoney" runat="server" style="text-align: center" Height="27px"></asp:TextBox>
                            </td>
                        <td style="height: 18px">
                            <asp:TextBox ID="TBtrafdetail" runat="server" Height="26px" TextMode="MultiLine" Width="215px" style="text-align: center"></asp:TextBox>
                            </td>
                    </tr>
                      <tr>
                        <td style="height: 18px; width: 110px; text-align: center;">
                            打印费</td>
                        <td style="height: 18px; width: 157px;">
                            <asp:TextBox ID="TBprintmoney" runat="server" style="text-align: center" Height="27px"></asp:TextBox>
                            </td>
                           <td style="height: 18px">
                               <asp:TextBox ID="TBprintdetail" runat="server" Width="215px" Height="27px" TextMode="MultiLine" style="text-align: center"></asp:TextBox>
                            </td>
                    </tr>
                      <tr>
                        <td style="height: 18px; width: 110px; text-align: center;">
                            实验材料费</td>
                        <td style="height: 18px; width: 157px;">
                            <asp:TextBox ID="TBmatmoney" runat="server" style="text-align: center" Height="34px"></asp:TextBox>
                            </td>
                           <td style="height: 18px">
                               <asp:TextBox ID="TBmatdetail" runat="server" TextMode="MultiLine" Width="214px" style="text-align: center"></asp:TextBox>
                            </td>
                    </tr>
                      <tr>
                        <td style="width: 110px; text-align: center;">
                            文献收集，查询费用</td>
                        <td style="width: 157px;">
                            <asp:TextBox ID="TBdocmoney" runat="server" OnTextChanged="Unnamed1_TextChanged" Height="29px" style="text-align: center"></asp:TextBox>
                            </td>
                           <td>
                               <asp:TextBox ID="TBdocdetail" runat="server" Height="32px" TextMode="MultiLine" Width="213px" style="text-align: center"></asp:TextBox>
                            </td>
                    </tr>
                      <tr>
                        <td style="width: 110px; text-align: center;">
                            图书费</td>
                        <td style="width: 157px;">
                            <asp:TextBox ID="TBbookmoney" runat="server" Height="27px" style="text-align: center"></asp:TextBox>
                            </td>
                           <td>
                               <asp:TextBox ID="TBbookdetail" runat="server" Height="32px" TextMode="MultiLine" Width="213px" style="text-align: center"></asp:TextBox>
                            </td>
                    </tr>
                      <tr>
                        <td style="width: 110px; text-align: center;">
                            其他</td>
                        <td style="width: 157px;">
                            <asp:TextBox ID="TBothermoney" runat="server" Height="30px" style="text-align: center"></asp:TextBox>
                            </td>
                           <td>
                               <asp:TextBox ID="TBotherdetail" runat="server" Height="27px" TextMode="MultiLine" Width="212px" style="text-align: center"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="text-align: center; height: 20px">
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

