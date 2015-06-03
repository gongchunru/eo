<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.*" %>

<% String path=request.getContextPath(); %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@  taglib  uri="http://java.sun.com/jsp/jstl/functions"   prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>在线考试</title>
    
    
   <script type="text/javascript">
   var remainSecond=59;
   var remainMinute;
  	//显示出剩余时间
    function showRemainTime(TotalMinute){
    this.remainMinute=TotalMinute-1;
    window.setInterval("updateRemainTime()",1000);
   }
   
   function updateRemainTime(){
    var minute =document.getElementById("minute");
    var second=document.getElementById("second");
    if(remainMinute==0&remainSecond==0){
    window.alert("考试已经结束！");
    form1.submit();
    }else{
    if(remainMinute==10&remainSecond==0){window.alert("你好，离考试结束还有十分钟！");} 
   	 minute.innerHTML = "剩余时间&nbsp;"+remainMinute+"分钟";  	 	
	 second.innerHTML=""+remainSecond+"秒";   	 	       
  	if (remainSecond<=0)//如果秒到0就重新更新分钟
	{ 
		remainSecond=59; //重新把秒针设为59
		remainMinute--;
	}
	else{
	remainSecond--;	 
    }    
      }
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
	
    </style>
  </head>
  <!-- -90分钟去掉分钟，然后再变为整形 -->
  <body topmargin="0" bottommargin="0" onload="getCurrTime();showRemainTime(${fn:replace(examPaper.totalTime,'分钟','')})">
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
	    <td class="main_left_title">在线考试</td>
	    <td valign="top" align="right"></td>
	  	</tr>
		</table>
		<table>
		  <tr>
			<td class="menuleft" id="menubar">
	
			<li><a href="viewExamPaper.jsp">获取试卷</a></li>

			</td>
		  </tr>
		</table>
	 </td>

		 <td width=5>
			&nbsp;
		 </td>
		
		<td>
		<form name="form1" method="post" action="examResult">
		<table width="100%">
		
		<tr>
		<td align="center">
		<font size="5"><b>${examPaper.name }</b></font>
		</td>
		</tr>
		<tr><td>
		<table width="100%">
		<tr>
		<td width="60%"></td>
		<td align="right">
		<div id="minute"></div>
		</td>
		<td align="left">
		<div id="second"></div>
		</td>
		</tr>
		</table>
		</td></tr>
		<tr><td><hr></td></tr>
		
        <tr>
        <td>
        <c:forEach items="${list}" var="e">
        <c:forEach items="${options}" var="k"  varStatus="s">
        <!-- 类型是单选题的类型，而且问题id相同，所以两个条件都满足 -->
        <c:if test="${e.type eq '1' && e.qid == k.questionId}">
        <b></b>&nbsp;&nbsp;单项选择题&nbsp;&nbsp;${e.content } <br>
			<input type="radio" name="answer.single${s.index }" value="A-${e.qid }"/>${k.optionA }<br>
			<input type="radio" name="answer.single${s.index }" value="B-${e.qid }"/>${k.optionB }<br>
			<input type="radio" name="answer.single${s.index }" value="C-${e.qid }"/>${k.optionC }<br>
			<input type="radio" name="answer.single${s.index }" value="D-${e.qid }"/>${k.optionD }<br>		
		</c:if>		
		<c:if test="${e.type eq '2' && e.qid == k.questionId}">	
		<b></b>&nbsp;&nbsp;多项选择题&nbsp;&nbsp;${e.content } <br>
			<input type="checkbox" name="answer.multi" value="A-${e.qid }"/>${k.optionA }<br>
			<input type="checkbox" name="answer.multi" value="B-${e.qid }"/>${k.optionB }<br>
			<input type="checkbox" name="answer.multi" value="C-${e.qid }"/>${k.optionC }<br>
			<input type="checkbox" name="answer.multi" value="D-${e.qid }"/>${k.optionD }<br>
          <br>	
		</c:if>
        </c:forEach>
        </c:forEach>
        </td>
        </tr>
        <tr><td><hr></td></tr>
        <tr><td align="center">
        <input type="submit" value="提交试卷"/>
       </td></tr>
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
