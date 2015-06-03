<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<% String path=request.getContextPath(); %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@  taglib  uri="http://java.sun.com/jsp/jstl/functions"   prefix="fn"%>
<html>
  <head>
    
    <title>修改个人信息</title>
    
    <script type="text/javascript" src="<%=path %>/js/notnull.js"></script>
	<script type="text/javascript" src="<%=path %>/js/date.js"></script>
	<script type="text/javascript" src="<%=path %>/js/jquery.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		var id = document.getElementById("YYYY");
		id.options[id.selectedIndex].text;
	});
	</script>
	
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
	<jsp:include page="../student_head.jsp"></jsp:include>
	
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
			<li><a href="toViewInfo">查看信息</a></li>
			<li><a href="toModifyInfo">修改信息</a></li>

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
		<form method="post" name="form1" action="modifyInfo" onsubmit="">
		<table cellpadding="3" cellspacing="1" align="center" class="tableborder1" id="table1">
	
		 <tr>
		 <td align="center" colspan="2" background="<%=path %>/images/bg_table.gif"><b><font size="3" color="white">修改个人信息</font></b></td>
		 </tr>

		<tr>
			<td width="40%" class="tablebody1"><b>账号</b>：</td>
			<td width="60%" class="tablebody2">
			<input type="text" size="25" maxlength="16" name="zh" id="zhID" readonly value="${student.username }"/>
			<font color="#FF0000">*</font></td>
		</tr>
		
		<tr>
			<td width="40%" class="tablebody1"><b>密码(6-10位)</b>：</td>
			<td width="60%" class="tablebody2">
			<input type="password" size="25" maxlength="16" name="password" id="passwordID" value="${student.password }"/>
			<font color="#FF0000">*</font>
			</td>
		</tr>
		
		<tr>
			<td width="40%" class="tablebody1"><b>重复密码</b>：</td>
			<td class="tablebody2">
			<input type="password" size="25" maxLength="16" name="repassword" id="repasswordID" value=""/>
			<font color="#FF0000">*</font></td>
		</tr>
		
		<tr>
			<td width="40%" class="tablebody1"><b>姓名</b>：</td>
			<td width="60%"class="tablebody2">
			<input type="text" size="25" maxlength="16" name="name" id="nameID" value="${student.name }"/>
			<font color="#FF0000">*</font>
			</td>
		</tr>
		
		<tr>
			<td width="40%" class="tablebody1"><b>性别</b>：</td>
			<td width="60%"class="tablebody2">
			男<input type="radio" name="sex" value="m"  <c:if test="${student.sex eq 'm'}">checked</c:if>/>
			女<input type="radio" name="sex" value="f" <c:if test="${student.sex eq 'f'}">checked</c:if>/>		
			</td>
		</tr>
		
		<tr>
			<td width="40%" class="tablebody1"><b>出生年月日</b>：</td>
			<td width="60%"class="tablebody2">
			<p>
			<!-- EL函数可以不限层次嵌套，只需使用一次$即可 -->
			<select name="YYYY" onChange="YYYYDD(this.value)" id="YYYY">
                <option value="YYYY" selected>选择年</option>
            </select>
            <select name="MM" onChange="MMDD(this.value)" id="MM">
                 <option value="MM" selected>${fn:split(student.birth,"-")[1]} 月</option>
             </select>
             <select name="DD" id="DD">
                 <option value="DD" selected>选择 ${fn:split(student.birth,"-")[2]}日</option>
             </select>
              </p>
			</td>
		</tr>
	
		<tr>
			<td width="40%" class="tablebody1"><b>班级</b>：</td>
			<td width="60%"class="tablebody2">
			<input type="text" size="30" maxlength="20" name="clas" id="clasID" value="${student.grade }"/>
			<font color="#FF0000">*</font>
			</td>
		</tr>
		
		<tr>
			<td class="tablebody1"><b>籍贯</b>：</td>
			<td class="tablebody2">
			
			<input type="text" size="10" name="city" value="${student.address}"/>市/县</td>
		</tr>

		<tr>
			<td class="tablebody1"><b>联系电话</b>：</td>
			<td class="tablebody2">
			<input type="text" size="32" maxlength="16" name="tele" value="${student.tele}"/>
			</td>
		</tr>
		
		<tr>
			<td class="tablebody1"><b>手机号码</b>：</td>
			<td class="tablebody2">
			<input type="text" size="32" maxlength="16" name="mobile" value="${student.mobile }"/>
			</td>
		</tr>
		
		<tr>
			<td class="tablebody1"><b>Email地址</b>：<br></td>
			<td class="tablebody2">
			<input type="text" maxLength="50" size="32" name="email" id="emailID" value="${student.email }"/>
			<font color="#FF0000">*</font>
			</td>
		</tr>
		
		<tr>
			<td class="tablebody1"><b>备注</b>：<br></td>
			<td class="tablebody2">
			<textarea rows="5" cols="60" name="remarks">${student.remarks }</textarea>
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
	<jsp:include page="../student_footer.jsp"></jsp:include>
	

	</td>      
	
	<td width="10" background="<%=path %>/images/bg_right.gif"></td>
	
	</tr>
	</tbody>
	
	</table>
		
  </body>
</html>
			