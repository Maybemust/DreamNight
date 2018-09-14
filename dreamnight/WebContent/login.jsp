<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>log in</title>
</head>
<head>
	<style>
	    body{
		background-image: url(images/stars.jpg);
		background-color: #36465D;
		background-attachment: fixed;
		background-repeat: no-repeat;
		background-size: cover;
		width:auto;
	}
		.blocks{
		background-color: rgba(255,255,255,0.74);
		border-radius: 8px;
		padding-left: 3%;
		padding-right: 3%;
		padding-top: 2%;
		padding-bottom: 2%;
		position:relative;
		margin:auto;
		height: 370px;
		width:250px;
	}	
		</style>
		
	</head>
	<body>
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
					<input type="text" name="account" style="width: 99%;height: 20px">
				<br>
				<br>
				密 码:<br>
				<input type="password" name="password" style="width: 99%;height: 20px">
				<br>
				<br>
				<a href="./confirmPassword.jsp">忘记密码?</a>
				<hr/>
				<input type="submit" value="登  录" style="align-content:center;background-color:#666666;color: aliceblue ;width: 99%; height: 30px;border-radius: 8px;font-size: 20px">
		</form>
		<br>
		<p style="text-align: right">没有账号?
		<br>
		<a href="./register.jsp">点击这里注册!</a>
			</p>
</body>
</html>



