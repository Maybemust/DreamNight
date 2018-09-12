<%@ page language="java" contentType="text/html; charset=utf-8 " isELIgnored="false"
    pageEncoding="utf-8"%>
<!DOCTYPE">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Adiministrator Interface</title>
<link href="./css/AI.css" rel="stylesheet" type="text/css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>

<body>
	<div>
		<img src="./images/logo.jfif" style="position:relative;top:7px;left:3px" alt="logo" width="15" height="16">
		<input type="text" placeholder="search" style="position:relative;top:3px;left:5px">
		<img src="./images/search_50px.png" alt="search" width="17" height="17" style="position:relative;top:6px;right:15px">
		<hr />
		<nav>
			<a style="color: antiquewhite" href="#">分区1</a> |
			<a style="color: antiquewhite" href="#">分区2</a> |
		</nav>
	</div>
	<div class="div_allinline">
	
		<div class = "subdiv_allinline">
			<div class="theme">
				<h2 style="font-weight: bold;font-size: 250%;">主题管理</h2>
				<table border = "1">
					<tr style="background-color:#7E94B5;font-weight:bold;">
						<td style="width:700px">主题贴</td>
						<td style="width:100px;">置顶</td>
						<td style="width:100px;">编辑</td>
						<td style="width:100px;">删除</td>
					</tr>

				<c:forEach items="${threads}" var="thread" varStatus="st">
					<tr>
						<td>${thread.threadName}</td>
						<td>
							<c:if test = "${thread.topLabel == 0}">
							<a href = "setTop?id=${thread.threadID }&key=1">置顶</a>
							</c:if>
							<c:if test = "${thread.topLabel == 1}">
							<a href = "setTop?id=${thread.threadID }&key=0">取消置顶</a>
							</c:if>
						</td>
						<td>
						<a href = "editThread?id=${thread.threadID }&account=${account}">编辑</a>
						</td>
						<td>
						<a href = "deleteThread?id=${thread.threadID }">删除</a>
						</td>
					</tr>
				</c:forEach>

				</table>
			</div>

			<div class="user">
				<h2 style="font-weight: bold;font-size: 250%;">用户管理</h2>
				<table border = "1">
					<tr style="background-color:#7E94B5;font-weight:bold;">
						<td style="width: 800px;">用户名</td>
						<td style="width:100px;">加锁</td>
						<td style="width:100px;">权限</td>
					</tr>
				<c:forEach items="${users}" var="user" varStatus="st">
					<tr>
						<td>${user.account}</td>
						<td>
							<c:if test = "${user.authority == 0}">
							<a href = "setAuthority?account=${user.account}&key=1">加锁</a>
							</c:if>
							<c:if test = "${user.authority == 1}">
							<a href = "setAuthority?account=${user.account}&key=0">解锁</a>
							</c:if>
						</td>
						<td>
							<c:if test = "${user.authority <= 1}">
							<a href = "setAuthority?account=${user.account}&key=2">设为管理员</a>
							</c:if>
							<c:if test = "${user.authority > 1}">
							<a href = "setAuthority?account=${user.account}&key=0">取消管理员</a>
							</c:if>
						</td>
					</tr>
				</c:forEach>
				</table>
			</div>
		</div>
		
		<div class="subdiv_allinline account">
			<a href="#"><img src="images/logo.jfif" style = "height:100px;width:100px;position:relative; top:20px;;" alt="头像"></a>
			<div style = "text-align:center; position:relative; top: 10%">
				<a href="#">${account.nikeName}</a>
				<p>${account.account}</p>
				<p>${account.authority}</p>
			</div>
			
		</div>

	
	</div>
</body>
</html>