<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>ConfirmAccount</title>
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
		height: 280px;
		width:260px;
	}	
		</style>
	</head>
	<body>
	<br>
	<br>
	<h1></h1>
	<div class="blocks" style="opacity: 0.77">
	<h2 style="text-align: center">确认账号</h2>
		<br>	
			<form action="ToConfirmPassword" id="form2" method="post">
					请输入您的账号:
				<br>
					<input type="text" name="username" style="width: 99%;height: 20px">
				<br>
				<br>
				<br>
				<input type="submit" value="下一页" style="align-content:center;background-color:#666666;color: aliceblue ;width:99%; height: 30px;border-radius: 8px;font-size: 20px">
		</form>
			</div>
</body>
</html>
