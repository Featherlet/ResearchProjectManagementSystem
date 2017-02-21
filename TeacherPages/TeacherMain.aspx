<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPages/TchrMasterPage.master" AutoEventWireup="true" CodeFile="TeacherMain.aspx.cs" Inherits="TeacherPages_TeacherMain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:Panel ID="Panel1" runat="server" Height="350px" BackColor="#CCFFCC">
 
    <table style="width: 100%;">
        <tr style="font-family: 楷体">
            <td colspan="3" align="center" bgcolor="#8EFF8E" style="font-size: x-large">
                <br />
                个人基本信息
             
                <br />
            </td>
        </tr>
        <tr style="font-family: 楷体">
            <td rowspan="5" align="center">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/默认头像.jpg" />
            </td>
            <td >
                <asp:Label ID="Label1" runat="server" style="font-size: large" Text="姓名"></asp:Label>
            </td>
            <td align="left">
                <asp:Label ID="LabelName" runat="server" style="font-size: large"></asp:Label>
            </td>
        </tr>
        <tr style="font-family: 楷体">
            <td >
                <asp:Label ID="Label2" runat="server" Text="学院" style="font-size: large"></asp:Label>
            </td>
            <td align="left">
                <asp:Label ID="LabelDepartment" runat="server" style="font-size: large"></asp:Label>
            </td>
        </tr>
        <tr style="font-family: 楷体">
            <td >
                <asp:Label ID="Label3" runat="server" Text="教师号" style="font-size: large"></asp:Label>
            </td>
            <td align="left">
                <asp:Label ID="LabelId" runat="server" style="font-size: large"></asp:Label>
            </td>
        </tr>
        <tr style="font-family: 楷体">
            <td >
                <asp:Label ID="Label4" runat="server" Text="邮箱" style="font-size: large"></asp:Label>
            </td>
            <td align="left">
                <asp:Label ID="LabelMail" runat="server" style="font-size: large"></asp:Label>
            </td>
        </tr>
        <tr style="font-family: 楷体" height="20px">
            <td>
                <asp:Label ID="Label6" runat="server" Text="手机号" style="font-size: large"></asp:Label>
            </td>
            <td align="left">
                <asp:Label ID="LabelPhone" runat="server" style="font-size: large"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Panel>

</asp:Content>

