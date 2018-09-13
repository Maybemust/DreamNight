<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<style>
	body{
            background-image:url(main-bg.jpg);
            background-size:100%;
        }
</style>
	                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>个人中心</title>
</head>

<body>
	<a id="top"></a>
<div id="container" style="width:1500px">
<div id="header" style="background-color:#36465D; height: 20px; opacity: 0;"></div>
		
<div id="content1" style="height: 300px;width: 200px; float:left;">
<p style="margin-bottom:0;font-size: 30px; text-indent:50px; color:#FEFBFB;">个人中心</p>
<img src="91529822720e0cf32b1442c60146f21fbe09aa28.jpg" alt="photo" width="100px" height="100px"
	 style="margin-top: 50px;margin-left: 80px">
</div>

<div id="content2" style="height: 300px;width: 800px;float: left">
<p style="margin-top: 120px;margin-left: 50px;color: #FFFFFF">${User.nikeName}
	<br>
	<br>
	<br>
	<br>
	${User.personality}</p>
</div>
<div id="content3" style="height: 300px;width: 500px; float:left;">
	<a href="final.html"><img src="button.png" alt="button" style="float: right ;margin-right: 10px;"></a>
</div>
</div>
<div id="container2" style="width: 1500px">
<div style="width: 500px;height: 100px; float: left;">
<a href="主贴页.html"><img src="mythoembutton .png" alt="我的主题帖子" style="float: right;margin-top: 50px;"></a>
	</div>
<div style="width: 500px;height: 100px; float: left;">
<img src="myfollow.png" alt="关于我的跟帖" style="float: left;margin-top: 50px;">
	</div>	
	</div>
	<div style="background:#FFFFFF;width: 800px;height: 1000px;float: left;margin-left: 350px;margin-top: 0px;">
        <div class="text-center col-md-9;">
	<table style="width: 500px; margin: 44px auto;background: #36465D"
	class="table table-striped table-bordered table-condensed"
	align='center' border='1' cellspacing='0' >
	<tr>
	</tr>
		<c:forEach items="${Commits}" var="Commit" varStatus="st">
		<tr>
		<td>      
		<div class="well" ><strong> 
		<img src = "./images/person2.JPG" alt="user_pic" style= "float: left; height:40px; width:60px;padding-left: 20px">
		  <p style= "float:left;padding-left: 20px;padding-top:10px">:</p>
		  <!--a href="threadDetails?threadID=${thread.threadID}" style = "float:left;padding-left: 5px;padding-top:1px;font-size:17px"-->
		  <p style = "float:left;padding-left: 5px;padding-top:1px;font-size:17px">
		  ${Commit.fromAccount}</p></strong>
		  <br>
		  <br>
		 	<div>
<form action = "passCommitID" method="post" id="form1">
<input type="hidden" name = "CommitID" value = ${Commit.commitID}>
</form>
</div>
		 <div class="text-center col-md-1" >
		 <p style= "float:center;color: #36465D">Commit.fromAccount</p>
		 </div>
		  
		  <hr class="hr1">
		  <a style = "float:center;padding-left:5px;font-size: 20px;color:#3A3A3A">${Commit.text}</a>
		  <ul class="nav navbar-nav navbar-right">
        		<li><a href="#" style="font-weight:bold;">跟帖时间:${Commit.postTime}</a></li>
				<li><a href="#">删除该跟帖</a></li>
      		</ul>
		  <br>
		  </div>
		  </td>
		</tr>

<script>
			passIdAndSkip(id1){
				alert(111);
				var urlc = "threadDetails";
				window.open(urlc,"_blank");
			}
</script>
<div>
</div>
</c:forEach>
</table>	
    </div>
	
	
	</div>	
<div style="float:left;height: 150px;width: 1000px;">
	<a href="#top"><p style="color: #FFFFFF;margin-top: 60px;margin-left: 716px">返回顶部</p></a>
	</div>
</body>
</html>
