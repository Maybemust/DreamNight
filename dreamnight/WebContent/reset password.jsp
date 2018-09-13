<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>resetPassword</title>
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
		height:250px;
		width:250px;
	}	
		</style>
	</head>
<body style="background-color:#36465D;" background="./images/stars.jpg">
	<br>
	<br>
	<br>
	<br>
	<h1></h1>
	<p>
	<div class="blocks" style="opacity: 0.77">
	<h2>重置密码</h2>
		<p>
			<form action="ToResetPassword" method="post">
					请您输入新的密码:
				<br>
					<input type="password" name="password" style="width: 99%;height: 20px">
				    
				<br>
				<script>
				var urlb = location.search;
				var reg = new RegExp("(^|&)"+ "account" +"=([^&]*)(&|$)");
			    var r = window.location.search.substr(1).match(reg);
			    var str=unescape(r[2]);</script>
<br>
 请再次输入:<br>
<input type="password" name="password2" style="width: 99%;height: 20px">
<input type="hidden" name="account" value="${account}">
<script>alert(request.getAttribute(account))</script>
				<br>
				<br>
				<input type="submit" value="提 交" style="align-content:center;
				background-color:#666666;color: aliceblue ;width:99%; height: 30px;border-radius: 8px;font-size: 20px">
		</form>
		<br>
		</p>
	</div>
	</p>
		
</body>
</html>







