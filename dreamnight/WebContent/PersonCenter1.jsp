<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="js/jquery.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<style>
body {
	background-image: url(./images/main-bg.jpg);
	background-size: 100%;
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
#container {
	width: 1500px
}
#header {
	background-color: #36465D;
	height: 20px;
	opacity: 0;
}
#content1 {
	height: 300px;
	width: 350px;
	float: left;
}
#content2 {
	height: 300px;
	width: 650px;
	float: left;
}
#content3 {
	height: 300px;
	width: 500px;
	float: left;
}
#container2 {
	width: 1500px;
}
#container2_1 {
	width: 500px;
	height: 100px;
	float: left;
}
#container2_2 {
	width: 250px;
	height: 100px;
	float: left;
}
#container2_3 {
	width: 250px;
	height: 100px;
	float: left;
}
#goback {
	position: relative;
	display: inline-block;
	padding: 8px 45px;
	font-size: 24px;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	outline: none;
	color: #fff;
	background-color: #10154E;
	border: none;
	border-radius: 15px;
	margin-top: 48px;
	left: 220px;
}
#unknow {
	background: #FFFFFF;
	width: 800px;
	height: 1000px;
	float: left;
	margin-left: 350px;
	margin-top: 0px;
}

@media screen and (max-width: 1000px) {
#container {
	width: 1000px;
}
#header {
	background-color: #36465D;
	height: 20px;
	opacity: 0;
}
#content1 {
	height: 300px;
	width: 233px;
	float: left;
}
#content2 {
	height: 300px;
	width: 434px;
	float: left;
}
#content3 {
	height: 300px;
	width: 333px;
	float: left;
}
#container2 {
	width: 1000px;
}
#container2_1 {
	width: 383px;
	height: 100px;
	float: left;
}
#container2_2 {
	width: 383px;
	height: 100px;
	float: left;
}
#container2_3 {
	width: 200px;
	height: 100px;
	float: left;
}
#goback {
	position: relative;
	display: inline-block;
	padding: 8px 45px;
	font-size: 24px;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	outline: none;
	color: #fff;
	border: none;
	border-radius: 15px;
	margin-top: 48px;
	left: -190px;
}
#unknow {
	background: #FFFFFF;
	width: 533px;
	height: 1000px;
	float: left;
	margin-left: 233px;
	margin-top: 0px;
}
}
</style>
<title>个人中心</title>
</head>

<body>
<a id="top"></a>
<div id="container">
  <div id="header"></div>
  <div id="content1">
    <input readonly="readonly" value="个人中心" style="color:white;margin-top: 150px; margin-left:100%; border:0px; background:none; font-family:SimSun; font-size: 30px;">
    <img src="./images/touxiang.jpg" alt="photo" width="100px" height="100px"
				style="margin-top: 10px; margin-left:100%"> </div>
  <div id="content2">
    <p style="margin-top: 120px; margin-left: 50px; color: #FFFFFF">
      <input readonly="readonly" value="${sessionScope.USER.account}" style="width:500px;color:white;margin-top: 75px; margin-left:65px; border:0px; background:none; font-family:SimSun; font-size: 30px;">
      <br>
      <input readonly="readonly" value="${sessionScope.USER.personality}" style="width:500px;color:white;margin-top: 0px; margin-left:65px; border:0px; background:none; font-family:SimSun; font-size: 30px;">
      <br>
      <a href="getUser?account="+${User.account}><img src="./images/button.png" alt="button"
				style="margin-top: 0px; margin-left: 65px;"></a> </p>
  </div>
  <div id="content3"> 
    <script>
		var urlb = location.search;
		var reg = new RegExp("(^|&)"+ "account" +"=([^&]*)(&|$)");
	    var r = window.location.search.substr(1).match(reg);
	    var str=unescape(r[2]);
	    str = ${User.account};
	    alert(str);
		</script> 
  </div>
</div>
<div id="container2" >
  <div id="container2_1"> <img src="./images/mythoem.png" alt="我的主题帖子"
				style="float: right; margin-top: 50px;"> </div>
  <div id="container2_2"> <a href="displayCommit"><img src="./images/myfollowbutton.png"
				alt="关于我的跟帖" style="float: left; margin-top: 50px;"></a> </div>
  <div id="container2_3">
    <button id="goback" type="button" onclick="location.href = 'firstPage'">返回主页</button>
  </div>
</div>
<div id="unknow">
  <div class="text-center col-md-9;">
    <table style="width: 500px; margin: 44px auto;background: #36465D"
	class="table table-striped table-bordered table-condensed"
	align='center' border='0' cellspacing='0'>
      <tr> </tr>
      <c:forEach items="${Threads}" var="Thread" varStatus="st">
        <tr>
          <td><div class="well"><strong> <img src = "./images/person2.JPG" alt="user_pic" style= "float: left; height:40px; width:60px;padding-left: 20px">
              <p style= "float:left;padding-left: 20px;padding-top:10px">:</p>
              <!--a href="threadDetails?threadID=${thread.threadID}" style = "float:left;padding-left: 5px;padding-top:1px;font-size:17px"--> 
              <a href="threadDetails" style = "float:left;padding-left: 5px;padding-top:1px;font-size:17px"> ${Thread.threadName}</a></strong> <br>
              <br>
              <div>
                <form action = "passThreadID" method="post" id="form1">
                  <input type="hidden" name = "ThreadID" value =${Thread.threadID}>
                </form>
              </div>
              <div class="text-center col-md-1" > <p style= "float:left;width:50px;">${Thread.fromAccount}</p> </div>
              <hr class="hr1">
              <a style = "float:center;padding-left:5px;font-size: 20px;color:#3A3A3A">${Thread.text}</a>
              <ul class="nav navbar-nav navbar-right">
                <li><a href="#" style="font-weight:bold;">点击数目：${Thread.numReading}</a></li>
                <li><a href="#">评论数目：${Thread.numCommit}</a></li>
              </ul>
              <br>
            </div></td>
        </tr>
      </c:forEach>
    </table>
  </div>
  <div class="row">
    <div class="text-center col-md-6 col-md-offset-3">
      <ul class="pagination">
    <li><a href="#">&laquo;</a></li>
		<li><a href="displayThread?start=0">首 页</a></li>
		<li><a href="displayThread?start=${pre}">上一页</a></li>
		<li><a href="displayThread?start=${next}">下一页</a></li>
		<li><a href="displayThread?start=${last}">末 页</a></li>
    <li><a href="#">&raquo;</a></li>
	</ul>
    </div>
  </div>
</div>
</body>
</html>
