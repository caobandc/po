<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>用户登录</title>

<link rel="stylesheet" type="text/css" href="css/styles.css">
<style type="text/css">
body,td,th { font-family: "Source Sans Pro", sans-serif; }
body { background-color: #2B2B2B; }
</style>
</head>
<body>
<div class="wrapper">

	<div class="container">
		<%--<a href="homepage.jsp" style="font-size: 2rem">Welcome to DCA Kingdom</a>--%>
		<h1>Welcome to DCA Kingdom</h1>
		<form class="form" method="post" action="servlet/loginServlet" id="formid">
			<input type="text" placeholder="请输入账号" name="username" id="username">
			<input type="password" placeholder="请输入密码" name="password" id="pwd">
			<button type="submit" id="login-button">Login</button><br>
            <button type="button" id="back" style="margin-top: 0.5rem" onclick="javascript:history.back(-1);">Back</button><br>
			<button type="button" id="toReg" style="margin-top: 0.5rem" onclick="javascript:window.location.href='reg.jsp';">Reg</button>
		</form>
	</div>
	
	<ul class="bg-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
	
</div>

<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
<script type="text/javascript">
$('#login-button').click(function(){
	$('.wrapper').addClass('form-success');
});

function check() {
    var name = document.getElementById("username").value;
    var pwd =document.getElementById("pwd").value;
    if(name == ""  ){
        alert("昵称不能为空");
        return false;
    }
    if(pwd == ""  ){
        alert("密码不能为空");
        return false;
    }
    document.getElementById("formid").submit()
}


</script>

</body>
</html>