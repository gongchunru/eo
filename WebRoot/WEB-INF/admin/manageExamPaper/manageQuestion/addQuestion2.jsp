<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<% String path=request.getContextPath(); %>

<html>
  <head>
    
    <title>添加试题(2)</title>
    
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
		<form method="post" name="reg" action="addQuestion2">
		
		<input type="hidden" name="examPaperID" value="" />
		<input type="hidden" name="type" value="" />
		<input type="hidden" name="content" value="" />
		
		<table cellpadding="3" cellspacing="1" align="center" class="tableborder1" id="table1">
	
		<tr>
		<td align="center" colspan="2" background="<%=path %>/images/bg_table.gif"><b><font size="3" color="white">添加试题</font></b></td>
		</tr>
		<tr>
			<td class="tablebody1"><b>题目</b>：</td>
			<td class="tablebody2">
			<textarea rows="4" cols="70" readonly>${question.content }</textarea>
			</td>
		</tr>
		<tr>
			<td class="tablebody1"><b>选项A</b>：</td>
			<td class="tablebody2">
			<textarea rows="3" cols="70" name="optionA" id="optionAID"></textarea>
			<font color="#FF0000">*</font>
			</td>
		</tr>
		<tr>
			<td class="tablebody1"><b>选项B</b>：</td>
			<td class="tablebody2">
			<textarea rows="3" cols="70" name="optionB" id="optionBID"></textarea>
			<font color="#FF0000">*</font>
			</td>
		</tr>
		<tr>
			<td class="tablebody1"><b>选项C</b>：</td>
			<td class="tablebody2">
			<textarea rows="3" cols="70" name="optionC" id="optionCID"></textarea>
			<font color="#FF0000">*</font>
			</td>
		</tr>
		<tr>
			<td class="tablebody1"><b>选项D</b>：</td>
			<td class="tablebody2">
			<textarea rows="3" cols="70" name="optionD" id="optionDID"></textarea>
			<font color="#FF0000">*</font>
			</td>
		</tr>
		<tr>
			<td class="tablebody1"><b>答案</b>：</td>
			<td class="tablebody2">
			<!-- 
			A<input type="radio" name="answer" value="A" checked/>
			B<input type="radio" name="answer" value="B"/>
			C<input type="radio" name="answer" value="C"/>
			D<input type="radio" name="answer" value="D"/>
			--> 
			A<input type="checkbox" name="answer" id="answerAID" value="A"/>
			B<input type="checkbox" name="answer" id="answerBID" value="B"/>
			C<input type="checkbox" name="answer" id="answerCID" value="C"/>
			D<input type="checkbox" name="answer" id="answerDID" value="D"/>
			
			<font color="#FF0000">*</font>
			</td>
		</tr>
		
		<tr>
			<td class="tablebody3" valign="middle" colspan="2" align="center">
			<input type="submit" value="添加"/>&nbsp;&nbsp;&nbsp;
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
