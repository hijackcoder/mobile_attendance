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
			��ǰλ��
			<b class="tip"></b>�γ���Ϣ����
			<b class="tip"></b>�γ���Ϣ�б�
		</div>
		<%--
		<form method="post"
			action="${pageContext.request.contextPath}/xianlu_list.action">
			<table class="table table-striped table-bordered table-condensed">
				<thead>
					<tr>
						<td colspan="6" class="auto-style2">
							&nbsp;����д��ѯ����
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td align=right>
							&nbsp;&nbsp;
								�����Ҳ��������ƽ���ģ����ѯ
						</td>
						<td class="detail" colspan="5">
							<input type="text" name="xianlu.name" id="str" value="${xianlu.name }" />
							&nbsp;&nbsp;
							<input class="btn btn-inverse" id="find" type="submit" value="��ѯ" />
							&nbsp;&nbsp;
							<input class="btn btn-inverse" type="button" value="���"
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
							���
						</td>
						<td>
							�γ�����
						</td>
						<td>
							����
						</td>
						<td>
							�ο���ʦ
						</td>
						<td>
							��ʼ��ʱ����д��1-12�����֣�
						</td>
						<td>
							��ʱ����д1-4�����֣�
						</td>
						<td>
							�༶
						</td>
						<td>
							�ܼ���1-7��
						</td>


						<td>
							����
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
									href="${pageContext.request.contextPath}/course_edit.action?course.id=${tmp.id }">�޸�
								</a>
								<a target="Conframe"
									href="${pageContext.request.contextPath}/course_delete.action?course.id=${tmp.id }">ɾ��
								</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>
	</body>
</html>
