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
			��ǰλ��
			<b class="tip"></b>��Ϣ����
			<b class="tip"></b>��Ϣ�б�
		</div><%--
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
		--%><c:if test="${list != 'null'}">
			<table class="table table-striped table-bordered table-condensed">
				<thead>
					<tr class="tr_detail">
						<td>
							���
						</td>
						<td>
							��Ϣ����
						</td>
						<td>
							������
						</td>
						<td>
							����ʱ��
						</td>
					<td>
							ͼƬ
						</td>
					<td>
							��Ϣ���
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
								${tmp.title }
							</td>
							<td>
									${tmp.author }
							</td>
							<td>
								${tmp.pubdate }
							</td>
							<td>
								<img alt="ͼƬ����" src="${pageContext.request.contextPath}/${tmp.image_url }" width="100px" height="100px">
								</img>
							</td>
							
								<td>
								${tmp.type }
							</td>
					
						
							<td>
									<a target="Conframe"
										href="${pageContext.request.contextPath}/biotech_edit.action?biotech.id=${tmp.id }">�޸�
									</a>
									<a target="Conframe"
										href="${pageContext.request.contextPath}/biotech_delete.action?biotech.id=${tmp.id }">ɾ��
									</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			</c:if>
	</body>
</html>
