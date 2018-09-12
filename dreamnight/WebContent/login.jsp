<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>log in</title>
</head>
<head>
	<style>
		.blocks{  
			width:300px;
			height: 300px;
			background-color: aliceblue;
            margin:500px;
			margin-top: 20px;
			margin-bottom: auto;
			padding-top: 10px;
			padding-bottom: 50px;
			padding-left: 30px;
			padding-right: 30px;
            border-radius:8px;
		}
		</style>
	</head>
	<body style="background-color:#36465D;" background="./images/stars.jpg">
	<br>
	<br>
	<br>
	<br>
	<p>
	<div class="blocks" style="opacity: 0.77">
	<h2>密码登录</h2>
		<p>
			<form action="logindata" id="form1" method="post">
					用户名:
				<br>
					<input type="text" name="username" style="width: 300px;height: 20px">
				<br>
				<br>
				密 码:<br>
				<input type="password" name="password" style="width: 300px;height: 20px">
				<br>
				<br>
				<a href="./confirmPassword.jsp">忘记密码?</a>
				<hr/>
				<input type="submit" value="登  录" style="align-content:center;background-color:#666666;color: aliceblue ;width: 300px; height: 30px;border-radius: 8px;font-size: 20px">
		</form>
		<br>
		<div style="text-align: right">没有账号?
		<br>
		<a href="./register.jsp">点击这里注册!</a>
			</div>
</body>
</html>



