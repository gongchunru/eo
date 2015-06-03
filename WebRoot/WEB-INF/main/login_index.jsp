<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>学生信息管理系统</title>
		<meta name="author" content="陈老师">
		<meta name="keywords" content="学生信息管理">
		<meta name="description" content="这是一个实用的学生信息管理系统">
		<meta name="content-type" content="text/html;charset=UTF-8">
		<script type="text/javascript" src="../js/notnull.js">
</script>
		<script type="text/javascript">
function getCode() {
	var code_obj = window.document.getElementById("codeID");
	code_obj.innerHTML = "<img src='CheckCode?a=" + Math.random() + "'/>";
}
function login() {
	if (validate1()) {
		document.myform.submit();
	}
}
function count(count, online) {
	window.alert("您是第" + count + "位访问者，当前在线人数:" + online);
}
</script>

		<style type="text/css">
body {
	margin-top: 0px;
	padding: 0px;
	color: #111;
	font: 12px/ 1.5em Arial, Tahoma, Verdana, Sans-Serif !important;
	font: 11px/ 1.8em Verdana, Arial, Tahoma, Sans-Serif;
	background: #E5EEF5 repeat-y center;
}

#Footer {
	background-image: url(../images/bg_footer.png);
	background-position: 0px -137px;
	height: 50px;
	margin-top: 40px;
	line-height: 20px;
	padding-top: 22px;
	color: #8D8D8D;
}

td {
	color: green;
}

.title_a {
	background-image: url(../images/title_d.gif);
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #91DDFD;
	height: 26px;
	line-height: 26px;
	font-size: 13px;
	font-weight: bold;
	color: #1974C8;
	text-align: left;
	padding-left: 10px;
}

.frame_b {
	background-color: #F3F9FE;
	border: 1px solid #8ED2F6;
	width: 450px;
}
</style>
	</head>

	<body topmargin="0" bottommargin="0"
		onload="javascript:document.myform.zhID.focus();getCode();">

		<table height="*" width="72%" align="center" border="0"
			cellpadding="0" cellspacing="0">

			<tbody>
				<tr>
					<td width="10" background="../images/bg_left.gif"></td>
					<td valign="top" background="../images/bg_login.jpg">


						<table id="Table_01" height="150" width="100%" border="0"
							cellpadding="0" cellspacing="0">
							<tr>
								<td>
									<img src="../images/top_01.jpg" alt="学生信息管理系统" usemap="#Map"
										height="115" width="100%" border="0">
								</td>
							</tr>
							<tr>
								<td background="../images/top_bg.gif" height="35"></td>
							</tr>
						</table>

						<br>
						<br>
						<br>
						<br>
						<br>
						<br>

						<table align="center" class="frame_b">
							<tr class="title_a">
								<td>
									&nbsp;&nbsp;
									<img src="../images/lg.png" />
									&nbsp;欢迎登录学生信息管理系统！
								</td>
							</tr>
							<tr>
								<td align="center">
									<form method="post" name="myform" action="checkLogin">
										<table>
											<tr>
												<td>
													<img src="../images/lock.png" />
												</td>
												<td>
													<table>
														<tr>
															<td colspan="2">
																<font style="color: red">${loginError }</font>&nbsp;
															</td>
														</tr>
														<tr>
															<td align="center">
																帐&nbsp;&nbsp;号:
															</td>
															<td colspan="2">
																<input type="text" name="username" size="18" id="zhID" />
															</td>
															<td align="center">
																*
															</td>
														</tr>
														<tr>
															<td align="center">
																密&nbsp;&nbsp;码:
															</td>
															<td colspan="2">
																<input type="password" name="password" size="18"
																	id="passwordID" />
															</td>
															<td align="center">
																*
															</td>
														</tr>
														<tr>
															<td align="center">
																角&nbsp;&nbsp;色:
															</td>
															<td colspan="2" align="center">
																<select name="role">
																	<option value="student" selected>
																		达内学员
																	</option>
																	<option value="2">
																		教学经理
																	</option>
																	<option value="1">
																		教学主管
																	</option>
																</select>
															</td>
															<td align="center">
																*
															</td>
														</tr>
														<tr>
															<td align="center">
																验证码:
															</td>
															<td align="center">
																<input type="text" size="13" name="checkcode"
																	id="checkcodeID" />
															</td>
															<td colspan="2" align="left">
																<div id="codeID" onclick="getCode()"></div>
															</td>
														</tr>
														<tr>
															<td colspan="4" align="center">
																<img src="../images/login.gif" onclick="login()" />
															</td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</form>
								</td>
							</tr>
						</table>

						<br>
						<br>
						<br>
						<br>
						<br>
						<br>

						<table id="Footer" border="0" cellpadding="0" cellspacing="0"
							width="100%" align="center">
							<tr>
								<td align="center">
									Copyright &copy;2012 - 2013
									<b><font face="Verdana,">Author : </font>
									</b><font color=#00AFCE>陈老师</font>
								</td>
							</tr>
						</table>

					</td>
					<td width="10" background="../images/bg_right.gif"></td>

				</tr>
			</tbody>

		</table>

	</body>
</html>
