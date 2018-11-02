<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<!DOCTYPE html>
<html lang="en" class="no-js">

    <head>

        <meta charset="utf-8">
        <title>创建足迹</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel="stylesheet" href="css/reset.css">
        <link rel="stylesheet" href="css/supersized.css">
        <link rel="stylesheet" href="css/LoginStyle.css">

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="assets/js/html5.js"></script>
        <![endif]-->
       <script type="text/javascript">
function onUser(){
  var value = document.getElementById("user").value;
  var curretuser =  /^[A-Za-z0-9]+$/;
  if(curretuser.test(value)){
  
  }else{
  window.alert("Please enter number or letter");
  return;
  }
}

function onPassword(){
  var value = document.getElementById("password").value;
  var curretuser =  /^[A-Za-z0-9]{6,12}$/;
  
  if(curretuser.test(value)){
  
  }else{
  window.alert("error!only number or letter!and the number of password only 6-12!");
    return;
  }
}

function onTestPassword(){
  var value = document.getElementById("password").value;
  var value1 = document.getElementById("password2").value;
  
  if(value==value1){
  
  }else{
  window.alert("Two times the password is not the same!");
    return;
  }
}

function onTestEmail(){
  var value = document.getElementById("email").value;
  var value1 = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
  if(value1.test(value)||value==null){
  
  }else{
  window.alert("the email is error!");
    return;
  }
}



function onCode(){
  var value = document.getElementById("code").value;
  var value1 = /^\d{6}$/;
  if(value1.test(value)||value==null){
  
  }else{
  window.alert("the code is error!");
    return;
  }
}

</script>
    </head>

    <body>

        <div class="page-container">
            <h1>创建足迹</h1>
            <form action="createtrack" method="post" enctype="multipart/form-data">
            
               
                <input type="text" name="content" class="phone" placeholder="请输入旅行笔记！">
                <input type="text" name="location" class="email" placeholder="请输入旅行地点！">
                 
                <!-- <input type="file" class="file" name="photo" placeholder="请选择您的图片！"> -->
                
                <button type="submit" class="submit_button"  onClick="onTestEmail(),onCode(),onTestPhone()" >提交</button>
                <div class="error"><span>+</span></div>
            </form>
            <div class="connect">
                <!-- <p>快捷</p> -->
                <p>
                    <a class="facebook" href=""></a>
                    <a class="twitter" href=""></a>
                </p>
            </div>
        </div>
		
        <!-- Javascript -->
        <script src="js/jquery-1.8.2.min.js" ></script>
        <script src="js/supersized.3.2.7.min.js" ></script>
        <script src="js/supersized-init.js" ></script>
        <script src="js/scripts.js" ></script>

    </body>
<div style="text-align:center;">
<p><a href="Systemuser.jsp" title="立即注册" target="_blank">立即注册</a></p>
</div>
</html>

