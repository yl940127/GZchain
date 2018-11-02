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
  <script type="text/javascript">
  $("table tr").click(function() {//为表格的行添加点击事件
    var tr = $(this);//找到tr原色
    var td = tr.find("td");//找到td元素
    alert(td[0].innerHTML);//指定下标即可
  })
  </script>
  <body>
   <table  class="table table-striped">
     <tr align="center"><td>服务类型ID</td><td>服务类型名称</td><td>操作</td></tr>
     
     <a:forEach items="${requestScope.mlist}" var="serviceType">
      <form action="GetServiceTypeByIDForEdit" method="post">
     	<tr align="center"><td>${serviceType.getTid()}</td><td>${serviceType.getTypeName()}</td><td><input type="text" name="ServiceTypeID" value="${serviceType.getTid()}" hidden="true"> <input type="submit" class="btn" value="提交"></td></tr>
      </form>
     </a:forEach>
    </table>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="//cdn.bootcss.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js"></script>
  </body>
</html>