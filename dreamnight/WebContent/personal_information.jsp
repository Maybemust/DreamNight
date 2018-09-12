<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<script src="js/per_inf.js"></script>
<html>
<head>
<style>
	#body1{
		/*filter:alpha(opacity=50);  
		-moz-opacity:0.5;  
		-khtml-opacity: 0.5;  
		opacity: 0.5;
		width:100%;
		position:absolute;*/
		/*background:url("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1536227032062&di=8109bac109c1b2841fbdefd424d64c49&imgtype=0&src=http%3A%2F%2Fdesk.fd.zol-img.com.cn%2Ft_s960x600c5%2Fg5%2FM00%2F02%2F09%2FChMkJ1bKzxmIGXG_ABdMHZEfjWgAALJRgGVwqIAF0w1050.jpg");*/
		background: #36465D;
		/*background-attachment:fixed;
		z-index: 1;
		opacity: 1;*/
	}
	#all{
		width:auto;
		height: 2000px;
		margin:0px auto;/*主面板DIV居中*/
		z-index: 2;
		opacity: 1;	
		font-family: SimSun;
		font-size: 20px;
		color:white;
	}
	#person{
		text-align:center;
		width:auto;
		height:200px;
		border:0;

	}
	
	#per_information{
		position:relative;
		float:right;

	}
	#per_picture{
		position:absolute;
		left:40%;
		border:0;
	}
	@media screen and (max-width: 600px) {
		#person{
			width:1400px;
		}
		#per_picture{
			clear:both;
			float: left;
			width: 600px;
		}
		
	}
    /* --------我是分割线-----------------*/
	#pd{
		position: relative;
		left:40%;
		border: 0;
	}
	#safetip{
		position: relative;
		left:40%;
		border: 0;
	}
	#per_style{
		position: relative;
		left:40%;
		border: 0;
	}
	#gohome{
		position: relative;
		left:40%;
		border: 0;
	}
</style>
<style>  
  
#back{
  display: inline-block;
  padding: 10px 100px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;   
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #00BDFF;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

#back:hover {background-color:#008AFF;}

#back:active {
  background-color:#008AFF;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
#cleanpassword{
  display: inline-block;
  padding: 5px 20px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;   
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color:#00BDFF;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

#cleanpassword:hover {background-color:  #008AFF;}

#cleanpassword:active {
  background-color:  #008AFF;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}

#savenewpassword{
  display: inline-block;
  padding: 5px 20px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;   
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #00BDFF;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

#savenewpassword:hover {background-color:  #008AFF;}

#savenewpassword:active {
  background-color:  #008AFF;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
#cleansafetip{
  display: inline-block;
  padding: 5px 20px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;   
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #00BDFF;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

#cleansafetip:hover {background-color: #008AFF;}

#cleansafetip:active {
  background-color: #008AFF;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
#savesafetip{
  display: inline-block;
  padding: 5px 20px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;   
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #00BDFF;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

#savesafetip:hover {background-color:#008AFF;}

#savesafetip:active {
  background-color: #008AFF;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
#savename{
  display: inline-block;
  padding: 0 5px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;   
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #00BDFF;
  border: none;
  border-radius: 6px;
  font-family: SimSun;
}
#savename:hover {background-color:#008AFF;}

#savename:active {
  background-color: #008AFF;
  transform: translateY(1px);
}
#saveqianming{
  display: inline-block;
  padding: 0 5px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;   
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #00BDFF;
  border: none;
  border-radius: 6px;
  font-family: SimSun;
}
#saveqianming:hover {background-color:#008AFF;}

#saveqianming:active {
  background-color: #008AFF;
  transform: translateY(1px);
}

</style>

</head>
<body class="body1" id = "body1">
<script type="text/javascript">
var urlb = location.search;
var reg = new RegExp("(^|&)"+ "account" +"=([^&]*)(&|$)");
var r = window.location.search.substr(1).match(reg);
var account=unescape(r[2]);
function savenc()
{
	   var nc = document.getElementById("nc").value;
	   alert('修改昵称成功！');
	   var url_nc="changeNikename?account="+ account +"&nikename=" +nc;
	   window.location.href=url_nc;   
	   document.getElementById("nc").value = nc;
}
function saveqm()
{
	   var qm = document.getElementById("qm").value;
	   document.getElementById("qm").value = qm;
	   alert('修改个性签名成功！');
	   var url_qm="changePersonality?account="+ account +"&personality=" +qm;
	   window.location.href=url_qm;      
}
</script>
<div id = "all">
	<div class = "person" id = "person">
		<div class = "per_picture" id = "per_picture">
			<img src = "images/touxiang.jpg" style="width:200px;height:200px;">
			<div class = "per_information" id = "per_information">
				<p>帐号：<input id = "user_name" readonly="readonly" style="border:0px;background:none;font-family:SimSun;font-size: 20px;" value=${user.account }></p><br />
				<p>吧龄：<input id = "user_age" readonly="readonly" value="test user define" style="border:0px;background:none;font-family:SimSun;font-size: 20px;"></p>
			</div>
		</div>
    </div>	
	
	


