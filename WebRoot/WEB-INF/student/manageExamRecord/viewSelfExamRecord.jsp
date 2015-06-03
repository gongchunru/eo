<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>

<% String path=request.getContextPath(); %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>查询成绩</title>
    
   <script language="JavaScript" type="text/javascript" src="js/biz.js"></script>
    
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
	
	.key1{
    color: #8c8c8c;
    }
    .key2{
    color: #000000;
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
	    <td class="main_left_title">成绩管理</td>
	    <td valign="top" align="right"></td>
	  	</tr>
		</table>
	  	
		<table>
		  <tr>
			<td class="menuleft" id="menubar">
	
			<li><a href="viewSelfExamRecord.jsp">查询成绩</a></li>

			</td>
		  </tr>
		</table>
	 </td>

		 <td width=5>
			&nbsp;
		 </td>
		
		<td width="100%">
		<br><br>
   <form action="stuViewExamRecord" method="post">
   <table align="center">
   <tr>
   <td class=tablebody3>试卷名关键字&nbsp;&nbsp;</td>
   <td><input type="text" name="keyword" size="15" value="请输入关键字" class="key1"/>&nbsp;&nbsp;&nbsp;&nbsp;</td>
   <td><input type="submit" value="查询"/></td>
   </tr>
   </table>
   </form>
		
  		<br>
		<table cellpadding=3 cellspacing=1 align=center class=tableborder1>
		<tr>
			<td valign=middle align=center height=25 background="<%=path %>/images/bg_table.gif" width=""><font color="#ffffff"><b>序号</b></font></td>
			<td valign=middle align=center height=25 background="<%=path %>/images/bg_table.gif" width=""><font color="#ffffff"><b>试卷名</b></font></td>
			<td valign=middle align=center height=25 background="<%=path %>/images/bg_table.gif" width=""><font color="#ffffff"><b>分数</b></font></td>
		</tr>

		<c:forEach items="${lists}" var="e">
			
		<tr>
			<td class=tablebody3 valign=middle align=center  width="">${e.erid }</td>
			<c:forEach items="${exams}" var="k">
			<c:if test="${e.examPaperId == k.epid}">
			<td class=tablebody1 valign=middle align=center  width="">
			${k.name }</td>
			</c:if>
			</c:forEach>
			
			<td class=tablebody3 valign=middle align=center  width="">${e.score }</td>
		</tr> 
		
		</c:forEach>
		</table>
		
		<br>
		
  		
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
			