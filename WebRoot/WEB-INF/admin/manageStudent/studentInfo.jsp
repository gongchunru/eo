<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String path=request.getContextPath(); %>
<html>
  <head>
    
    <title>学生详细信息</title>
	
    <link href="<%=path %>/css/table.css" rel="stylesheet" type="text/css">
    
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
	<jsp:include page="../admin_head.jsp"></jsp:include>
	
	<!-- body -->
	<table width="100%" height="500" cellspacing="0"  border="0">
		<tr height="*" valign="top">
		
	  <td valign="top" width="155"  class="main_left">
	  
	  	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="main_left_top">
	  	<tr height="32">
	    <td valign="top"></td>
	    <td class="main_left_title">学生管理</td>
	    <td valign="top" align="right"></td>
	  	</tr>
		</table>
	  	
		<table>
		  <tr>
			<td class="menuleft" id="menubar">
	
			<li><a href="<%=path %>/admin/toAddStudent">添加学生</a></li>
			<li><a href="<%=path %>/admin/toViewStudent">查询学生</a></li>

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
		<table cellpadding="3" cellspacing="1" align="center" class="tableborder1" id="table1">
	
		 <tr>
		 <td align="center" colspan="2" background="<%=path %>/images/bg_table.gif"><b><font size="3" color="white">学生详细信息</font></b></td>
		 </tr>

		<tr>
			<td width="40%" class="tablebody1"><b>学生账号</b>：</td>
			<td width="60%" class="tablebody2">
			<input type="text" size="25" maxlength="16" name="zh" readonly value="${student.username }"/>
			</td>
		</tr>
		
		<tr>
			<td width="40%" class="tablebody1"><b>密码(6-10位)</b>：</td>
			<td width="60%" class="tablebody2">
			<input type="text" size="25" maxlength="16" name="password" readonly value="${student.password }"/>
			</td>
		</tr>
		
		<tr>
			<td width="40%" class="tablebody1"><b>姓名</b>：</td>
			<td width="60%"class="tablebody2">
			<input type="text" size="25" maxlength="16" name="name" readonly value="${student.name }"/>
			</td>
		</tr>
		
		<tr>
			<td width="40%" class="tablebody1"><b>性别</b>：</td>
			<td width="60%"class="tablebody2">
			
			男<input type="radio" name="sex" value="男"  <c:if test="${student.sex eq 'm'}">checked</c:if>/>
			女<input type="radio" name="sex" value="女"  <c:if test="${student.sex eq 'f'}">checked</c:if>/>
						
			</td>
		</tr>
		
		<tr>
			<td width="40%" class="tablebody1"><b>出生年月日</b>：</td>
			<td width="60%"class="tablebody2">
			<input type="text" size="25" maxlength="16" name="birth" readonly value="${student.birth }"/>
			</td>
		</tr>
	
		<tr>
			<td width="40%" class="tablebody1"><b>班级</b>：</td>
			<td width="60%"class="tablebody2">
			<input type="text" size="30" maxlength="20" name="clas" readonly value="${student.grade }"/>
			</td>
		</tr>
		
		<tr>
			<td width="40%" class="tablebody1"><b>籍贯</b>：</td>
			<td width="60%" class="tablebody2">
			<input type="text" size="30" maxlength="20" name="address" readonly value="${student.address }"/>
			</td>
		</tr>

		<tr>
			<td class="tablebody1"><b>联系电话</b>：</td>
			<td class="tablebody2">
			<input type="text" size="32" maxlength="16" name="tele" readonly value="${student.tele }"/>
			</td>
		</tr>
		
		<tr>
			<td class="tablebody1"><b>手机号码</b>：</td>
			<td class="tablebody2">
			<input type="text" size="32" maxlength="16" name="mobile" readonly value="${student.mobile }"/>
			</td>
		</tr>
		
		<tr>
			<td class="tablebody1"><b>Email地址</b>：<br></td>
			<td class="tablebody2">
			<input type="text" maxLength="50" size="32" name="email" readonly value="${student.email }"/>
			</td>
		</tr>
		
		<tr>
			<td class="tablebody1"><b>备注</b>：<br></td>
			<td class="tablebody2">
			<textarea rows="5" cols="60" name="remarks" readonly>${student.remarks }</textarea>
			</td>
		</tr>
		
		<tr>
			<td class="tablebody3" valign="middle" colspan="2" align="center">
			<input type="button" value="返回" onclick="history.back()">
			</td>
	    </tr>
	</table>
			
		</td>
		
		 <td width=5> 
			&nbsp;
		 </td>
			
		</tr>
	</table>
	
	<!-- footer -->
	<jsp:include page="../admin_footer.jsp"></jsp:include>
	

	</td>      
	
	<td width="10" background="<%=path %>/images/bg_right.gif"></td>
	
	</tr>
	</tbody>
	
	</table>
		
  </body>
</html>
