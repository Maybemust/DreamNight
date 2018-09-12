<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<style>
	.mydivcolor{
		background-color: rgba(255,255,255,0.74);
		border-radius: 8px;
		padding-left: 40px;
		padding-top: 20px;
		position: absolute;
		left: 44%;
		top: 20%;
		height: 600px;
		width: 300px;
	}
	.myinputtext{
		border-radius: 3px;
		border: none;
		height: 25px;
		width: 250px;
	}
	.myh{
		line-height: 1px;
	}
	.myp1{
		color:#555555;
		line-height: 1px;
		font-size: 13px;
		font-weight: bold;
	}
	.myp2{
		color:#232323;
		line-height: 1px;
		font-size: 17px;
		font-weight: bold;
	}
	.mylabel{
		color: #1D1D1D;
		font-size: 10px;
		font-weight: bold;
		position:relative;
		top:-2.5px;
	}
	.myhr{
		position:relative;
		left: -40px;
		width: 337.5px;
	}
	.mysubmit{
		background-color:#2E0571;
		color:#FFFFFF;
		border-radius: 6px;
		height: 40px;
		width: 250px;
		border: none;
		font-size: 18px;
		font-weight: bold;
		position:relative;
		top: 10px;
	}
	body{
		background-image: url(./images/stars.jpg);
		background-attachment: fixed;
		background-repeat: no-repeat;
		background-size: cover;
	}
</style>
</head>
 
<script>
		function addCheck1(){
			var account=document.getElementById("account").value;
			var nikename=document.getElementById("nikename").value;
			var password=document.getElementById("password").value;
			var passwordagain=document.getElementById("passwordagain").value;
			var security=document.getElementById("security").value;
			var answer=document.getElementById("answer").value;
			if(account==""){
				alert("用户名不能为空!");
				document.getElementById("account").focus();  
				return false;
                }
			if(nikename==""){
				alert("昵称不能为空!");
				document.getElementById("nikename").focus();  
				return false;
                }
			if(password==""){
				alert("密码不能为空!");
				 document.getElementById("password").focus();
				 return false;
				 }
			if(password != passwordagain){
				alert("两次输入密码不相同!");
				 document.getElementById("passwordagain").focus();
				 return false;
				 }
			if(security == ""){
				alert("密保问题不能为空!");
				 document.getElementById("security").focus();
				 return false;
				 }
			if(answer == ""){
				alert("密保答案不能为空!");
				 document.getElementById("answer").focus();
				 return false;
				 }
			
			
			document.getElementById("alink").href =urla;
		}
	
	    
	</script>

<body>

<div class="mydivcolor">
<form action = "addUserServlet" method = "post">
	  <h2 class="myh">注册</h2>
	  <p class="myp1">创建一个账号</p>
	  <br>
	 <p class="myp2">账号：</p>
	 <p>${user}</p>
	    <input class="myinputtext" type="text" name="account" required>
	<br>
	<p class="myp2">昵称：</p>
	<input class="myinputtext" type="text" name="nikename" required>
	<br>
	<p class="myp2">密码：</p>
	<input class="myinputtext" type="password" maxlength="14" name="password" required>
	<br>
	<p class="myp2">请再次输入密码:</p>
	<input class="myinputtext" type="password" maxlength="14" name="passwordagain" required>
	<br>
	<p class="myp2">请设置一个密保问题:</p>
	<input class="myinputtext" type="text" name="security" required>
	<br>
	<p class="myp2">密保答案:</p>
	<input class="myinputtext" type="text" name="answer" required>
	   
	
	<br>
	<br>
	<hr class="myhr">
	<a href=" "><input id="alink" class="mysubmit" type="submit" name="next" value="注册" onclick="addCheck1()" onmouseover="this.style.backgroundColor='#5609D4';" onmouseout="this.style.backgroundColor='#2E0571';"></a>
	
</form>
</div>
</body>
</html>