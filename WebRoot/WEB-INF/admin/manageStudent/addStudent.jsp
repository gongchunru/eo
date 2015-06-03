<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<% String path=request.getContextPath(); %>
<html>
  <head>
    
    <title>添加学生</title>
    
    <script type="text/javascript" src="<%=path %>/js/notnull.js"></script>
	<script type="text/javascript" src="<%=path %>/js/date.js"></script>
	
	
    <link href="<%=path %>/css/table.css" rel="stylesheet" type="text/css">
    
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
		function checkName(){
			var name = $("#zhID").val();
			$.post("checkStudentName",
					{"zh":name},
					function(result){
						alert(3333);
						if(result.success){
							$("#information").text(result.message);
							alert(111);
						}else{
							$("#information").text(result.message);
							alert(222);
						}
					}

				);
		}
		function checkPass(){
			var password = $("#passwordID").val();
			if(password.length > 5 && password.length < 10){

			}else{
				alert("密码长度太短");
			}
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
	<jsp:include page="../admin_head.jsp"></jsp:include>
	
	<!-- body -->
	<table width="100%" height="500" cellspacing="0"  border="0">
		<tr height="*" valign="top">
		
	  <td valign="top" width="155"  class="main_left">
	  
	  	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="main_left_top">
	  	<tr height="32">
	    <td valign="top"></td>
	    <td class="main_left_title">学生管理</td>
	    <td valign="top" align="right"></td>
	  	</tr>
		</table>
	  	
		<table>
		  <tr>
			<td class="menuleft" id="menubar">
	
			<li><a href="<%=path %>/admin/toAddStudent">添加学生</a></li>
			<li><a href="<%=path %>/admin/toViewStudent">查询学生</a></li>

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
		<form method="post" name="form1" action="addStudent">
		<table cellpadding="3" cellspacing="1" align="center" class="tableborder1" id="table1">
	
		 <tr>
		 <td align="center" colspan="2" background="<%=path %>/images/bg_table.gif"><b><font size="3" color="white">添加学生</font></b></td>
		 </tr>

		<tr>
			<td width="40%" class="tablebody1"><b>学生账号</b>：</td>
			<td width="60%" class="tablebody2">
			<table>
			<tr>
			<td><input type="text" size="25" maxlength="16" name="zh" id="zhID" onblur="checkName();"/>
			<font color="#FF0000">*</font></td>
			<td><font color="green"><div id="information"></div></font></td>
			</tr>
			</table>
			</td>
		</tr>
		
		<tr>
			<td width="40%" class="tablebody1"><b>密码(6-10位)</b>：</td>
			<td width="60%" class="tablebody2">
			<input type="password" size="25" maxlength="16" name="password" id="passwordID" />
			<font color="#FF0000">*</font>
			</td>
		</tr>
		
		<tr>
			<td width="40%" class="tablebody1"><b>重复密码</b>：</td>
			<td class="tablebody2">
			<input type="password" size="25" maxLength="16" name="repassword" id="repasswordID"/>
			<font color="#FF0000">*</font></td>
		</tr>
		
		<tr>
			<td width="40%" class="tablebody1"><b>姓名</b>：</td>
			<td width="60%"class="tablebody2">
			<input type="text" size="25" maxlength="16" name="name" id="nameID"/>
			<font color="#FF0000">*</font>
			</td>
		</tr>
		
		<tr>
			<td width="40%" class="tablebody1"><b>性别</b>：</td>
			<td width="60%"class="tablebody2">
			男<input type="radio" name="sex" value="m" checked/>
			女<input type="radio" name="sex" value="f"/>
			</td>
		</tr>
		
		<tr>
			<td width="40%" class="tablebody1"><b>出生年月日</b>：</td>
			<td width="60%"class="tablebody2">
			<p>
			<select name="YYYY" onChange="YYYYDD(this.value)">
                <option value="YYYY" selected>选择 年</option>
            </select>
            <select name="MM" onChange="MMDD(this.value)">
                 <option value="MM" selected>选择 月</option>
             </select>
             <select name="DD">
                 <option value="DD" selected>选择 日</option>
             </select>
              </p>
			</td>
		</tr>
	
		<tr>
			<td width="40%" class="tablebody1"><b>班级</b>：</td>
			<td width="60%"class="tablebody2">
			<input type="text" size="30" maxlength="20" name="clas" id="clasID"/>
			<font color="#FF0000">*</font>
			</td>
		</tr>
		
		<tr>
			<td class="tablebody1"><b>籍贯</b>：</td>
			
			<td class="tablebody2"><input type="text" size="10" name="city"/>市/县</td>
		</tr>

		<tr>
			<td class="tablebody1"><b>联系电话</b>：</td>
			<td class="tablebody2">
			<input type="text" size="32" maxlength="16" name="tele"/>
			</td>
		</tr>
		
		<tr>
			<td class="tablebody1"><b>手机号码</b>：</td>
			<td class="tablebody2">
			<input type="text" size="32" maxlength="16" name="mobile"/>
			</td>
		</tr>
		
		<tr>
			<td class="tablebody1"><b>Email地址</b>：<br></td>
			<td class="tablebody2">
			<input type="text" maxLength="50" size="32" name="email" id="emailID"/>
			<font color="#FF0000">*</font>
			</td>
		</tr>
		
		<tr>
			<td class="tablebody1"><b>备注</b>：<br></td>
			<td class="tablebody2">
			<textarea rows="5" cols="60" name="remarks"></textarea>
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
	<jsp:include page="../admin_footer.jsp"></jsp:include>
	

	</td>      
	
	<td width="10" background="<%=path %>/images/bg_right.gif"></td>
	
	</tr>
	</tbody>
	
	</table>
		
  </body>
</html>
