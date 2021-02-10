<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="common/Styles/base.css" />
		<link rel="stylesheet" type="text/css"
			href="common/Styles/admin-all.css" />
		<link rel="stylesheet" type="text/css"
			href="common/Styles/bootstrap.min.css" />
		<script type="text/javascript" src="common/Scripts/jquery-1.7.2.js"></script>
		<script type="text/javascript"
			src="common/Scripts/jquery.spritely-0.6.js"></script>
		<script type="text/javascript" src="common/Scripts/chur.min.js"></script>
		<link rel="stylesheet" type="text/css" href="common/Styles/login.css" />
		<script type="text/javascript">
  		function flushCode(){
  			document.getElementById("codeimg").src = "imageServlet?random=" + Math.random();
  		}
  		
  		function check() {
  			var name = document.form1.username.value;
			var password = document.form1.password.value;
			var tel = document.form1.tel.value;
			var email = document.form1.email.value;
			var reg_tel = /\D/;
	 		if (name == "") {
				alert("用户名不能为空");
				document.form1.username.focus();
				return false;
			}
			if (password == "") {
				alert("密码不能为空");
				document.form1.password.focus();
				return false;
			}
			if (tel == "") {
				alert("电话不能为空");
				document.form1.tel.focus();
				return false;
			}
			if (reg_tel.test(tel) || tel.length != 11) {
				alert("电话号码格式错误 ");
				document.form1.tel.value = "";
				document.form1.tel.focus();
				return false;
			}
		
			if (email == "") {
				alert("email不能为空");
				document.form1.email.focus();
				return false;
			}
			if (email.indexOf("@", 0) == -1) {
				alert("email格式不正确");
				document.form1.email.value = "";
				document.form1.email.focus();
				return false;
			}
			return true;
		}

		</script>
	</head>
	<body>
		<div id="clouds" class="stage"></div>
		<div class="loginmain">
		</div>
		<form id="form1" name="form1" action="user/register.action" method="post" OnSubmit="return check()">
			<input name="util.t" type="hidden" value="user" />
			<div class="row-fluid">
				<h1>
					云存储系统-注册界面
				</h1>
				<p>
					<label>
						帐&nbsp;&nbsp;&nbsp;&nbsp;号：
						<input name="user.username" type="text" id="username" /><font color=red><s:property value="message" /> </font>
					</label>
				</p>
				<p>
					<label>
						密&nbsp;&nbsp;&nbsp;&nbsp;码：
						<input name="user.password" type="password" id="password" />
					</label>
				</p>
				<p>
					<label>
						姓名：
						<input name="user.xm" id="xm" type="text"  />
					</label>
				</p>

				<p>
					<label>
						电&nbsp;&nbsp;&nbsp;&nbsp;话：
						<input name="user.phone" type="text" id="tel"  />
					</label>
				</p>

				<p>
					<label>
						邮&nbsp;&nbsp;&nbsp;&nbsp;箱：
						<input name="user.email" type="text"  id="email" />
					</label>
				</p>
					<p>
					<label>
						Q&nbsp;&nbsp;&nbsp;&nbsp;Q：
						<input name="user.qq" type="text"  id="qq" />
					</label>
				</p>

				<hr />
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="submit" value=" 同 意  "
					class="btn btn-primary btn-large login" id="teds" />
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset" value=" 取 消 " class="btn btn-large" />
			</div>

		</form>
	</body>
</html>