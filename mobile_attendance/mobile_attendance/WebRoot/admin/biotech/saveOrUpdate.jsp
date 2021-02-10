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
			<b class="tip"></b>综合信息管理
			<b class="tip"></b>添加综合信息
		</div>
		<form action="biotech_save.action" method="post"
			enctype="multipart/form-data">
			<input name="biotech.id" value="${biotech.id }" type="hidden" />
			<table
				class="table table-striped table-bordered table-condensed">
				<thead>
					<tr>
						<td colspan="4">
							<b>综合信息添加 </b>
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							信息标题
						</td>
						<td colspan="3">
							<input name="biotech.title" value="${biotech.title }" type="text" />
						</td>
					</tr>
					<tr>
						<td>
							作者
						</td>
						<td colspan="3">
							<input name="biotech.author" value="${biotech.author }" type="text" />
						</td>
					</tr>
					<tr>
						<td>
							信息类型
						</td>
						<td colspan="3">
								<select name="biotech.type">
										<option
											<c:if test="${biotech.type == '课程介绍' }">
																	selected
																	</c:if>
											value="课程介绍">
											   课程介绍
										</option>
										<option
											<c:if test="${biotech.type == '通知公告' }">
																	selected
																	</c:if>
											value="通知公告">
											  通知公告
										</option>
									
										</select>
						</td>
					</tr>
					<tr>
						<td>
							信息内容
						</td>
						<td colspan="3">
							<textarea rows="3" cols="100" name="biotech.content">${biotech.content }</textarea>
						</td>
					</tr>
					<tr>
					<tr>
						<td>
							图片上传
						</td>
						<td colspan="3">
							<s:file name="biotech.file" ></s:file>
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