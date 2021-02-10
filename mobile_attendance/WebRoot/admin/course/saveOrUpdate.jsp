<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<%@ include file="../com.jsp"%>
		<script type="text/javascript">
$(function() {
	$('.modal').show();
	$(".datepicker").datepicker();
	$('#list').hide();
	$('#find').click(function() {
		$('#list').show();
	})
})
</script>
	</head>
	<body>
		<div class="alert alert-info">
			当前位置
			<b class="tip"></b>课程管理
			<b class="tip"></b>添加课程
		</div>
		<form action="course_save.action" method="post"
			enctype="multipart/form-data">
			<input name="course.id" value="${course.id }" type="hidden" />
			<table class="table table-striped table-bordered table-condensed">
				<thead>
					<tr>
						<td colspan="4">
							<b>课程添加 </b>
						</td>
					</tr>
				</thead>
				<tbody>
					<!-- 
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
				
				
				 -->
					<tr>
						<td>
							课程名称
						</td>
						<td colspan="3">
							<input name="course.name" value="${course.name }" type="text" />
						</td>
					</tr>
					<tr>
						<td>
							教室
						</td>
						<td colspan="3">
							<input name="course.room" value="${course.room }" type="text" />
						</td>
					</tr>
					<tr>
						<td>
							老师
						</td>
						<td colspan="3">
							<input name="course.teach" value="${course.teach }"
								type="text" />
						</td>
					</tr>
					<tr>
						<td>
							开始课时（填写从1-12的数字）
						</td>
						<td colspan="3">
							<input name="course.start" value="${course.start }"
								type="text" />
						</td>
					</tr>
					<tr>
						<td>
							课时（填写1-4的数字）
						</td>
						<td colspan="3">
							<input name="course.step" value="${course.step }"
								type="text" />
						</td>
					</tr>
					<tr>
						<td>
								班级
						</td>
						<td colspan="3">
							<input name="course.banji" value="${course.banji }"
								type="text" />
						</td>
					</tr>
					<tr>
						<td>
								周几
						</td>
						<td colspan="3">
							<input name="course.week" value="${course.week }"
								type="text" />
						</td>
					</tr>
				
				</tbody>
				<tfoot>
					<tr>
						<td colspan="4">
							<input class="btn btn-inverse" id="find" type="submit" value="保存" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input class="btn btn-inverse" type="reset" value="取消" />
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</body>
</html>