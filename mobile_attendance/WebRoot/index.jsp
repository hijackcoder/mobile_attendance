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
		<%@ include file="common.jsp"%>
	</head>
	<body>
		<div class="warp">
			<!--ͷ����ʼ-->
			<div class="top_c">
			
				<div class="top-nav">
				
					��ӭ��������Ա��&nbsp;&nbsp;
				 |
					<a href="${pageContext.request.contextPath}/login.jsp">�˳�</a>
					
					
					<br>
					
					<marquee behavior="scroll" scrollamount="1" scrolldelay="0" loop="-1" ><s:text name="lastest"></s:text>��${gonggao.name}(${gonggao.content}) }</marquee>  
				</div>
				
				
			</div>
			
			<!--ͷ������-->

			<!--��߲˵���ʼ-->
			<div class="left_c left">
				<h1>
				����˵�
					
				</h1>
				<div class="acc">
						<div>
							<a class="one">�û�����</a>
							<ul class="kid">
							
								<li>
									<b class="tip"></b><a target="Conframe"
										href="${pageContext.request.contextPath}/user_list.action">�û���Ϣ����</a>
								</li>
							</ul>
						</div>
					
		
			
					
					
							<div>
						<a class="one">�γ���Ϣ����</a>
						<ul class="kid">
							<li>
									<b class="tip"></b><a target="Conframe"
										href="${pageContext.request.contextPath}/course_add.action">��ӿγ�</a>
								</li>
				
							<li>
								<b class="tip"></b><a target="Conframe"
									href="${pageContext.request.contextPath}/course_list.action">�γ̹���</a>
							</li>
							
						</ul>
					</div>
							<div>
						<a class="one">��Ϣ����</a>
						<ul class="kid">
							<li>
									<b class="tip"></b><a target="Conframe"
										href="${pageContext.request.contextPath}/biotech_add.action">�����Ϣ</a>
								</li>
				
							<li>
								<b class="tip"></b><a target="Conframe"
									href="${pageContext.request.contextPath}/biotech_list.action">��Ϣ����</a>
							</li>
							
						</ul>
					</div>
							<div>
						<a class="one">ǩ������</a>
						<ul class="kid">
				
							<li>
								<b class="tip"></b><a target="Conframe"
									href="${pageContext.request.contextPath}/article_list.action">ǩ������</a>
							</li>
							
						</ul>
					</div>
					
					
					
					<%--
					
					
					<div>
						<a class="one">����վ�ƹ���</a>
						<ul class="kid">
				
							<li>
								<b class="tip"></b><a target="Conframe"
									href="${pageContext.request.contextPath}/zhanpai_add.action">��ӹ���վ��</a>
							</li>
							<li>
								<b class="tip"></b><a target="Conframe"
									href="${pageContext.request.contextPath}/zhanpai_list.action">����վ�ƹ���</a>
							</li>
							
						</ul>
					</div>
					--%><div id="datepicker"></div>
				</div>

			</div>
			<!--��߲˵�����-->

			<!--�ұ߿�ܿ�ʼ-->
			<div class="Conframe">
				<iframe name="Conframe" id="Conframe">
				
				</iframe>
			</div>
			<!--�ұ߿�ܽ���-->

			<!--�ײ���ʼ-->
			<div class="bottom_c">
				Copyright &copy; ��Ȩ����
			</div>
			<!--�ײ�����-->
		</div>
	</body>
</html>