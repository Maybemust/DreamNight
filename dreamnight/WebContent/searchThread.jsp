<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="viewport" content="width=device-width, initial-scale=1">
<title>搜索结果</title>

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
		background-color:white;
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
<script src="js/JQuery.min.js"></script> //别忘了引入JQeury的js文件
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
          <input type="text" style="background-color:#273346;width:300px;" id ="searchTextValue"  class="form-control">
        </div>
        <button type="submit" class="btn btn-default" onclick="getValueAndSkip()" style = "font-size:18px" >搜 索</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
              <li><a href="firstPage?start=0" style="font-weight:bold; color:#FECD10">返回首页</a></li>
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
				var urlb="searchThread?threadName="+input.toString();
				window.open(urlb);

		     }
		</script>
		
<div class="container-fluid">
	<h3 align="left" style="color: #F9CE08;font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, 'sans-serif'">下方是您的搜索结果:</h3>
	<p></p>
  <hr> 
</div>


<div class="container">



	 <button type="button" class="btn btn-info btn-sm" onclick="getnoApplicationData()">关键词:${searchName}</button>
  <div class="row">S
    <div class="text-center col-md-12 col-xs-12 " >	
	<table style=" margin: 44px auto"
	class="table table-striped table-bordered table-hover  table-condensed"
	align='center' border='1' cellspacing='0' >
	

	<c:forEach items="${threads}" var="thread" varStatus="st">
		<tr>
		<td>      
		<div class="well" ><strong> 
		<img src = "./images/person2.JPG" alt="user_pic" style= "float: left; height:40px; width:60px;padding-left: 20px">
		  <p style= "float:left;padding-left: 20px;padding-top:10px">:</p>
		  <a href="#" onclick="" style = "float:left;padding-left: 5px;padding-top:1px;font-size:17px">
		  ${thread.threadName}</a></strong>
		  <br>
		  <br>
		 	
		 <div class="text-center col-md-1" >
		 <a style= "float:center;">${thread.fromAccount}</a>
		 </div>
		  
		  <hr class="hr1">
		  <a style = "float:center;padding-left:5px;font-size: 20px;color:#3A3A3A">${thread.text}</a>
		  <ul class="nav navbar-nav navbar-right">
			  <!--  li><a href="#" style="font-weight:bold;color:red">置顶</a></li>-->
        		<li><a href="#" style="font-weight:bold;">点击数目：${thread.numReading}</a></li>
				<li><a href="#">评论数目：${thread.numCommit}</a></li>
      		</ul>
		  <br>
		  </div>
		  </td>
		</tr>

	</c:forEach>
	
</table>
		
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
    		<li><a href="searchThread?threadName=${searchName}&start=0">首 页</a></li>
		<li><a href="searchThread?threadName=${searchName}&start=${pre}">上一页</a></li>
		<li><a href="searchThread?threadName=${searchName}&start=${next}">下一页</a></li>
		<li><a href="searchThread?threadName=${searchName}&start=${last}">末 页</a></li>
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
