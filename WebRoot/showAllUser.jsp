<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- Bootstrap -->
    <link href="//cdn.bootcss.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
   <table width="781" style="top: 0px; height: 18px;" bgcolor="#CCCCCC">
		<tr>
			<td height="19">当前位置：用户管理 <font color="#FF0000"></font>
			</td>
		</tr>

	</table>
	<br>

	<table class="table">
		<tr align="center">
			<td>用户名</td>
			<td>密码</td>
			<td>电子邮件</td>
			
		</tr>
		
		<a:forEach items="${requestScope.mlist}" var="user">
			<tr align="center">
				<td>${user.username}</td>
				<td>${user.password}</td>
				<td>${user.email}</td>
			</tr>
		</a:forEach>
	</table>
	
	<p>
	<a:forEach var="item" varStatus="status" begin="1" end="${totalNum}">
      <a href="user.jhtml?page=${status.index}">${status.index}</a>
    </a:forEach>
</p>


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="//cdn.bootcss.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js"></script>
  </body>
</html>