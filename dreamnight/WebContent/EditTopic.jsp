<%@ page language="java" contentType="text/html; charset=utf-8 " isELIgnored="false"
    pageEncoding="utf-8"%>
<!DOCTYPE">
<html>
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
	<div class="blocks">
	<form action="saveEditTopic" method="post">
		<input type = "text" name="threadName" value="${thread.threadName}" />
		<input type = "hidden" name="threadID" value="${thread.threadID}" readonly="readonly" />
		<input type = "hidden" name="fromPage" value="${fromPage}"/>
		
		<textarea name="text" style="width:550px;height:300px;position:relative;top:30px;left:25px">${thread.text}</textarea>
		<input type="submit" value="save" style="position:relative;top:72px;left:-100px" />
		<input type="button" onclick="history.go(-1)" value="back" style="position:relative;top:50px;left:380px" />
		</form>
	</div>
	
</body>
</html>
