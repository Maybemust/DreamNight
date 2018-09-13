<%@ page language="java" contentType="text/html; charset=utf-8 " isELIgnored="false"
    pageEncoding="utf-8"%>
<!DOCTYPE">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Adiministrator Interface</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="js/jquery.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
<link href="./css/AI.css" rel="stylesheet" type="text/css">

</head>

<body>
	<div>
		<a href="#" style="color:white;float:right;position:absolute;right:2%">返回主页</a>
		<hr style="position:relative;top:20px"/>
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
							<a href = "setTop?id=${thread.threadID }&key=1&op=置顶帖子">置顶</a>
							</c:if>
							<c:if test = "${thread.topLabel == 1}">
							<a href = "setTop?id=${thread.threadID }&key=0&op=取消置顶帖子">取消置顶</a>
							</c:if>
						</td>
						<td>
						<a href = "editThread?id=${thread.threadID }&account=${account}">编辑</a>
						</td>
						<td>
						<a href = "deleteThread?id=${thread.threadID }&op=删除主题帖操作">删除</a>
						</td>
					</tr>
				</c:forEach>
				</table>
				
				<nav>
					<ul class="pager">
						<li><a href="?start=0&op=点击主题管理列表首页">首 页</a></li>
						<li><a href="?start=${pre}&op=点击主题管理列表上一页">上一页</a></li>
						<li><a href="?start=${next}&op=点击主题管理列表下一页">下一页</a></li>
						<li><a href="?start=${last}&op=点击主题管理列表末页">末 页</a></li>
					</ul>
				</nav>
			</div>

			<div class="user">
				<h2 style="font-weight: bold;font-size: 250%;">用户管理</h2>
				
				<c:if test="${account.authority > 2}">
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
							<a href = "setAuthority?account=${user.account}&key=1&op=加锁操作">加锁</a>
							</c:if>
							<c:if test = "${user.authority == 1}">
							<a href = "setAuthority?account=${user.account}&key=0&op=解锁操作">解锁</a>
							</c:if>
						</td>
						<td>
							<c:if test = "${user.authority <= 1}">
							<a href = "setAuthority?account=${user.account}&key=2&op=设为管理员操作">设为管理员</a>
							</c:if>
							<c:if test = "${user.authority > 1}">
							<a href = "setAuthority?account=${user.account}&key=0&op=取消管理员操作">取消管理员</a>
							</c:if>
						</td>
					</tr>
				</c:forEach>
				</table>
				</c:if>
				
				<c:if test="${account.authority == 2}">
				<table border = "1">
					<tr style="background-color:#7E94B5;font-weight:bold;">
						<td style="width: 800px;">用户名</td>
						<td style="width:200px;">加锁</td>
					</tr>
				<c:forEach items="${users}" var="user" varStatus="st">
					<tr>
						<td>${user.account}</td>
						<td>
							<c:if test = "${user.authority == 0}">
							<a href = "setAuthority?account=${user.account}&key=1&op=加锁操作">加锁</a>
							</c:if>
							<c:if test = "${user.authority == 1}">
							<a href = "setAuthority?account=${user.account}&key=0&op=解锁操作">解锁</a>
							</c:if>
						</td>
					</tr>
				</c:forEach>
				</table>
				</c:if>
				
				<nav>
					<ul class="pager">
						<li><a href="?ustart=0&op=点击用户管理列表首页">首 页</a></li>
						<li><a href="?ustart=${upre}&op=点击用户管理列表上一页">上一页</a></li>
						<li><a href="?ustart=${unext}&op=点击用户管理列表下一页">下一页</a></li>
						<li><a href="?ustart=${ulast}&op=点击用户管理列表末页">末 页</a></li>
					</ul>
				</nav>
			</div>
		</div>
		
		<div class="subdiv_allinline account">
			<img src="./images/admin.png" style = "height:100px; width:100px; position:absolute; right:24%; top:5%;" alt="头像">
			<div style = "text-align:left; position:absolute; left: 10%;top:35%;">
				<p>昵称：${account.nikeName}<p>
				<p>账号：${account.account}</p>
				
				<c:if test = "${account.authority > 2}">
				<p>权限：超级管理员</p>
				</c:if>
				<c:if test = "${account.authority == 2}">
				<p>权限：管理员</p>
				</c:if>
			</div>
		</div>

	
	</div>
</body>
</html>