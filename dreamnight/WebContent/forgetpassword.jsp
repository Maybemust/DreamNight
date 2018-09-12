<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script src="js/jquery.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>forget password</title>
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
	<h2>密保问题：</h2>
		<p>
			<form action="toForgetPassword" method="post">
				<div style="font-size: 20px;">
				<b>${security}</b>	
				</div><br>
<div>答 案：</div>
<input type="text" name="answer" style="width: 300px;height: 20px">
	<input type="hidden" name="account" value="${account}">	
				<br>
				<br>
				<input type="submit" value="下一步" style="align-content:center;background-color:#666666;color: aliceblue ;width: 300px; height: 30px;border-radius: 8px;font-size: 20px">
		</form>
		<br>
</body>
</html>
<script>
				var urlb = location.search;
				var reg = new RegExp("(^|&)"+ "account" +"=([^&]*)(&|$)");
			    var r = window.location.search.substr(1).match(reg);
			    var str=unescape(r[2]);</script>
