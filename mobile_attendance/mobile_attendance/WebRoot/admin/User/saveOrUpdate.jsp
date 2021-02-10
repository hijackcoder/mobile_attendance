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
			��ǰλ��
			<b class="tip"></b>�û�����
			<b class="tip"></b>����û�
		</div>
		<form action="user_save.action" method="post"
			enctype="multipart/form-data">
			<input name="user.id" value="${user.id }" type="hidden" />
			<table
				class="table table-striped table-bordered table-condensed">
				<thead>
					<tr>
						<td colspan="4">
							<b>�û���� </b>
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							�û���
						</td>
						<td colspan="3">
							<input name="user.username" value="${user.username }" type="text" />
						</td>
					</tr>
					<tr>
						<td>
							���� 
						</td>
						<td colspan="3">
							<input name="user.password" value="${user.password }" type="text" />
						</td>
					</tr>
					<tr>
						<td>
							����
						</td>
						<td colspan="3">
							<input name="user.realname" value="${user.realname }" type="text" />
						</td>
					</tr>
					<tr>
						<td>
							ѧ��
						</td>
						<td colspan="3">
							<input name="user.qqnum" value="${user.qqnum }" type="text" />
						</td>
					</tr>
					<tr>
						<td>
							�༶ 
						</td>
						<td colspan="3">
							<input name="user.phone" value="${user.phone }" type="text" />
						</td>
					</tr>
					<tr>
						<td>
							ѡ���ɫ
						</td>
						<td colspan="3">
								<select name="user.jobstatus">
										<c:if test="${user.jobstatus == 0 }">
											<option selected="selected"
											value="0">
											 ѧ��
										</option>
										</c:if>
										<c:if test="${user.jobstatus != 0 }">
											<option 
											value="0">
											 ѧ��
										</option>
										</c:if>
										
										<c:if test="${user.jobstatus == 1 }">
											<option selected="selected"
											value="1">
											�ον�ʦ
										</option>
										</c:if>
										<c:if test="${user.jobstatus != 1}">
											<option 
											value="1">
											 �ον�ʦ
										</option>
										</c:if>
										
										<c:if test="${user.jobstatus == 2 }">
											<option selected="selected"
											value="2">
											ϵ����Ա
										</option>
										</c:if>
										<c:if test="${user.jobstatus != 2}">
											<option 
											value="2">
											 ϵ����Ա
										</option>
										</c:if>
										
										<c:if test="${user.jobstatus == 3 }">
											<option selected="selected"
											value="3">
										ѧԺ����Ա
										</option>
										</c:if>
										<c:if test="${user.jobstatus != 3}">
											<option 
											value="3">
											ѧԺ����Ա
										</option>
										</c:if>
									
										<c:if test="${user.jobstatus == 4 }">
											<option selected="selected"
											value="4">
										���񴦹���Ա
										</option>
										</c:if>
										<c:if test="${user.jobstatus != 4}">
											<option 
											value="4">
											���񴦹���Ա
										</option>
										</c:if>
									
										
						</td>
					</tr>
					
					
				</tbody>
				<tfoot>
					<tr>
						<td colspan="4">
								<input class="btn btn-inverse" id="find" type="submit"
									value="����" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input class="btn btn-inverse" type="reset" value="ȡ��" />
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</body>
</html>