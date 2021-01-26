<%@ page language="java" pageEncoding="utf-8"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>足迹</title>
        <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="node_modules/animate.css/animate.min.css">
        <link rel="stylesheet" href="node_modules/normalize.css/normalize.css">
        <link rel="stylesheet" href="node_modules/_font-awesome.css@4.7.2@font-awesome.css/css/font-awesome.css">
        <link rel="stylesheet" href="public/css/public.css">
        <link rel="stylesheet" href="./css/personal.css">
        <link rel="stylesheet" href="./public/css/trackBox.css">
        <script src="node_modules/jquery/dist/jquery.min.js"></script>
        <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="node-modules/animejs/anime.js"></script>
        <script src="node_modules/masonry-layout/dist/masonry.pkgd.js"></script>
    </head>

    <body>
        <%@include file="public/page/header.jsp"%>

            <div class="container content-box">
                <div class="menu col-lg-3 col-md-3 col-sm-6 col-xs-6">
                    <div class="list-group user-list animated bounceInLeft">
                        <a href="#" class="list-group-item disabled">
                            游客选项
                        </a>
                        <a href="#personal-info" class="list-group-item active">个人信息</a>
                        <a href="#" class="list-group-item">订单</a>
                        <a href="#" class="list-group-item">游豆收藏</a>
                    </div>
                    <div class="list-group guide-list animated bounceInLeft">
                            <a href="#" class="list-group-item disabled">
                                游豆选项
                            </a>
                            <a href="#guide-info" class="list-group-item">个人信息</a>
                            <a href="#" class="list-group-item">订单管理</a>
                            <a href="#" class="list-group-item">发布服务</a>
                            <a href="#" class="list-group-item">义工旅行</a>
                    </div>
                </div>
                <div class="menu-item col-lg-9 col-md-9 col-sm-6 col-xs-6">
                    <div id="personal-info" class="animated bounceIn">
                        <div class="item-head">
                            <h2 class="item-heading">个人信息</h2>
                        </div>
                        <form action="#">
                            <div class="input col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                <label for="username">
                                    用户名
                                    <input type="text" name="username" id="username" class="form-control" value="${user.getUsername()}">
                                </label>
                                <label for="realName">
                                    真实姓名
                                    <input type="text" name="realName" id="realName" class="form-control" value="${user.getRealname()}">
                                </label>
                                <label for="email">
                                    邮箱
                                    <input type="email" name="email" id="email" class="form-control" value="${user.getEmail()}">
                                </label>
                                <label for="telNum">
                                    手机号码
                                    <input type="text" name="telNum" id="telNum" class="form-control" value="${user.getTelnum()}">
                                </label>
                                <label for="idCard">
                                    身份证号
                                    <input type="text" name="idCard" id="idCard" class="form-control" value="${user.getIdcard()}">
                                </label>
                                <label for="birthday">
                                    出生年月
                                    <input type="date" name="birthday" id="birthday" class="form-control" value="${user.getBirthday()}">
                                </label>
                                <label>
                                    <button type="button" class="btn btn-info">保存信息</button>
                                </label>
                            </div>
                            <div class="img-upload col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                <div class="img-uploading col-lg-offset-3 col-md-offset-3">
                                    <div class="img">
                                        <label>
                                            个人头像
                                            <img src="./image/guide/guide1.jpg" alt="touxiang" id="img-personal">
                                        </label>
                                    </div>
                                    <div>
                                        <button type="button" class="btn btn-default btn-img">上传新头像</button>
                                    </div>
                                </div>    
                            </div>    
                        </form>
                    </div>

                    <div id="guide-info" class="animated bounceIn">
                            <div class="item-head">
                                    <h2 class="item-heading">游豆信息</h2>
                                </div>
                                <form action="#">
                                    <div class="input col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                        <label for="country">
                                            国家
                                            <input type="text" name="country" id="country" class="form-control">
                                        </label>
                                        <label for="province">
                                            省份
                                            <input type="text" name="province" id="province" class="form-control">
                                        </label>
                                        <label for="city">
                                            城市
                                            <input type="text" name="city" id="city" class="form-control">
                                        </label>
                                        <label for="introduce">
                                                简介
                                            <input type="text" name="introduce" id="introduce" class="form-control">
                                        </label>
                                        
                                        <label>
                                            <button type="button" class="btn btn-info">保存信息</button>
                                        </label>
                                    </div>        
                    </div>
                </div>
            </div>
    </body>

    <%@include file="./public/page/footer.html"%>

        <script src="./public/js/public.js"></script>
        <script src="./js/personal.js"></script>
    </html>