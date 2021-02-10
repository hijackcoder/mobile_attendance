<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<%@ include file="../com.jsp"%>
		<script type="text/javascript">

$(function() {
	$(".datepicker").datepicker();
})
</script>
	</head>
	<body>
		<div class="alert alert-info">
			当前位置
			<b class="tip"></b> 用户管理
			<b class="tip"></b>

		</div>
		<form action="${pageContext.request.contextPath}/user/list.action">
			<table class="table table-striped table-bordered table-condensed">
				<thead>
					<tr>
					</tr>
				</thead>
				<tbody>
					<tr>
						<a target="Conframe"
							href="${pageContext.request.contextPath}/user_add.action">添加用户</a>
					</tr>

				</tbody>
			</table>
		</form>

		<c:if test="${lst != 'null'}">

			<table class="table table-striped table-bordered table-condensed">
				<thead>
					<tr class="tr_detail">

						<td>
							用户编号
						</td>
						<td>
							用户名
						</td>
						<td>
							密码
						</td>
						<td>
							真实姓名
						</td>
						<td>
							学号(或者工号)
						</td>
						<td>
							班级
						</td>
						<td>
							角色
						</td>

						<td>
							操作
						</td>
					</tr>
				</thead>

				<tbody>

					<c:forEach var="tmp" items="${lst}">

						<tr>

							<td>
								${tmp.id }
							</td>
							<td>
								${tmp.username }
							</td>
							<td>
								${tmp.password }
							</td>
							<td>
								${tmp.realname }
							</td>
							<td>
								${tmp.qqnum }
							</td>
							<td>
								${tmp.phone}
							</td>
							<td>
							<!-- 
							0学生，1 任课教师，2系管理员、3学院管理员和4教务处管理员
							 -->
								<c:if test="${tmp.jobstatus == 0}">
									学生
								</c:if>
								<c:if test="${tmp.jobstatus == 1}">
									任课教师
								</c:if>
								<c:if test="${tmp.jobstatus == 2}">
									系管理员
								</c:if>
								<c:if test="${tmp.jobstatus == 3}">
									学院管理员
								</c:if>
								<c:if test="${tmp.jobstatus == 4}">
									教务处管理员
								</c:if>
							</td>
							<td>

								<a target="Conframe"
									href="${pageContext.request.contextPath}/user_del.action?user.id=${tmp.id }">删除</a>
								<a target="Conframe"
									href="${pageContext.request.contextPath}/user_edit.action?user.id=${tmp.id }">修改</a>


							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</c:if>

	</body>
</html>
