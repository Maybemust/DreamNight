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
          <input type="text" style="background-color:#273346;width:300px;" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default" ><a href= "./搜索结果.html" style = "font-size:18px">搜 索</a></button>
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
<div class="container-fluid">
	<h3 align="left" style="color: #F9CE08;font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, 'sans-serif'">下方是您的搜索结果:</h3>
	<p></p>
  <hr> 
</div>
<div class="container">
	 <button type="button" class="btn btn-info btn-sm" onclick="getnoApplicationData()">关键词1</button>
      <button type="button" class="btn btn-success btn-sm">关键词2</button>
  <div class="row">
		  
    <div class="text-center col-md-12" >	
	<table style="width: 500px; margin: 44px auto"
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
			  <li><a href="#" style="font-weight:bold;color:red">置顶</a></li>
        		<li><a href="#" style="font-weight:bold;">点击数目：${thread.numReading}</a></li>
				<li><a href="#">评论数目：${thread.numCommit}</a></li>
      		</ul>
		  <br>
		  </div>
		  </td>
		</tr>

	</c:forEach>
	
</table>
		<!--  c:forEach items="${students}" var="student" varStatus="st"-->
		
    </div>
</div>
		  
	</div>

	</div>
  </div>

	<!--
  <div class="row text-center">
    <div class="col-md-6 col-md-offset-3">Click outside the blue container to select this <strong>row</strong>. Columns are always contained within a row. <strong>Rows are indicated by a dashed grey line and rounded corners</strong>. </div>
  </div>
  <hr>
  <div class="row">
    <div class="text-justify col-sm-4"> Click here to select this<strong> column.</strong> Always place your content within a column. Columns are indicated by a dashed blue line. </div>
    <div class="col-sm-4 text-justify"> You can <strong>resize a column</strong> using the handle on the right. Drag it to increase or reduce the number of columns.</div>
    <div class="col-sm-4 text-justify"> You can <strong>offset a column</strong> using the handle on the left. Drag it to increase or reduce the offset. </div>
  </div>
  <hr>

  <div class="row">
    <div class="col-sm-4 text-center">
      <h4>Adding <strong>Buttons</strong></h4>
      <p>Quickly add buttons to your page by using the button component in the insert panel. </p>
      <button type="button" class="btn btn-info btn-sm">Info Button</button>
      <button type="button" class="btn btn-success btn-sm">Success Button</button>
    </div>
    <div class="text-center col-sm-4">
      <h4>Adding <strong>Labels</strong></h4>
      <p>Using the insert panel, add labels to your page by using the label component.</p>
      <span class="label label-warning">Info Label</span><span class="label label-danger">Danger Label</span> </div>
    <div class="text-center col-sm-4">
      <h4>Adding <strong>Glyphicons</strong></h4>
      <p>You can also add glyphicons to your page from within the insert panel.</p>
      <div class="row">
        <div class="col-xs-4"><span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span></div>
        <div class="col-xs-4"><span class="glyphicon glyphicon-home" aria-hidden="true"> </span> </div>
        <div class="col-xs-4"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span></div>
      </div>
    </div>
  </div>
  <hr>
  <div class="row">
    <div class="text-center col-md-6 col-md-offset-3">
      <h4>Footer </h4>
      <p>Copyright &copy; 2015 &middot; All Rights Reserved &middot; <a href="http://yourwebsite.com/" >My Website</a></p>
    </div>
  </div>
  <hr>
>
</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
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
