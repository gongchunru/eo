<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<% String path=request.getContextPath(); %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
     <title>添加管理员</title>
    
	<script type="text/javascript" src="<%=path %>/js/notnull.js"></script>

	
    <LINK href="<%=path %>/css/table.css" rel=stylesheet type="text/css">
    
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
    <script language="javascript" type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript">
		function check_name(){
			var name = $("#zhID").val();
			$.post(
				"checkAdminName",
				{"zh":name},
				function(result){
					if(result.success){
						$("#information").text(result.message);
					}else{
						$("#information").text(result.message);
					}
				}
			);
		}
    </script>
  </head>
  
  <body topmargin="0" bottommargin="0">
	
	<table height="*" width="72%" align="center" border="0" cellpadding="0" cellspacing="0">
	
	<tbody>
	<tr> 
	<td width="10" background="<%=path %>/images/bg_left.gif"></td>
	<td valign="top">
                        
	<!-- head -->
	<jsp:include page="../superAdmin_head.jsp"></jsp:include>
	
	<!-- body -->
	<table width="100%" height="500" cellspacing="0"  border="0">
		<tr height="*" valign="top">
		
	  <td valign="top" width="155"  class="main_left">
	  
	  	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="main_left_top">
	  	<tr height="32">
	    <td valign="top"></td>
	    <td class="main_left_title">管理员管理</td>
	    <td valign="top" align="right"></td>
	  	</tr>
		</table>
	  	
		<table>
		  <tr>
			<td class="menuleft" id="menubar">
			
			<li><a href="<%=path %>/super/toAddAdmin">添加管理员</a></li>
			<li><a href="<%=path %>/super/toViewAdmin">查询管理员</a></li>

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
		<form method="post" name="reg" action="addAdmin" >
		<table cellpadding="3" cellspacing="1" align="center" class="tableborder1" id="table1">
	
		 <tr>
		 <td align="center" colspan="2" background="<%=path %>/images/bg_table.gif"><b><font size="3" color="white">添加管理员</font></b></td>
		 </tr>

		<tr>
			<td width="40%" class="tablebody1"><b>账号</b>：</td>
			<td width="60%" class="tablebody2">
			<table>
			<tr>
			<td><input type="text" size="25" maxlength="16" name="zh" id="zhID" onblur="check_name();"/>
			<font color="#FF0000">*</font></td>
			<td><font color="green"><div id="information"></div></font></td>
			</tr>
			</table>
			</td>
		</tr>
		
		<tr>
			<td width="40%" class="tablebody1"><b>密码</b>：</td>
			<td width="60%" class="tablebody2">
			<input type="password" size="25" maxlength="16" name="password" id="passwordID"/>
			<font color="#FF0000">*</font>
			</td>
		</tr>
		
		<tr>
			<td width="40%" class="tablebody1"><b>姓名</b>：</td>
			<td width="60%"class="tablebody2">
			<input type="text" size="25" maxlength="16" name="name" id="nameID"/>
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
	<jsp:include page="../superAdmin_footer.jsp"></jsp:include>
	

	</td>      
	
	<td width="10" background="<%=path %>/images/bg_right.gif"></td>
	
	</tr>
	</tbody>
	
	</table>
		
  </body>
</html>
   
