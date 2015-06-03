<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<% String path=request.getContextPath(); %>

<html>
  <head>
    
    <title>添加试题(1)</title>
    
   	<script type="text/javascript" src="<%=path %>/js/notnull.js"></script>
    <link href="<%=path %>/css/style_left.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/table.css" rel="stylesheet" type="text/css">
    
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
	<jsp:include page="../../admin_head.jsp"></jsp:include>
	
	<!-- body -->
	<table width="100%" height="500" cellspacing="0"  border="0">
		<tr height="*" valign="top">
		
	  <td valign="top" width="155"  class="main_left">
	  
	  	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="main_left_top">
	  	<tr height="32">
	    <td valign="top"></td>
	    <td class="main_left_title">试卷管理</td>
	    <td valign="top" align="right"></td>
	  	</tr>
		</table>
	  	
		<table>
		  <tr>
			<td class="menuleft" id="menubar">
	
			<li><a href="<%=path %>/admin/manageExamPaper/addExamPaper.jsp">添加试卷</a></li>
			<li><a href="../viewExamPaper.jsp">查询试卷</a></li>
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
		<form method="post" name="reg" action="addQuestion1">
		
		<input type="hidden" name="examPaperId" value="" />
		
		<table cellpadding="3" cellspacing="1" align="center" class="tableborder1" id="table1">
	
		<tr>
		<td align="center" colspan="2" background="<%=path %>/images/bg_table.gif"><b><font size="3" color="white">添加试题</font></b></td>
		</tr>
		<tr>
			<td class="tablebody1"><b>试题类型</b>：</td>
			<td class="tablebody2">
			<select name="type">
				<option value="1" selected>单选</option>
				<option value="2">多选</option>
			</select>
		</tr>
		<tr>
			<td class="tablebody1"><b>请输入题目</b>：</td>
			<td class="tablebody2">
			<textarea rows="5" cols="60" name="content" id="contentID"></textarea>
			<font color="#FF0000">*</font>
			</td>
		</tr>
		
		<tr>
			<td class="tablebody3" valign="middle" colspan="2" align="center">
			<input type="submit" value="下一步..."/>&nbsp;&nbsp;&nbsp;
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
	<jsp:include page="../../admin_footer.jsp"></jsp:include>
	

	</td>      
	
	<td width="10" background="<%=path %>/images/bg_right.gif"></td>
	
	</tr>
	</tbody>
	
	</table>
		
  </body>
</html>
