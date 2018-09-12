<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>重置密码</title>
</head>
<head>
	<style>
		.blocks{  
			width:300px;
			height: 270px;
			background-color: aliceblue;
            margin:500px;
			margin-top: 20px;
			margin-bottom: auto;
			padding-top: 20px;
			padding-bottom: 0px;
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
	<h1></h1>
	<p>
	<div class="blocks" style="opacity: 0.77">
	<h2>重置密码</h2>
		<p>
			<form action="ToResetPassword" method="post">
					请您输入新的密码:
				<br>
					<input type="password" name="password" style="width: 300px;height: 20px">
				    
				<br>
				<script>
				var urlb = location.search;
				var reg = new RegExp("(^|&)"+ "account" +"=([^&]*)(&|$)");
			    var r = window.location.search.substr(1).match(reg);
			    var str=unescape(r[2]);</script>
<br>
 请再次输入:<br>
<input type="password" name="password2" style="width: 300px;height: 20px">
<input type="hidden" name="account" value="${account}">
<script>alert(request.getAttribute(account))</script>
				<br>
				<br>
				<input type="submit" value="提 交" style="align-content:center;background-color:#666666;color: aliceblue ;width: 300px; height: 30px;border-radius: 8px;font-size: 20px">
		</form>
		<br>
		</p>
	</div>
	</p>
		
</body>
</html>







