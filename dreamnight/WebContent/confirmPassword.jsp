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
			width:250px;
			height: 200px;
			background-color: aliceblue;
            margin:500px;
			margin-top: 50px;
			margin-bottom: auto;
			padding-top: 35px;
			padding-bottom: 50px;
			padding-left: 30px;
			padding-right: 30px;
            border-radius:8px;
			align-content: center;
		}
		</style>
	</head>
	<body style="background-color:#36465D;" background="./images/stars.jpg">
	<br>
	<br>
	<h1></h1>
	<p>
	<div class="blocks" style="opacity: 0.77">
	<h2 style="text-align: center">确认账号</h2>
		<p>
		<br>	
		<div>
			<form action="ToConfirmPassword" id="form2" method="post">
					请输入您的账号:
				<br>
					<input type="text" name="username" style="width: 250px;height: 20px">
				<br>
				<br>
				<br>
				<input type="submit" value="下一页" style="align-content:center;background-color:#666666;color: aliceblue ;width: 250px; height: 30px;border-radius: 8px;font-size: 20px">
		</form>
			</div>
</body>
</html>
