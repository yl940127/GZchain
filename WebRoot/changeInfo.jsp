
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改用户信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  
  <table width="781" style="top: 0px; height: 19px;">
          <tr>
            <td height="19" bgcolor="#CCCCCC">当前位置：修改用户 <font color="#FF0000"><a href="managerIndex.jsp" target="right">返回首页</a></font></td>
          </tr>
        </table>
  
	<form action="UpdateUserAction" method="post">
	
	 
							<table width="781">
								<tr>
									<td>用户名：</td>
									<td><input name="username" type=text />
									</td>
								</tr>
								
								<tr>
									<td>密码：</td>
									<td><input name="password" type=text />
									</td>
								</tr>
							
							
								<tr>
									<td>Email</td>
									<td><input name="email" type=text />
									</td>
								</tr>
								
								
								<tr>
									<td><input type="submit" value="提交">
									</td>
								</tr>
							</table>
						</form>
		
  </body>
</html>
