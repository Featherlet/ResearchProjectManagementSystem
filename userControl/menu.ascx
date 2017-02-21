<%@ Control Language="C#" AutoEventWireup="true" CodeFile="menu.ascx.cs" Inherits="userControl_menu" %>
 <table style="width :100%; height :100%;font-size: 9pt; font-family: 宋体; vertical-align :top; background-image: url(../images/banner.jpg); background-repeat:no-repeat "  
    border="0" cellpadding="0" cellspacing="0" bgcolor="#336699" >
    <tr valign =top >
    <td  align =left style="width: 100%; height: 93px; "  valign =top><br />
     <p align="right" style="width: 100%">
     <a href="http://www.cnu.edu.cn" 
             style=" color:#99CCFF; font-size: large; font-family: 宋体; font-weight: 700;">学校主页</a>&nbsp;&nbsp; 
      <a href="../Default.aspx" 
             style=" color:#99CCFF; font-weight: 700; font-size: large;">退出</a>&nbsp;&nbsp;&nbsp;

      </p>
   
        <p align="right" width="100%">
            <asp:Label ID="labDate"
                runat="server" Text="Label" 
                style="font-size: large; color: #99CCFF;"></asp:Label> 
        &nbsp;&nbsp;&nbsp; 
        </p>
    </td> 
     </tr> 
</table>
