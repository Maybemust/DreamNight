<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="js/jquery.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<script>
	$(function() {
		$("a").addClass("btn btn-default btn-xs");

	});
	
</script>
<style>
body {
	background-image: url(./images/main-bg.jpg);
	background-size: 100%;
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>个人中心</title>
</head>

<body>
	<a id="top"></a>
	<div id="container" style="width: 1500px">
		<div id="header"
			style="background-color: #36465D; height: 20px; opacity: 0;"></div>

		<div id="content1" style="height: 300px; width: 200px; float: left;">
			<p
				style="margin-bottom: 0; font-size: 30px; text-indent: 50px; color: #FEFBFB;">个人中心</p>
			<img src="${User.head}" alt="photo" width="100px" height="100px"
				style="margin-top: 50px; margin-left: 80px">
		</div>

		<div id="content2" style="height: 300px; width: 800px; float: left">
			<p style="margin-top: 120px; margin-left: 50px; color: #FFFFFF">
				${User.nikeName} <br> <br> <br> <br>
				${User.personality}
			</p>
		</div>
		<div id="content3" style="height: 300px; width: 500px; float: left;">
			<a href="final.html"><img src="./images/button.png" alt="button"
				style="float: right; margin-right: 10px;"></a>
		</div>
	</div>
	<div id="container2" style="width: 1500px">
		<div style="width: 500px; height: 100px; float: left;">
			<a href="主贴页.html"><img src="./images/mythoembutton .png"
				alt="我的主题帖子" style="float: right; margin-top: 50px;"></a>
		</div>
		<div style="width: 500px; height: 100px; float: left;">
			<img src="./images/myfollow.png" alt="关于我的跟贴"
				style="float: left; margin-top: 50px;">
		</div>
	</div>
	<div
		style="background: #FFFFFF; width: 800px; height: 1000px; float: left; margin-left: 350px; margin-top: 0px;">
		<table style="width: 600px; margin-top: 100px;" align="center" border="1" >
			<c:forEach items="${Commits}" var="Commit" varStatus="st">
				<tr style="height: 50px">
					<td colspan="2" align="center">${Commit.text}</td>
				</tr>
				<tr style="height: 30px">
					<td style="float: left">主贴ID${Commit.threadID}</td>
					<td style="float: right">跟帖账号${Commit.fromAccount}</td>
					<a href="deleteCommit?id=${Commit.commitID}">删除</a>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
