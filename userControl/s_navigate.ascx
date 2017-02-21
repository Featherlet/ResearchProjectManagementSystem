<%@ Control Language="C#" AutoEventWireup="true" CodeFile="s_navigate.ascx.cs" Inherits="userControl_nevigate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
	<HEAD>
		<title>功能导航</title>
		<style type="text/css">
	body  {  margin:0px; font:normal 12px 宋体; scrollbar-face-color: #799AE1; scrollbar-highlight-color: #799AE1; scrollbar-shadow-color: #799AE1; scrollbar-darkshadow-color: #799AE1; scrollbar-3dlight-color: #799AE1; scrollbar-arrow-color: #FFFFFF;scrollbar-track-color: #AABFEC;}
	table  { border:0px; }
	td  { font-size:12px ; }
	img  { vertical-align:bottom; border:0px; }
	a  { font-size: 12px ; color:#215DC6; text-decoration:none; }
	a:hover  { color:#428EFF }
	.sec_menu  { border-left:1px solid white; border-right:1px solid white; border-bottom:1px solid white; background:#E2ECFD; padding:5px 2px;}
	.menu_title  { }
	.menu_title span  { position:relative; top:2px; left:8px; color:#215DC6; font-weight:bold; }
	.menu_title2  { }
	.menu_title2 span  { position:relative; top:2px; left:8px; color:#428EFF; font-weight:bold; }
	        .style1
            {
                font-size: medium;
            }
	</style>
	</HEAD>
	<body>
<script language="javascript" type="text/javascript">
<!--
    function menuChange(obj, menu) {
        if (menu.style.display == "") {
            obj.background = "../Images/admin_title_bg_hide.gif";
            menu.style.display = "none";
        } else {
            obj.background = "../Images/admin_title_bg_show.gif";
            menu.style.display = "";
        }
    }

    function proLoadimg() {
        var i = new Image;
        i.src = '../Images/admin_title_bg_hide.gif';
        i.src = '../Images/admin_title_bg_show.gif';
    }
    function hideMenu(menu) {
        menu.style.display = "none";

    }
    proLoadimg();
-->
		</script>
        <asp:Panel ID="Panel1" runat="server" BackColor="#DDDDFF" Height="640px">
        
		<table cellSpacing="0" cellPadding="0" width="158" align="center" 
            bgcolor="#C9C9F1">
			<tr>
				<td  height="25" align="center" class="style1" >
                    <strong>导航栏
				</strong>
				</td>
			</tr>
		</table>
		&nbsp;
		<table cellSpacing="0" cellPadding="0" align="center">
			<tr style="CURSOR: hand">
				<td height="25" class="menu_title" style="background:url('../Images/admin_title_bg_show.gif'); width: 154px;" onmouseover="this.className='menu_title2';" onmouseout="this.className='menu_title';" onclick="menuChange(this,menu1);">
				<span>首页</span>
				</td>
			</tr>
			<tr>
				<td style="width: 154px">
					<div class="sec_menu" id="menu1" style="WIDTH: 158px">
						<table cellSpacing="0" cellPadding="0" width="140" align="center" border="0">
							
							<tr>
								<td height="20"><A href="StudentMain.aspx" target="right">个人信息</A>
								</td>
							</tr>
                            <tr>
								<td height="20"><A href="SChangeInfo.aspx" target="right">修改信息</A>
								</td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
		</table>
      
		<script>		    hideMenu(menu1);</script>
		&nbsp;
		<table cellSpacing="0" cellPadding="0" width="158" align="center">
			<tr style="CURSOR: hand">
				<td height="25" class="menu_title" style="background:url('../Images/admin_title_bg_show.gif'); width: 165px;" onmouseover="this.className='menu_title2';" onmouseout="this.className='menu_title';" onclick="menuChange(this,menu2);">
				<span>项目申请</span>
				</td>
			</tr>
			<tr>
				<td style="width: 165px">
					<div class="sec_menu" id="menu2" style="WIDTH: 158px">
						<table cellSpacing="0" cellPadding="0" width="140" align="center" border="0">
							
							<tr>
								<td height="20"><A href="StuApply.aspx" target="right">项目申报</A>
								</td>
							</tr>
							
							<tr>
								<td height="20"><A href="CheckApplications.aspx" target="right">申报信息查看</A>
								</td>
							</tr>
							
						</table>
					</div>
				</td>
			</tr>
		</table>
		<script>		    hideMenu(menu2);</script>
		&nbsp;
		<table cellSpacing="0" cellPadding="0" width="158" align="center">
			<tr style="CURSOR: hand">
				<td height="25" class="menu_title" style="background:url('../Images/admin_title_bg_show.gif')" onmouseover="this.className='menu_title2';" onmouseout="this.className='menu_title';" onclick="menuChange(this,menu3);">
				<span>项目信息查询</span>
				</td>
			</tr>
			<tr>
				<td>
					<div class="sec_menu" id="menu3" style="WIDTH: 158px">
						<table cellSpacing="0" cellPadding="0" width="140" align="center">
							
							<tr>
								<td height="20"><A href="ProjectInformation.aspx" target="right">基本信息</A>
                                </td>
							</tr>
                            <tr>
								<td height="20"><A href="ProjectFinance.aspx" target="right">项目经费</A>
                                </td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
		</table>
		<script>		    hideMenu(menu3);</script>
		&nbsp;
		<table cellSpacing="0" cellPadding="0" width="158" align="center">
			<tr style="CURSOR: hand">
				<td height="25" class="menu_title" style="background:url('../Images/admin_title_bg_show.gif')" onmouseover="this.className='menu_title2';" onmouseout="this.className='menu_title';" onclick="menuChange(this,menu4);">
				<span>中期考核</span>
				</td>
			</tr>
			<tr>
				<td>
					<div class="sec_menu" id="menu4" style="WIDTH: 158px">
						<table cellSpacing="0" cellPadding="0" width="140" align="center">
							<tr>
								<td height="20"><A href="MidtermReport.aspx" target="right">报告填写打印</A></td>
							</tr>
							<tr>
								<td height="20"><A href="MidtermPlan.aspx" target="right">考核安排</A></td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
		</table>
		<script>		    hideMenu(menu4);</script>
		&nbsp;
		<table cellSpacing="0" cellPadding="0" width="158" align="center">
			<tr style="CURSOR: hand">
				<td height="25" class="menu_title" style="background:url('../Images/admin_title_bg_show.gif')" onmouseover="this.className='menu_title2';" onmouseout="this.className='menu_title';" onclick="menuChange(this,menu5);">
				<span>结题考核</span>
				</td>
			</tr>
			<tr>
				<td>
					<div class="sec_menu" id="menu5" style="WIDTH: 158px">
						<table cellSpacing="0" cellPadding="0" width="140" align="center">					
							<tr>
								<td style="height: 20px"><A href="FinalReport.aspx" target="right">报告填写打印</A>
                                </td>
							</tr>
                            <tr>
								<td style="height: 20px"><A href="FinalPlan.aspx" target="right">考核安排</A>
                                </td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
		</table>
		<script>		    hideMenu(menu5);</script>
		&nbsp;
		<table cellSpacing="0" cellPadding="0" width="158" align="center">
			<tr style="CURSOR: hand">
				<td height="25" class="menu_title" style="background:url('../Images/admin_title_bg_show.gif')" onmouseover="this.className='menu_title2';" onmouseout="this.className='menu_title';" onclick="menuChange(this,menu6);">
				<span>项目成果提交</span>
				</td>
			</tr>
			<tr>
				<td>
					<div class="sec_menu" id="menu6" style="WIDTH: 158px">
						<table cellSpacing="0" cellPadding="0" width="140" align="center">
							<tr>
								<td height="20"><a href="ResultSubmit.aspx" target="right">提交成果</a></td>
							</tr>
							<tr>
								<td height="20"><A href="CheckResult.aspx" target ="right">查看已提交成果</A></td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
		</table>
        <script>            hideMenu(menu6);</script>
        &nbsp;
        <table cellSpacing="0" cellPadding="0" width="158" align="center">
			<tr style="CURSOR: hand">
				<td height="25" class="menu_title" style="background:url('../Images/admin_title_bg_show.gif')" onmouseover="this.className='menu_title2';" onmouseout="this.className='menu_title';" onclick="menuChange(this,menu7);">
				<span>综合查询</span>
				</td>
			</tr>
			<tr>
				<td>
					<div class="sec_menu" id="menu7" style="WIDTH: 158px">
						<table cellSpacing="0" cellPadding="0" width="140" align="center">
							<tr>
								<td height="20"><a href="AllProjects.aspx" target="right">查看项目记录</a></td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
		</table>
        </asp:Panel>
        <script>            hideMenu(menu7);</script>
	</body>
</HTML>
