<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<% String path=request.getContextPath(); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'MyJsp.jsp' starting page</title>

  </head>
  
  <body>
  <%
  if(request.getAttribute("info").equals("success")){
   %>
  <script type="text/javascript">
  window.parent.location="<%=path %>/deleteQuestion?qid=${question.qid }";
  window.alert("删除成功！");
  </script>
  <%}else{ %>
  <script type="text/javascript">
  window.parent.location="<%=path %>/deleteQuestion?qid=${question.qid }";
  window.alert("删除失败！");
  </script>
  <%} %>
  </body>
</html>
