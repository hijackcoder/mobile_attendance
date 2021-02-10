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
			<b class="tip"></b>签到记录管理
			<b class="tip"></b>签到记录列表
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
		--%>
		
		<!-- 
			private String longitude;
	private String latitude;
	private String loctime;
	private String room;
	private String lession;
	private String username;
		 -->
		<c:if test="${listloc != 'null'}">
			<table class="table table-striped table-bordered table-condensed">
				<thead>
					<tr class="tr_detail">
						<td>
							编号
						</td>
						<td>
							经度
						</td>
						<td>
							纬度
						</td>
						<td>
						     签到时间
						</td>
					<td>
							上课地点
						</td>
						
					<td>
							课程
						</td>
						
				
						<td>
							操作
						</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="tmp" items="${listloc}">
						<tr>
							<td>
								${tmp.id }
							</td>
							<td>
								${tmp.longitude }
							</td>
							<td>
									${tmp.latitude }
							</td>
							<td>
								${tmp.loctime }
							</td>
							<td>
								${tmp.room }
							</td>
							<td>
								${tmp.lession }
							</td>
					
						
							<td>
									<a target="Conframe"
										href="${pageContext.request.contextPath}/course_delloc.action?location.id=${tmp.id }">删除
									</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			</c:if>
	</body>
</html>
