<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

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
  window.parent.location="student/modifyInfo";
  window.alert("修改成功！");
  </script>
  <%}else{ %>
  <script type="text/javascript">
  window.parent.location="student/modifyInfo";
  window.alert("修改失败！");
  </script>
  <%} %>
  </body>
</html>
