<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<% String path=request.getContextPath(); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>修改密码</title>
    
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    
    <script type="text/javascript" src="<%=path %>/js/notnull.js"></script>
    
    <link href="<%=path %>/css/table.css" rel=stylesheet type="text/css">
    
    <link href="<%=path %>/css/style_left.css" rel="stylesheet" type="text/css" />
    
    <style type="text/css" >
    
    body{   
    margin-top:0px;
    padding:0px;
    color:#111; 
    font:12px/1.5em Arial, Tahoma, Verdana, Sans-Serif !important; 
    font:11px/1.8em Verdana, Arial, Tahoma, Sans-Serif;
    background: #E5EEF5 repeat-y center;
	}
	
	td{
	color:green;
	}
	
    </style>
  </head>
  
  <body topmargin="0" bottommargin="0">
	
	<table height="*" width="72%" align="center" border="0" cellpadding="0" cellspacing="0">
	
	<tbody>
	<tr> 
	<td width="10" background="<%=path %>/images/bg_left.gif"></td>
	<td valign="top">
                        
	<!-- head -->
	<jsp:include page="../superAdmin_head.jsp"></jsp:include>
	
	<!-- body -->
	<table width="100%" height="500" cellspacing="0"  border="0">
		<tr height="*" valign="top">
		
	  <td valign="top" width="155"  class="main_left">
	  
	  	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="main_left_top">
	  	<tr height="32">
	    <td valign="top"></td>
	    <td class="main_left_title">个人管理</td>
	    <td valign="top" align="right"></td>
	  	</tr>
		</table>
	  	
		<table>
		  <tr>
			<td class="menuleft" id="menubar">
			
			<li><a href="<%=path %>/super/toViewInfo">查看信息</a></li>
			<li><a href="<%=path %>/super/toModifyPwd">修改密码</a></li>
			<li><a href="<%=path %>/super/toModifyName">修改姓名</a></li>

			</td>
		  </tr>
		</table>
	 </td>

		 <td width=5>
			&nbsp;
		 </td>
		
		<td>
		
		<br>
		<br>
		<br>
		<form method="post" name="reg" action="modifyPwd">
		<table cellpadding="3" cellspacing="1" align="center" class="tableborder1" id="table1">
	
		 <tr>
		 <td align="center" colspan="2" background="<%=path %>/images/bg_table.gif"><b><font size="3" color="white">修改密码</font></b></td>
		 </tr>
		
		<tr>
			<td colspan="2">
			<font style="color: red">${error }</font>&nbsp;
			</td>
		</tr>
		<tr>
			<td class="tablebody1"><b>请输入旧密码</b>：</td>
			<td class="tablebody2">
			<input type="password" size="32" maxlength="16" name="oldPassword" id="oldPasswordID"/>
			<font color="#FF0000">*</font>
			</td>
		</tr>
		
		<tr>
			<td class="tablebody1"><b>请输入新密码</b>：</td>
			<td class="tablebody2">
			<input type="password" size="32" maxlength="16" name="newPassword" id="newPasswordID"/>
			<font color="#FF0000">*</font>
			</td>
		</tr>
		
		<tr>
			<td class="tablebody1"><b>请再次输入新密码</b>：</td>
			<td class="tablebody2">
			<input type="password" size="32" maxlength="16" name="renewPassword" id="renewPasswordID"/>
			<font color="#FF0000">*</font>
			</td>
		</tr>
		
		<tr>
			<td class="tablebody3" valign="middle" colspan="2" align="center">
			<input type="submit" value="修改"/>&nbsp;&nbsp;&nbsp;
			<input type="reset" value="清空"/>
			</td>
		</tr>
	</table>
   </form>
		</td>
		
		 <td width=5> 
			&nbsp;
		 </td>
			
		</tr>
	</table>
	
	<!-- footer -->
	<jsp:include page="../superAdmin_footer.jsp"></jsp:include>
	

	</td>      
	
	<td width="10" background="<%=path %>/images/bg_right.gif"></td>
	
	</tr>
	</tbody>
	
	</table>
		
  </body>
</html>
