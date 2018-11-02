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
  <table class="table">
		<tr>
			<td height="19">当前位置：服务信息 <font color="#FF0000"></font>
			</td>
		</tr>

	</table>
	<br>

	<table class="table">
		<tr align="center">
			<td>服务ID</td>
			<td>服务名字</td>
			<td>服务内容</td>
			<td>服务薪酬</td>
			<td>服务类型</td>
			<td>发布用户ID</td>
			<td>执行用户ID</td>
			<td>是否接受</td>
			<td>是否验收</td>
			<td>操作</td>
			
		</tr>
		
		<a:forEach items="${requestScope.mlist}" var="jo">
		 <form action="DeleteServiceAction" method="post">
			<tr align="center">
			<td>${jo.Service.sid}</td>
			<td>${jo.Service.sname}</td>
			<td>${jo.Service.content}</td>
			<td>${jo.Service.salary}</td>
			<td>${jo.ServiceType.typename}</td>
			<td>${jo.Service_User.publisher}</td>
			<td>${jo.Service_User.accepter}</td>
			<td>${jo.Service_User.achieveproject}</td>
			<td>${jo.Service_User.checkproject}</td>
			<td>
				<input type="text" name="serviceID" hidden="true" value="${jo.Service.sid}">
				<input type="submit" class="btn" value="删除">
			</td>
			</tr>
		</form>
		</a:forEach>

	</table>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="//cdn.bootcss.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js"></script>
  </body>
</html>