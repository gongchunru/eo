<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<% String path=request.getContextPath(); %>

<html>
  <head>
    
    <title>添加成功</title>
    
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
			<li><a href="<%=path %>/queryExamPaper.do?method=first&keyword=&role=admin">查询试卷</a></li>
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
		<td colspan="2" class="tablebody2">
		试题：<font color="#4EA6E7">${content}</font>
		&nbsp;&nbsp;<b>添加成功！</b>
		</td>
		</tr>
		<tr>
			<td class="tablebody1"><b>操作</b>：</td>
			<td class="tablebody1">
			<input type="button" value="继续添加" onclick="javascript:window.location='<%=path %>/admin/toAddQuestion1?epid=${examPaper.epid }'"/>&nbsp;&nbsp;&nbsp;
			<input type="button" value="查看该试卷试题" onclick="javascript:window.location='<%=path %>/admin/toViewExamPaperDetail?epid=${examPaper.epid }&role=admin'"/>
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
	<jsp:include page="../../admin_footer.jsp"></jsp:include>
	

	</td>      
	
	<td width="10" background="<%=path %>/images/bg_right.gif"></td>
	
	</tr>
	</tbody>
	
	</table>
		
  </body>
</html>
