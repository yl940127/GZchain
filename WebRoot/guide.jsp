<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>足迹</title>
    <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="node_modules/animate.css/animate.min.css">
    <link rel="stylesheet" href="node_modules/normalize.css/normalize.css">
    <link rel="stylesheet" href="./css/font-awesome.css">
    <link rel="stylesheet" href="public/css/public.css">
    <link rel="stylesheet" href="./css/guide.css">
    <link rel="stylesheet" href="./public/css/trackBox.css">
    <script src="node_modules/jquery/dist/jquery.min.js"></script>
    <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="node-modules/animejs/anime.js"></script>
    <script src="node_modules/masonry-layout/dist/masonry.pkgd.js"></script>
</head>
<body>
    <%@include file="public/page/header.jsp"%>
    
    <div class="container content-box">
        <div class="info col-lg-3 col-md-3 col-sm-12 col-xs-12">
            <p class="info-list">
                <img src="./image/guide/guide1.jpg" alt="guide">
            </p>
            <p class="info-list guide-name">
                余磊
            </p>
            <!-- 评价星级 -->
            <p class="info-list">
                <span>
                    <i class="fa fa-map-maker"></i>
                    "法国 - 巴黎"
                </span>
            </p>
            <p class="info-list">
                <span>
                    <i class="fa fa-list-alt"></i>
                    详细资料
                </span>
            </p>
            <p class="info-list">
                <button type="button" class="btn btn-info">预约</button>
            </p>
        </div>
        <div class="detail col-lg-9 col-md-9 col-sm-12 col-xs-12">
            <div class="guide-photo">
                <div class="photo">
                    
                </div>
                <div class="title">
                    <h3 class="col-lg-10 col-md-10 col-sm-10 col-xs-10">带你感受最真实的巴黎</h3>
                    <h3 class="col-lg-2 col-md-2 col-sm-2 col-xs-2"><i class="fa fa-heart-o"></i>收藏</h3>
                </div>
            </div>
        </div>
    </div>
            
    <%@include file="./public/page/footer.html"%>
    <%@include file="./public/page/loginModal.html"%>
</body>
</html>