<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<% String path=request.getContextPath(); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>admin_head</title>
    
    <script type="text/javascript" src="<%=path %>/js/time.js"></script>
    
    <style type="text/css">
    
    .menu {font-size:20px;font-family :宋体; }
	.menu a:hover{ color:#69EE11; text-decoration: none; }
	.menu a{ color:#FFFFFF; text-decoration: none; }
    
    </style>

  </head>
  
  <body onload="getCurrTime()">
   
	<table id="Table_01" height="150" width="100%" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td>
			<img src="<%=path %>/images/top_01.jpg" alt="学生信息管理系统" usemap="#Map" height="115" width="100%" border="0"></td>
	</tr>
	<tr>
		<td background="<%=path %>/images/top_bg.gif" height="35">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		  <tr>
		   <td height=25 valign=middle width="20%">
					
					<b>
					<font color="white" size="2">
					欢迎你！教学经理
					</font>
					<font color="#9ACD32" size="3">
					${admin.name }
					</font>
					</b>
					
		    </td>
		    <td>
		      <table  border="0" cellspacing="0" cellpadding="0" align="center" width="90%">
		        <tr class="menu">
		          <td width="20%"><a href="<%=path %>/admin/toManageSelf">个人管理</a></td>
		          <td width="20%"><a href="<%=path %>/admin/toManageStudent">学生管理</a></td>
		          <td width="20%"><a href="<%=path %>/admin/toManageExamPaper">试卷管理</a></td>
		          <td width="20%"><a href="<%=path %>/admin/toManageExamRecord">成绩管理</a></td>
		          <td width="20%"><a href="<%=path %>/login/logout"  onclick="return confirm('确定退出该系统?');">退出系统</a></td>
		        </tr>
		      </table>
		    </td>
		    <td width="20%"><font color="white" size="2"><div id="clock"></div></font></td>
		  </tr>
		</table>
		</td>	
	</tr>
	</table>

  </body>
</html>
