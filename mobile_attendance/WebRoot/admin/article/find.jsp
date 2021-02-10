<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
	<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<%@ include file="../com.jsp"%>
		<script type="text/javascript">
			$(function () {
				$(".datepicker").datepicker();
			})
		</script>
	</head>
	<body>
		<div class="alert alert-info">
			当前位置
			<b class="tip"></b>课程签到管理
			<b class="tip"></b>课程签到列表
		</div><%--
		<form method="post"
			action="${pageContext.request.contextPath}/xianlu_list.action">
			<table class="table table-striped table-bordered table-condensed">
				<thead>
					<tr>
						<td colspan="6" class="auto-style2">
							&nbsp;请填写查询条件
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td align=right>
							&nbsp;&nbsp;
								请在右侧输入名称进行模糊查询
						</td>
						<td class="detail" colspan="5">
							<input type="text" name="xianlu.name" id="str" value="${xianlu.name }" />
							&nbsp;&nbsp;
							<input class="btn btn-inverse" id="find" type="submit" value="查询" />
							&nbsp;&nbsp;
							<input class="btn btn-inverse" type="button" value="清空"
								onclick="javascript: document.getElementById('str').value='';" />
							&nbsp;&nbsp;
						</td>
					</tr>
				</tbody>
			</table>
		</form>
		--%><c:if test="${list != 'null'}">
			<table class="table table-striped table-bordered table-condensed">
				<thead>
					<tr class="tr_detail">
						<td>
							编号
						</td>
						<td>
							课程名称
						</td>
						<td>
							上课地点
						</td>
						<td>
						     发起日期
						</td>
					<td>
							发起人
						</td>
						
				
						<td>
							操作
						</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="tmp" items="${list}">
						<tr>
							<td>
								${tmp.id }
							</td>
							<td>
								${tmp.title }
							</td>
							<td>
									${tmp.content }
							</td>
							<td>
								${tmp.upadtetime }
							</td>
							<td>
								${tmp.username }
							</td>
					
						
							<td>
									<a target="Conframe"
										href="${pageContext.request.contextPath}/course_listloc.action?articleid=${tmp.id }">查看签到
									</a>
									<a target="Conframe"
										href="${pageContext.request.contextPath}/article_delete.action?article.id=${tmp.id }">删除
									</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			</c:if>
	</body>
</html>
