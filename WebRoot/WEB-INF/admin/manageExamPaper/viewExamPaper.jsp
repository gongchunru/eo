<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String path=request.getContextPath(); %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>查询试卷</title>
    
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
	
	a{
	 text-decoration: none;
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
	<jsp:include page="../admin_head.jsp"></jsp:include>
	
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
	
			<li><a href="<%=path %>/admin/toAddExamPaper">添加试卷</a></li>
			<li><a href="<%=path %>/admin/toViewExamPaper">查询试卷</a></li>
			</td>
		  </tr>
		</table>
	 </td>

		 <td width=5>
			&nbsp;
		 </td>
		
		<td>
		<br><br>
   <form action="findExamPaper" method="post">
   <table align="center">
   <tr>
   <td class=tablebody3>试卷名关键字&nbsp;&nbsp;</td>
   <td><input type="text" name="keyword" size="15" value="请输入关键字" class="key1" 
   onblur="if(this.value=='')this.value='请输入关键字';this.className='key1'"
   onfocus="if(this.value=='请输入关键字')this.value='';this.className='key2'"/>&nbsp;&nbsp;&nbsp;&nbsp;</td>
   <td><input type="submit" value="查询"/></td>
   </tr>
   </table>
   </form>
		
  		<br>
		<table cellpadding=3 cellspacing=1 align=center class=tableborder1>
		<tr>
			<td valign=middle align=center height=25 background="<%=path %>/images/bg_table.gif" width=""><font color="#ffffff"><b>序号</b></font></td>
			<td valign=middle align=center height=25 background="<%=path %>/images/bg_table.gif" width=""><font color="#ffffff"><b>试卷名</b></font></td>
			<td valign=middle align=center height=25 background="<%=path %>/images/bg_table.gif" width=""><font color="#ffffff"><b>考试时长(分)</b></font></td>
			<td valign=middle align=center height=25 background="<%=path %>/images/bg_table.gif" width=""><font color="#ffffff"><b>试题操作</b></font></td>
			<td valign=middle align=center height=25 background="<%=path %>/images/bg_table.gif" width=""><font color="#ffffff"><b>试卷操作</b></font></td>
		</tr>
		<c:forEach items="${list }" var="e">
		<tr>
		<!-- 数字类型转换异常 -->
			<td class=tablebody3 valign=middle align=center width="">${e.epid }</td>
			<td class=tablebody1 valign=middle align=center width="">${e.name }</td>
			<td class=tablebody3 valign=middle align=center width="">${e.totalTime }</td>
			<td class=tablebody1 valign=middle align=center width="">
			<a href="toAddQuestion1?epid=${e.epid }">添加试题</a>&nbsp;&nbsp;┊&nbsp;
			<a href="toViewExamPaperDetail?epid=${e.epid }">查看试题</a> 	
			</td>
			<td class=tablebody3 valign=middle align=center width="">
			<a href="toModifyExamPaper?epid=${e.epid }">修改</a>&nbsp;&nbsp;┊&nbsp;	
			<a href="javascript:var a=window.confirm('是否要删除该试卷？');if(a){document.location='';}">删除</a>
			</td>
		</tr> 
		</c:forEach>
	
		</table>
		<br>
		<center>
		<font size="3" color="blue">
  			共${rows }条，共${totalPage }页，第${page }页<br>
  			<a href="findExamPaper?page=1&&keyword=${keyword }">『首页』</a>
			<c:if test="${page==1}">
				<a href="#">[上一页]</a>
			</c:if>
			<c:if test="${page!=1 }">
				<a href="findExamPaper?page=${page-1 }&&keyword=${keyword }">[上一页]</a>
			</c:if>
			<c:if test="${page==totalPage }">
				<a href="#">[下一页]</a>
			</c:if>
			<c:if test="${page!=totalPage }">
				<a href="findExamPaper?page=${page+1 }&&keyword=${keyword }">[下一页]</a>
			</c:if>
			<a href="findExamPaper?page=${totalPage }&&keyword=${keyword }">『尾页』</a>
  		</font>
  		</center>
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
