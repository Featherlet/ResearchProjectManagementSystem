<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
 <style type="text/css">
     .style1
     {
         height: 20px;
         width: 100px;
     }
     .style2
     {
         height: 20px;
         width: 200px;
     }
 </style>

    <table >
         <tr>
             <td class="style1" align="right">
                ID号：
             </td>
             <td class="style2" align="left">
                <asp:TextBox ID="txtId" runat="server" style="font-size: large"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="style1"  align="right">
                密码：
             </td>
             <td class="style2" align="left">
                <asp:TextBox ID="txtPassword" runat="server"  TextMode="Password" style="font-size: large"></asp:TextBox>
             </td>
         </tr>     
         <tr>
             <td  class="style1"  align="right">
                身份选择：
             </td>
             <td class="style2" align="left">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                            RepeatDirection="Horizontal">
                            <asp:ListItem Value="1">学生</asp:ListItem>
                            <asp:ListItem Value="2">教师</asp:ListItem>
                </asp:RadioButtonList>
             </td>
         </tr>   
          <tr>
             <td  class="style1"  align="right">
                验证码：
             </td>
             <td class="style2" align="left" >
                <asp:TextBox ID="txtValid" runat="server"
                            style="font-size: large" Width="100px"></asp:TextBox>
                <asp:Label ID="labValid" runat="server" Text="8888" BackColor="#F7CC42" 
                            Font-Names="幼圆" style="font-size: large" ></asp:Label>
             </td>
         </tr>
         <tr>
            <td class="style1" align="center">
                 <asp:ImageButton ID="btnLoad" runat="server" 
                            OnClick="btnLoad_Click" Height="20px" Width="46px" CausesValidation="False" 
                            ImageUrl="~/images/登录按钮.jpg" />
            </td> 
 
            <td class="style2" align="center">
                 <asp:ImageButton ID="btnReg" runat="server" 
                             Height="20px" Width="46px" CausesValidation="False" 
                            ImageUrl="~/images/注册按钮.jpg" onclick="btnReg_Click" />
            </td>                        
          </tr>                 
    </table>

</td>
</tr>
</table>
                    
</div>
</form>
</body>
</html>
