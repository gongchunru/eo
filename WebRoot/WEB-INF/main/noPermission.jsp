<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>重要提示信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	 <style type="text/css">
    body {
	text-align: center;
	margin: 0 auto
}

.errMainArea {
	width: 550px;
	margin: 80px auto;
	border: 1px solid #95BAE3;
	text-align: left
}

.errTopArea {
	background-color: #73A2D6;
	border-bottom: 1px solid #95BAE3;
	font-size: 14px;
	font-weight: bold;
	color: #fff;
	padding: 5px 10px 3px 10px
}

.errTxtArea {
	background-color: #fff;
	padding: 54px 34px 54px 150px;
	background: url("<%=path %>/images/error_face.gif") no-repeat
		35px 25px;
}

.errTxtArea .txt_title {
	font-size: 14px;
	font-weight: bold;
	margin-left: 12px
}

.errBtmArea {
	padding: 5px;
	background-color: #E6EEF7;
	border-top: 1px solid #95BAE3;
	text-align: center
}

.btnFn {
	cursor: pointer !important;
	cursor: hand;
	background-image: url("<%=path %>/images/error_btn.gif");
	background-color: #F7FCFF;
	text-align: center;
	height: 21px;
	width: 85px;
	padding: 0px !important;
	padding-top: 3px;
	border: 1px solid #245487;
	color: #001037
} 
    </style>

  </head>
  
  <body>
   		 	<div class="errMainArea" id="error163">
			<div class="errTopArea" style="text-align:left">[系统提示]</div>
			<div class="errTxtArea" style="text-align:left" style="height:150px">
			<b class="txt_title">您没有访问权限，可能还没有登录或登录已超时！</b>
			</div>
			<div class="errBtmArea">
			<input type="button" class="btnFn" value="转到登录界面" onclick="window.location.href='<%=path %>/login/toLogin'" />
			</div>
			</div>	
  </body>
</html>
