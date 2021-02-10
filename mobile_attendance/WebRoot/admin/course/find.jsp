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
$(function() {
	$(".datepicker").datepicker();
})
</script>
	</head>
	<body>
		<div class="alert alert-info">
			当前位置
			<b class="tip"></b>课程信息管理
			<b class="tip"></b>课程信息列表
		</div>
		<%--
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
		--%>
		<c:if test="${list != 'null'}">
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
							教室
						</td>
						<td>
							任课老师
						</td>
						<td>
							开始课时（填写从1-12的数字）
						</td>
						<td>
							课时（填写1-4的数字）
						</td>
						<td>
							班级
						</td>
						<td>
							周几（1-7）
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
								${tmp.name }
							</td>
							<td>
								${tmp.room }
							</td>
							<td>
								${tmp.teach }
							</td>
							<td>
								${tmp.start }
							</td>
							<td>
								${tmp.step }
							</td>
							<td>
								${tmp.banji }
							</td>
							<td>
								${tmp.week }
							</td>



							<td>
								<a target="Conframe"
									href="${pageContext.request.contextPath}/course_edit.action?course.id=${tmp.id }">修改
								</a>
								<a target="Conframe"
									href="${pageContext.request.contextPath}/course_delete.action?course.id=${tmp.id }">删除
								</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>
	</body>
</html>
