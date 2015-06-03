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
  window.parent.location="<%=path %>/admin/modifyOption";
  window.alert("修改成功！");
  </script>
  <%}else{ %>
  <script type="text/javascript">
  window.parent.location="<%=path %>/examPaperDetail.do?examPaperID=${id }&role=admin";
  window.alert("修改失败！");
  </script>
  <%} %>
  </body>
</html>
