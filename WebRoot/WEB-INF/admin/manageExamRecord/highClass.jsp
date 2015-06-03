<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String path=request.getContextPath(); %>
<html>
  <head>
    
    <title>查询考试成绩</title>
    
    <script type='text/javascript' src='/sims/dwr/interface/SelectExamPaperJS.js'></script>
  	<script type='text/javascript' src='/sims/dwr/engine.js'></script>
  	<script type='text/javascript' src='/sims/dwr/util.js'></script>
  	
  	<script type="text/javascript">
    
    function select(){
    
  	var examPaperList=SelectExamPaperJS.getExamPaper(processResponse);
  	}				
  	//回调方法
  	function processResponse(examPaperList){
  	//加载新的列表项
  	DWRUtil.addOptions("examPaperID",examPaperList);
  	}
    </script>
    
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
	
	.key1{
    color: #8c8c8c;
    }
    .key2{
    color: #000000;
    }
	
    </style>
  </head>
  
  <body topmargin="0" bottommargin="0" onload="select(),getCurrTime()">
	
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
	    <td class="main_left_title">成绩管理</td>
	    <td valign="top" align="right"></td>
	  	</tr>
		</table>
	  	
		<table>
		  <tr>
			<td class="menuleft" id="menubar">
	
			<li><a href="<%=path %>/admin/manageExamRecord/highClass.jsp">查询考试成绩</a></li>
		
			</td>
		  </tr>
		</table>
	 </td>

		 <td width=5>
			&nbsp;
		 </td>
		
		<td>
		
		<br><br><br>
  <form action="viewExamrecord" method="post">
  <table align="center">
  <tr>
  <td colspan="5">请选择查询条件(学号、姓名不填，默认为所有学生):</td>
  </tr>
  <tr><td>&nbsp;</td></tr>
  <tr>
  <td>科目&nbsp;</td>
  <td>
   <select name="examPaperId" id="examPaperID">
   <option value="0" selected>所有科目</option>
   <!-- 因为是分页查询，所以显示永远是最后一个试卷的名字 -->
   <c:forEach items="${examList}" var="e">
   <option value="${e.epid }">${e.name}</option>
   </c:forEach>
   </select>
   &nbsp;&nbsp;&nbsp;&nbsp;
   </td>
   <td>分数&nbsp;</td>
   <td>
   <select name="score">
   <option value="0" selected>所有分数</option>
   <option value="1">60分以下</option>
   <option value="2">60分--80分</option>
   <option value="3">80分以上</option>
   </select>
   &nbsp;&nbsp;&nbsp;&nbsp;
   </td>
  <td rowspan="2" align="center"><input type="submit" value="查询"/></td>
   </tr>
   <tr>
   <td>学号&nbsp;</td>
   <td><input type="text" name="zh" size="12" value="请输入学号" class="key1" />&nbsp;&nbsp;&nbsp;&nbsp;or</td>
   <td>姓名&nbsp;</td>
   <td><input type="text" name="name" size="12" value="请输入关键字" class="key1" />&nbsp;&nbsp;&nbsp;&nbsp;</td>
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
	<jsp:include page="../admin_footer.jsp"></jsp:include>
	

	</td>      
	
	<td width="10" background="<%=path %>/images/bg_right.gif"></td>
	
	</tr>
	</tbody>
	
	</table>
		
  </body>
</html>
