<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%
	String path = request.getContextPath();
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>查看试题</title>

<link href="<%=path%>/css/style_left.css" rel="stylesheet"
	type="text/css" />

<style type="text/css">
body {
	margin-top: 0px;
	padding: 0px;
	color: #111;
	font: 12px/1.5em Arial, Tahoma, Verdana, Sans-Serif !important;
	font: 11px/1.8em Verdana, Arial, Tahoma, Sans-Serif;
	background: #E5EEF5 repeat-y center;
}

a {
	text-decoration: none;
}

td {
	color: green;
}
</style>
</head>

<body topmargin="0" bottommargin="0">

	<table height="*" width="72%" align="center" border="0" cellpadding="0"
		cellspacing="0">

		<tbody>
			<tr>
				<td width="10" background="<%=path%>/images/bg_left.gif"></td>
				<td valign="top">
					<!-- head --> <jsp:include page="../admin_head.jsp"></jsp:include>

					<!-- body -->
					<table width="100%" height="500" cellspacing="0" border="0">
						<tr height="*" valign="top">

							<td valign="top" width="155" class="main_left">

								<table width="100%" border="0" cellspacing="0" cellpadding="0"
									class="main_left_top">
									<tr height="32">
										<td valign="top"></td>
										<td class="main_left_title">试卷管理</td>
										<td valign="top" align="right"></td>
									</tr>
								</table>

								<table>
									<tr>
										<td class="menuleft" id="menubar">

											<li><a href="<%=path%>/admin/toAddExamPaper">添加试卷</a></li>
											<li><a href="<%=path%>/admin/toViewExamPaper">查询试卷</a></li>
										</td>
									</tr>
								</table>
							</td>

							<td width=5>&nbsp;</td>

							<td>

								<table width="100%">

									<tr>
										<td align="center"><font size="5"><b>${examPaper.name}</b></font>
										</td>
									</tr>

									<tr>
										<td>&nbsp;</td>
									</tr>

									<!-- 题目的集合 -->
									<c:forEach items="${list }" var="e">
										<tr>
											<td>
												 <b>${e.content }</b><br> 
												<!-- 选项的集合 -->
												<c:forEach items="${options }" var="k">
													<c:if test="${k.questionId == e.qid}">
												        (A)${k.optionA }<br>
												        (B)${k.optionB }<br>
												        (C)${k.optionC }<br> 
												        (D)${k.optionD }<br>
													</c:if>
												</c:forEach>
												<table width="100%">
													<tr>
														<td width="80%">答案:${e.answer }</td>
														<td width="20%"><a href="toModifyQuestion?qid=${e.qid}">修改</a>&nbsp;&nbsp;┊&nbsp;
															<a
															href="javascript:var a=window.confirm('是否要删除该题？');if(a){document.location='deleteQuestion?qid=${e.qid} ';}">删除</a>
														</td>
													</tr>
												</table> <br>
											<br>
											</td>
										</tr>

									</c:forEach>

								</table>

							</td>

							<td width=5>&nbsp;</td>

						</tr>
					</table> <!-- footer --> <jsp:include page="../admin_footer.jsp"></jsp:include>


				</td>

				<td width="10" background="<%=path%>/images/bg_right.gif"></td>

			</tr>
		</tbody>

	</table>

</body>
</html>
