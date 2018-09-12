<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%> 
<%@ page import="java.text.*"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>帖子详情</title>

<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/config1.css" rel="stylesheet" type="text/css">
<style>
	body
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
      <button type="button" class="navbar-toggle collapsed"  data-toggle="collapse" data-target="#defaultNavbar1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
      <a class="navbar-brand" href="#" style="width:100px;color:#FACD0B;padding-left: 20px;">梦夜</a></div>
	     <div class="collapse navbar-collapse" id="defaultNavbar1" style="background-color: #36465D">
      <ul class="nav navbar-nav">
		  <img src="./images/logo.JPG" style="padding-top:2px;padding-left: 5px; height:50px">
        <span class="sr-only"></span>
      </ul>
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" style="background-color:#273346;width:300px;" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default" >搜 索</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#" style="font-weight:bold; color:#BCBCBC">登陆</a></li>
		<li><a href="#" style="color:#C8C8C8" >注册</a></li>
      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid --> 
</nav>
<div class="container-fluid">
	<p align="center" style="color: #FFFFFF">0回复帖，共1页。</p>
  <hr>
</div>
<div class="container">
	  <div class="row">
    <div class="text-center col-md-12" >
      <div class="well" style= "width:700"><strong> 
      
      
		<img src = "./images/头像.jpg" alt="user_pic" style= "float: left; height:60px; width:80px;padding-left: 20px">
	  
		  <p style= "float:left;padding-left: 20px;padding-top:10px">:</p>
		  		 <p  style = "float:left;padding-left:5px;font-size: 20px;color:#3A3A3A">主题</p>
		  <br>
		  <p style = "float:left;padding-left: 5px;padding-top:1px;font-size:17px">
		  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;${thread.threadName}</p>

		  <br>
		  <br>
		  <br>
		  <strong> 
		   <div class="text-center col-md-1" >
		  <a style= "float:center;">${thread.fromAccount}</a>
		 </div></strong>
		 <a style = "float:center;padding-left:5px;font-size: 20px;color:#3A3A3A">${thread.text}</a>
			<ul class="nav navbar-nav navbar-right">
		  <br>
		  <br>
   		  <li><a href="#" style="font-weight:bold">点击数目:${thread.numReading}</a></li>
				<li><a href="#">评论数目:${thread.numCommit}</a></li>
   		</ul>
		  <br>

		  <br>
		  <br>

		  </strong></div>
		
		<table style="margin: 44px auto"
	class="table table-striped table-bordered table-hover  table-condensed"
	align='center' border='1' cellspacing='0' >
	

	<c:forEach items="${commits}" var="commit" varStatus="st">
		<tr>
		<td>      
		<div class="well" >
		<img src = "./images/person2.JPG" alt="user_pic" style= "float: left; height:40px; width:60px;padding-left: 20px">
		  <p style= "float:left;padding-left: 20px;padding-top:10px">:回复</p>
		  <br>
		 	<br>
		 <div class="text-center col-md-1" >
		 <a style= "float:center;">${commit.fromAccount}</a>
		 </div><strong> 
		  <a style = "float:center;padding-left:5px;font-size: 20px;color:#3A3A3A">${commit.text}</a>
		  <ul class="nav navbar-nav navbar-right">
        		<li><a href="#" style="font-weight:bold;">回复时间：${commit.postTime}</a></li>
      		</ul>
		  <br>
		  </div>
		  </td>
		</tr>

	</c:forEach>
	
</table>

		<div class="well" style= "width:700"><strong> 
		
	    <p style= "float:left;padding-left: 20px;padding-top:10px">发表回复:</p>
<br>
<br>
<br>


	</div>
<script src="file:///G|/Pages/js/jquery-1.11.3.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="file:///G|/Pages/js/bootstrap.js"></script>
</body>
</html>
