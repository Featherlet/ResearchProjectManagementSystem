<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left.aspx.cs" Inherits="left" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
	<head>
		<title>功能导航</title>
		<style type="text/css">
	body  { background:#7F9ED9; margin:0px; font:normal 12px 宋体; scrollbar-face-color: #799AE1; scrollbar-highlight-color: #799AE1; scrollbar-shadow-color: #799AE1; scrollbar-darkshadow-color: #799AE1; scrollbar-3dlight-color: #799AE1; scrollbar-arrow-color: #FFFFFF;scrollbar-track-color: #AABFEC;}
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
	</style>
	</head>
	<body style="background-image: none; background-color: #cc9933;">
<script language="javascript" type="text/javascript">
<!--
function menuChange(obj,menu)
{
	if(menu.style.display=="")
	{
		obj.background="../Images/admin_title_bg_hide.gif";
		menu.style.display="none";
	}else{
		obj.background="../Images/admin_title_bg_show.gif";
		menu.style.display="";
	}
}

function proLoadimg()
{
	var i=new Image;
	i.src='../Images/admin_title_bg_hide.gif';
	i.src='../Images/admin_title_bg_show.gif';
}
function hideMenu(menu)
{
	menu.style.display="none";

}
proLoadimg();
-->
		</script>
		<table cellSpacing="0" cellPadding="0" width="158" align="center">
			<tr>
				<td style="background:url('../Images/admin_title_bg_quit.gif')"  height="25">&nbsp; &nbsp;<A href="main.aspx" target="right"><strong>管理首页</strong></A>&nbsp;
					<A href="../Default.aspx" target="_top"><strong>退出</strong></A>
				</td>
			</tr>
		</table>
		&nbsp;
		<table cellSpacing="0" cellPadding="0" align="center" style="width: 177px">
			<tr style="CURSOR: hand">
				<td class="menu_title" style="background:url('../Images/admin_title_bg_show.gif'); width: 154px; height: 25px;" onmouseover="this.className='menu_title2';" onmouseout="this.className='menu_title';" onclick="menuChange(this,menu1);">
				<span>用户管理</span>
				</td>
			</tr>
			<tr>
				<td style="width: 154px">
					<div class="sec_menu" id="menu1" style="WIDTH: 169px; background-color: #ffcc33;">
						<table cellSpacing="0" cellPadding="0" width="140" align="center" border="0">
							
							<tr>
								<td height="20"><a href="AdministerManaging.aspx" target="right">管理员</a> 
										
								</td>
							</tr>
							<tr>
								<td height="20"><a href="StudentManaging.aspx" target="right">学生</a> 
								</td>
							</tr>
							<tr>
								<td height="20"><a href="TeacherManaging.aspx" target="right">教师</a>
								</td>
							</tr>
							
						
						</table>
					</div>
				</td>
			</tr>
		</table>
      
		<script>hideMenu(menu1);</script>
		&nbsp;
		<table cellSpacing="0" cellPadding="0" align="center" style="width: 176px">
			<tr style="CURSOR: hand">
				<td height="25" class="menu_title" style="background:url('../Images/admin_title_bg_show.gif'); width: 165px;" onmouseover="this.className='menu_title2';" onmouseout="this.className='menu_title';" onclick="menuChange(this,menu2);">
				<span><a href=TypeManagement.aspx target="right">项目类别管理</a></span>
				</td>
			</tr>
			
		</table>
		<script>hideMenu(menu2);</script>
		&nbsp;
		<table cellSpacing="0" cellPadding="0" align="center" style="width: 182px">
			<tr style="CURSOR: hand">
				<td height="25" class="menu_title" style="background:url('../Images/admin_title_bg_show.gif'); width: 165px;" onmouseover="this.className='menu_title2';" onmouseout="this.className='menu_title';" onclick="menuChange(this,menu3);">
				<span>项目申请审核</span>
				</td>
			</tr>
			<tr>
				<td style="width: 165px">
					<div class="sec_menu" id="menu3" style="WIDTH: 176px; background-color: #ffcc33;">
						<table cellSpacing="0" cellPadding="0" width="140" align="center">
							
							<tr>
								<td height="20"><a href="ShenQingShu.aspx" target="right">申请书查看</a>
								</td>
							</tr>
							<tr>
								<td height="20"><a href="DaiShenHe.aspx" target="right">待审核项目查看</a>
								</td>
							</tr>
							<tr>
								<td height="20"><a href="YiShenHe.aspx" target="right">已审核项目查看</a>
								</td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
		</table>
		<script>hideMenu(menu3);</script>
		&nbsp;
		<table cellSpacing="0" cellPadding="0" align="center" style="width: 180px">
			<tr style="CURSOR: hand">
				<td height="25" class="menu_title" style="background:url('../Images/admin_title_bg_show.gif')" onmouseover="this.className='menu_title2';" onmouseout="this.className='menu_title';" onclick="menuChange(this,menu4);">
				<span>项目答辩管理</span>
				</td>
			</tr>
			<tr>
				<td>
					<div class="sec_menu" id="menu4" style="WIDTH: 176px; background-color: #ffcc00;">
						<table cellSpacing="0" cellPadding="0" width="140" align="center">
							<tr>
								<td height="20"><a href="StudentDaBian.aspx" target="right">学生答辩管理</a></td>
							</tr>
							<tr>
								<td height="20"><a href="TeacherDaBian.aspx" target="right">教师答辩管理</a></td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
		</table>
		<script>hideMenu(menu4);</script>
		&nbsp;
		<table cellSpacing="0" cellPadding="0" align="center" style="width: 178px">
			<tr style="CURSOR: hand">
				<td height="25" class="menu_title" style="background:url('../Images/admin_title_bg_show.gif')" onmouseover="this.className='menu_title2';" onmouseout="this.className='menu_title';" onclick="menuChange(this,menu5);">
				<span>项目经费管理</span>
				</td>
			</tr>
			<tr>
				<td>
					<div class="sec_menu" id="menu5" style="WIDTH: 176px; height: 35px; background-color: #ffcc00;">
						<table cellSpacing="0" cellPadding="0" width="140" align="center">
							
							<tr>
								<td style="height: 20px"><a href="JingFeiShenQing.aspx" target="right">项目经费申请</a>
								</td>
							</tr>
							<tr>
								<td style="height: 20px"><a href="JingFeiChaKan.aspx" target="right">项目经费查询</a>
								</td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
		</table>
		<script>hideMenu(menu5);</script>
		&nbsp;
		<table cellSpacing="0" cellPadding="0" align="center" style="width: 178px">
			<tr style="CURSOR: hand">
				<td class="menu_title" style="background:url('../Images/admin_title_bg_show.gif'); height: 25px;" onmouseover="this.className='menu_title2';" onmouseout="this.className='menu_title';" onclick="menuChange(this,menu7);">
				<span>项目成果管理</span>
				</td>
			</tr>
			<tr>
				<td>
					<div class="sec_menu" id="menu7" style="WIDTH: 172px; background-color: #ffcc00;">
						
					</div>
				</td>
			</tr>
		</table>
		<script>hideMenu(menu7);</script>
	</body>
</html>