<div class = "per_style" id = "per_style">
	<p>个性设置：</p><br/>
	<p>昵&ensp;&ensp;&ensp;&ensp;称:  <input id ="nc" type = "text" font-family:SimSun;font-size: 20px; value=${user.nikeName }><button id = "savename" type="button" onclick="savenc()" >保存</button></p><br/>
	<p>个性签名:  <input id = "qm" type = "text" font-family:SimSun;font-size: 20px; value=${user.personality }><button id = "saveqianming" type="button" onclick="saveqm()">保存</button></p><br/>
</div>
<script type="text/javascript">
function cleanpd()
{
	document.getElementById("oldpd").value ="";
	document.getElementById("newpd").value ="";
	document.getElementById("checkpd").value ="";
}
function savepd()
{
	var oldpd = document.getElementById("oldpd").value;
	var newpd = document.getElementById("newpd").value;
	var checkpd = document.getElementById("checkpd").value;
	if(oldpd == "" || newpd == ""  || checkpd == ""){
		alert("密码不能为空！");
		return false;
	}
	if(newpd != checkpd){
		alert("请检查密码是否一致！");
		return false;
	}
	document.getElementById("pd").submit();
	cleanpd();
	alert("修改密码成功！");
}
</script>
<form  id="pd" class="pd" method="post" action="PdChange">
	<p>安全设置：</p><br/>
	<p>旧密码:&ensp;&ensp;&ensp;<input id = "oldpd" name = "oldpd" type = "password" maxlength="14"></p><br/>
	<p>新密密码:  <input id = "newpd" name = "newpd" type = "password" maxlength="14"></p><br/>
	<p>确认密码:  <input id = "checkpd" name = "checkpd" type = "password" maxlength="14"></p><br/>
	<input id = "pd_account" name = "pd_account" type="text" style="display:none" value=${user.account } />
	<button id = "cleanpassword" type="button" onclick="cleanpd()" style="margin-right:100px;">重置</button>		
	<button id = "savenewpassword" type="button" onclick="savepd()" style="margin-right:150px;">保存</button>	
</form>
<script>
function cleantip()
{
	   document.getElementById("oldans").value ="";
	   document.getElementById("newque").value ="";
	   document.getElementById("newans").value ="";
}
function savetip()
{
	   document.getElementById("oldque").readOnly = false;
	   document.getElementById("oldque").value = "que";
	   document.getElementById("oldque").readOnly = true;
	   var que = document.getElementById("oldque").value;
	   var ans = document.getElementById("oldans").value;
	   var newque = document.getElementById("newque").value;
	   var newans = document.getElementById("newans").value;
	   if(ans == ""){
			alert("密保答案不能为空！");
			return false;
		}
		document.getElementById("safetip").submit();
		cleantip();
	    alert("重置密保问题成功！");
	   

}
</script>	
<form class="safetip" id = "safetip" action="securityChange">
	<p>密保设置：</p><br/>
	<p>密保问题:&ensp;&ensp;<input id = "oldque" name="oldque" type = "text" readonly="readonly" font-family:SimSun;font-size: 20px; value=${user.security }></p><br/>
	<p>密保答案:&ensp;&ensp;<input id = "oldans" name="oldans" type = "password" font-family:SimSun;font-size: 20px;></p><br/>
	<p>新密保问题:<input id = "newque" name="newque" type = "text" font-family:SimSun;font-size: 20px;></p><br/>
	<p>新密保答案:<input id = "newans" name="newans" type = "password" font-family:SimSun;font-size: 20px;></p><br/>
	<input id = "security_account" name = "security_account" type="text" style="display:none" value=${user.account } />
	<div class="safetip_b" id = "safetip_b">
		<button id = "cleansafetip" type="button" onclick="cleantip()" style="margin-right:100px;">重置</button>
		<button id = "savesafetip" type="button" onclick="savetip()" style="margin-right:150px;">保存</button>
	</div>
</form>
<div class = "gohome" id = "gohome">
	<br/>
	<button id = "back" type="button" onclick="location.href = 'firstPage'">返回主页</button>
</div>
</div>

</body>
</html>