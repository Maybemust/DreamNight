<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script src="js/jquery.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>首页</title>

<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/config1.css" rel="stylesheet" type="tex	t/css">
<style>
	body
	{
		background-color:#36465D;
	}
	table:hover
	{
		background-color:#36465D;
	}

</style>

</head>
<body onload="resize();" onresize="resize();">
<script src="js/JQuery.min.js"></script>
<script>
function resize() {
var width = $(document).width() ; //获取浏览器宽度
$("table").width(width) ; //设置table宽度
}
</script>


<nav class="navbar navbar-default" style="background-color: #36465D">
  <div class="container-fluid"> 
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
      <a class="navbar-brand" href="#" style="width:100px;color:#FACD0B;padding-left: 20px;">梦夜</a></div>
	  
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="defaultNavbar1" style="background-color: #36465D">
      <ul class="nav navbar-nav">
		  <img src="./images/logo.JPG" style="padding-top:2px;padding-left: 5px; height:50px">
        <span class="sr-only"></span>
      </ul>
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" style="background-color:#273346;width:300px;" id ="searchTextValue"  class="form-control">
        </div>
        <button type="submit" class="btn btn-default" onclick="getValueAndSkip()" style = "font-size:18px" >搜 索</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#" style="font-weight:bold; color: #FECD00">登  陆</a></li>
		<li><a href="#" style="color:#C8C8C8" >注  册</a></li>
      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid --> 
</nav>
<%!String [] str1; %>
	<script>
	function getValueAndSkip(){
		        var input=document.getElementById("searchTextValue").value;//通过id获取文本框对象
				var urlb="searchThread?threadName="+encodeURI(encodeURI(input.toString()))+"&start=0";
				//window.location.href=urlb;
				window.open(urlb,"_blank");
		     }
		</script>
<div class="container-fluid">
	<h1 align="center" style="color: #F9CE08;font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, 'sans-serif'">欢 迎 来 到 梦 夜 论 坛！</h1>
	<p align="center" style="color: #F9CE08;font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, 'sans-serif'">请 在 此 畅 所 欲 言</p>
	<p></p>
  <hr> 
</div>
<div class="container">

	  <div class="row">
    <div class="text-center col-md-9" >
	<table style="width: 500px; margin: 44px auto"
	class="table table-striped table-bordered table-condensed"
	align='center' border='1' cellspacing='0' >
	<tr>
	</tr>
		<c:forEach items="${threadsZD}" var="thread" varStatus="st">
		<tr>
		<td>      
		<div class="well" ><strong> 
		<img src = "./images/person2.JPG" alt="user_pic" style= "float: left; height:40px; width:60px;padding-left: 20px">
		  <p style= "float:left;padding-left: 20px;padding-top:10px">:</p>
		  <a href="threadDetails?threadID=${thread.getThreadID()}&start=0&ifclick=1" style = "float:left;padding-left: 5px;padding-top:1px;font-size:17px">
		  ${thread.getThreadName()}</a></strong>
		  <br>
		  <br>
		 	<div>

</div>
		 <div class="text-center col-md-1" >
		 <a style= "float:center;">${thread.getFromAccount()}</a>
		 </div>
		  
		  <hr class="hr1">
		  <a style = "float:center;padding-left:5px;font-size: 20px;color:#3A3A3A">${thread.getText()}</a>
		  <ul class="nav navbar-nav navbar-right">
			  <li><a href="#" style="font-weight:bold;color:red">置顶</a></li>
        		<li><a href="#" style="font-weight:bold;">点击数目：${thread.getNumReading()}</a></li>
				<li><a href="#">评论数目：${thread.getNumCommit()}</a></li>
      		</ul>
		  <br>
		  </div>
		  </td>
		</tr>


<div>
</div>
</c:forEach>

		<c:forEach items="${threads}" var="thread" varStatus="st">
		<tr>
		<td>      
		<div class="well" ><strong> 
		<img src = "./images/person2.JPG" alt="user_pic" style= "float: left; height:40px; width:60px;padding-left: 20px">
		  <p style= "float:left;padding-left: 20px;padding-top:10px">:</p>
		  <a href="threadDetails?threadID=${thread.getThreadID()}&start=0&ifclick=1" style = "float:left;padding-left: 5px;padding-top:1px;font-size:17px">
		  ${thread.getThreadName()}</a></strong>
		  <br>
		  <br>
		 	<div>

</div>
		 <div class="text-center col-md-1" >
		 <a style= "float:center;">${thread.getFromAccount()}</a>
		 </div>
		  
		  <hr class="hr1">
		  <a style = "float:center;padding-left:5px;font-size: 20px;color:#3A3A3A">${thread.getText()}</a>
		  <ul class="nav navbar-nav navbar-right">
        		<li><a href="#" style="font-weight:bold;">点击数目：${thread.getNumReading()}</a></li>
				<li><a href="#">评论数目：${thread.getNumCommit()}</a></li>
      		</ul>
		  <br>
		  </div>
		  </td>
		</tr>


<div>
</div>
</c:forEach>

</table>	
    </div>
	<div class="col-md-3 " >
		<div class="panel panel-default">
  <div class="panel-heading">
	  <a href="displayThread"><img src="./images/person4.jpg" style="padding-left: 15px;padding-top:5px" height="200px"></a>
	  <br>
    <h3 class="panel-title" align="center">用户名:${USER.getAccount()}</h3>
  </div>
  <div class="panel-body">
        <a href="#" style="font-weight:bold; color:#BCBCBC; float:left;padding-left: 10px">个性签名：${USER.getPersonality()}</a>
		<a href="#" style="color:#C8C8C8;padding-right: 10px" ></a>
  </div>
 
</div>
</div>
		 <div class="col-md-3 " >
		 <div class="panel panel-default">
		 <h3 class="panel-title" align="center"><button onclick="addThread()" style="float:center;width:260px;">发表</button></h3>
		 <script>
		 function addThread(){
			 var urla = "addThread";
			 window.open(urla);
		 }
		 </script>
		 </div>
		 </div>
		  </div>
		  
	</div>


	<br>
	<br>
	<br>
	<div class="row">
    <div class="text-center col-md-6 col-md-offset-3">
      <ul class="pagination">
    <li><a href="#">&laquo;</a></li>
		<li><a href="firstPage?start=0">首 页</a></li>
		<li><a href="firstPage?start=${pre}">上一页</a></li>
		<li><a href="firstPage?start=${next}">下一页</a></li>
		<li><a href="firstPage?start=${last}">末 页</a></li>
    <li><a href="#">&raquo;</a></li>
</ul>
    </div>
  </div>
	</div>
<script src="js/jquery-1.11.3.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="js/bootstrap.js"></script>

	<script>
function myFunction1()
{
alert("Hello World!");
}
</script>


</body>
</html>

