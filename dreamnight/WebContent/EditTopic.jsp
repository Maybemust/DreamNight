<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script src="js/jquery.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=uft-8">
<title>Insert title here</title>
</head>
<style>
		.blocks{  
			width:600px;
			height: 400px;
			background-color: aliceblue;
            margin:500px;
			margin-top: 20px;
			margin-bottom: auto;
			/*padding-top: 10px;
			padding-bottom: 50px;
			padding-left: 30px;
			padding-right: 30px;*/
            border-radius:8px;
		}
		</style>
<body style="background-color:#36465D">

	<hr>
	<div class="col-md-6 col-md-offset-3 text-center"  ><strong> 
	
<div class="well" ><strong> 
		<form action="saveEditTopic" method="post">
		

	  <ul class="nav navbar-nav navbar-left">
		<li>编辑新主题  ：</li>
		<li style = "float:center"><input type = "text" name="threadName" value="${thread.threadName}" style="float:center"/></li>
		  <br>
		  <br>
		
      		</ul>
  <br>
  <br>
  <br>
		<input type = "hidden" name="threadID" value="${thread.threadID}" readonly="readonly" />
		<input type = "hidden" name="fromPage" value="${fromPage}"/>
		<div class = "text-center">
		<textarea name="text" style="width:77%;height:300px;">${thread.text}</textarea>
		</div>
		  <hr class="hr1">
      		
      		<div class="btn-group" role="group" aria-label="...">
 <button type="submit">保存</button>
  <button><a href = "deleteSkip?from=${fromPage}&id=${thread.threadID}">返回</a></button>
</div>


		  <br>
		  </form>
		  </div>
		   </div>
</body>
</html>
