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
        <%@include file="./public/page/header.html"%>

           
               

                    <div id="guide-info" class="animated bounceIn">
                            <div class="item-head">
                                    <h2 class="item-heading">游豆信息</h2>
                                </div>
                                <form action="registguide" method="post">
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
                                        <label for="address">
                                              地址
                                            <input type="text" name="address" id="address" class="form-control">
                                        </label>
                                        <label for="introduce">
                                                简介
                                            <input type="text" name="introduce" id="introduce" class="form-control">
                                        </label>
                                        
                                        <label>
                                            <input type="submit" class="btn btn-info" value="保存信息"/>
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