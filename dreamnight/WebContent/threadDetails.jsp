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
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
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
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed"  data-toggle="collapse" data-target="#defaultNavbar1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
      <a class="navbar-brand" href="#" style="width:100px;color:#FACD0B;padding-left: 20px;">梦夜</a></div>
	  
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="defaultNavbar1" style="background-color: #36465D">
      <ul class="nav navbar-nav">
		  <img src="./images/logo.JPG" style="padding-top:2px;padding-left: 5px; height:50px">
        <span class="sr-only">(current)</span>
      </ul>
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" style="background-color:#273346;width:300px;" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default" ><a href= "./搜索结果.html" style = "font-size:18px">搜 索</a></button>
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
      <script>
      var urlb = location.search;
				var reg = new RegExp("(^|&)"+ "threadID" +"=([^&]*)(&|$)");
			    var r = window.location.search.substr(1).match(reg);
			    var str=unescape(r[2]);
		</script>
      
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

<% 
String datetime=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()); 
%> 
<form action = "addCommit" method = "post">
<input type="text" name="threadID" value="${thread.threadID}"/>
<input type="text" name="fromAccount" value="1"/>

<textarea name="textfield" cols="120" rows="6" id="textfield"></textarea><br><br>
		  <button class="alert-success"  type="submit" >发表</button>
</form>
		  <br>
			<script>
			function deal2(){				
				var tid = new RegExp("(^|&)"+ "threadID" +"=([^&]*)(&|$)");
			  	var t = window.location.search.substr(1).match(tid);
			  	var str=unescape(t[2]);//获得threadID

				var fromAccount = 1; 
				
				/***********************获取当前时间********************/
			    var date = new Date();
			    var seperator1 = "-";
			    var seperator2 = ":";
			    var month = date.getMonth() + 1;
			    var strDate = date.getDate();
			    if (month >= 1 && month <= 9) {
			        month = "0" + month;
			    }
			    if (strDate >= 0 && strDate <= 9) {
			        strDate = "0" + strDate;
			    }
			    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
			            + " " + date.getHours() + seperator2 + date.getMinutes()
			            + seperator2 + date.getSeconds();
			    
				/***********************获取当前时间********************/
				alert(currentdate.toString());
				//var addText=document.getElementById("textfield").value;*/
			    var text=document.getElementById("textfield").value;
				
				alert(text);
				
				var urla="addCommit?threadId="+str+"&fromAccount="
				+fromAccount.toString()+ "&postTime="+currentdate.toString()
				+"&fromAccount="+fromAccount.toString();
				alert(urla);

				document.getElementById("alink").href =urla;

				
			}
			
	
			</script>
		  <br>
		  <br>

		  </strong></div>
    </div>
    

    
  </div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="row">
    <div class="text-center col-md-6 col-md-offset-3">
      <ul class="pagination">
    <li><a href="#">&laquo;</a></li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li><a href="#">&raquo;</a></li>
</ul>
    </div>
  </div>
	</div>
<script src="file:///G|/Pages/js/jquery-1.11.3.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="file:///G|/Pages/js/bootstrap.js"></script>
</body>
</html>
