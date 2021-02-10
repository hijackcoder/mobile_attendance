<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
	
		
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

	<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<%@ include file="../com.jsp"%>
		<script type="text/javascript">
			$(function () {
				$('.modal').show();
				$(".datepicker").datepicker();
				$('#list').hide();
				$('#find').click(function () {
					$('#list').show();
				})
			})
		</script>
	</head>
	<body>
		<div class="alert alert-info">
			当前位置
			<b class="tip"></b>用户管理
			<b class="tip"></b>添加用户
		</div>
		<form action="user_save.action" method="post"
			enctype="multipart/form-data">
			<input name="user.id" value="${user.id }" type="hidden" />
			<table
				class="table table-striped table-bordered table-condensed">
				<thead>
					<tr>
						<td colspan="4">
							<b>用户添加 </b>
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							用户名
						</td>
						<td colspan="3">
							<input name="user.username" value="${user.username }" type="text" />
						</td>
					</tr>
					<tr>
						<td>
							密码 
						</td>
						<td colspan="3">
							<input name="user.password" value="${user.password }" type="text" />
						</td>
					</tr>
					<tr>
						<td>
							姓名
						</td>
						<td colspan="3">
							<input name="user.realname" value="${user.realname }" type="text" />
						</td>
					</tr>
					<tr>
						<td>
							学号
						</td>
						<td colspan="3">
							<input name="user.qqnum" value="${user.qqnum }" type="text" />
						</td>
					</tr>
					<tr>
						<td>
							班级 
						</td>
						<td colspan="3">
							<input name="user.phone" value="${user.phone }" type="text" />
						</td>
					</tr>
					<tr>
						<td>
							选择角色
						</td>
						<td colspan="3">
								<select name="user.jobstatus">
										<c:if test="${user.jobstatus == 0 }">
											<option selected="selected"
											value="0">
											 学生
										</option>
										</c:if>
										<c:if test="${user.jobstatus != 0 }">
											<option 
											value="0">
											 学生
										</option>
										</c:if>
										
										<c:if test="${user.jobstatus == 1 }">
											<option selected="selected"
											value="1">
											任课教师
										</option>
										</c:if>
										<c:if test="${user.jobstatus != 1}">
											<option 
											value="1">
											 任课教师
										</option>
										</c:if>
										
										<c:if test="${user.jobstatus == 2 }">
											<option selected="selected"
											value="2">
											系管理员
										</option>
										</c:if>
										<c:if test="${user.jobstatus != 2}">
											<option 
											value="2">
											 系管理员
										</option>
										</c:if>
										
										<c:if test="${user.jobstatus == 3 }">
											<option selected="selected"
											value="3">
										学院管理员
										</option>
										</c:if>
										<c:if test="${user.jobstatus != 3}">
											<option 
											value="3">
											学院管理员
										</option>
										</c:if>
									
										<c:if test="${user.jobstatus == 4 }">
											<option selected="selected"
											value="4">
										教务处管理员
										</option>
										</c:if>
										<c:if test="${user.jobstatus != 4}">
											<option 
											value="4">
											教务处管理员
										</option>
										</c:if>
									
										
						</td>
					</tr>
					
					
				</tbody>
				<tfoot>
					<tr>
						<td colspan="4">
								<input class="btn btn-inverse" id="find" type="submit"
									value="保存" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input class="btn btn-inverse" type="reset" value="取消" />
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</body>
</html>