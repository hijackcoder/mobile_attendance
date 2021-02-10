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
			<b class="tip"></b>评论
			<b class="tip"></b>评论管理
		</div>
		<form method="post"
			action="${pageContext.request.contextPath}/comments_list.action">
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
						</td>
						<td class="detail" colspan="5">
						</td>
					</tr>
				</tbody>
			</table>
		</form>
		<c:if test="${list != 'null'}">
			<table class="table table-striped table-bordered table-condensed">
				<thead>
					<tr class="tr_detail">
						<td>
							编号
						</td>
						<td>
							评论人
						</td>
						<td>
							ID
						</td>
						<td>
							评论时间
						</td>
						<td>
							评论内容
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
								${tmp.username }
							</td>
							<td>
								${tmp.bioid }
							</td>
							<td>
								${tmp.commitdate}
							</td>
							<td>
								${tmp.content }
							</td>
					
						
							<td>
									<a target="Conframe"
										href="${pageContext.request.contextPath}/comments_delete.action?comments.id=${tmp.id }">删除
									</a>
								
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			</c:if>
	</body>
</html>
