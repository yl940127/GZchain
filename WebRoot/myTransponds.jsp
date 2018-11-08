<%--
  Created by IntelliJ IDEA.
  User: ssh
  Date: 2018/11/4
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="entity.UsersDTO"%>
<%@page import="entity.ProductVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的转发</title>
    <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="node_modules/animate.css/animate.min.css">
    <link rel="stylesheet" href="node_modules/normalize.css/normalize.css">
    <link rel="stylesheet" href="node_modules/_font-awesome.css@4.7.2@font-awesome.css/css/font-awesome.css">
    <link rel="stylesheet" href="public/css/public.css">
    <link rel="stylesheet" href="./css/track.css">
    <link rel="stylesheet" href="./public/css/trackBox.css">
    <script src="node_modules/jquery/dist/jquery.min.js"></script>
    <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="node-modules/animejs/anime.js"></script>
    <script src="node_modules/masonry-layout/dist/masonry.pkgd.js"></script>
</head>
<body>

<%@include file="public/page/transpond_header.jsp" %>>

<div class="container content-box">

    <div class="container-fluid animated bounceIn" id="masnory">
        <c:forEach items="${requestScope.tracks}" var="track">
            <div class="box feed">

                <a class="pic" target="_blank" href="/trips/2387426340/#wp2364074168">
                    <img src="${track.imageUrls}" alt="冰岛环游-2364074168" width="285" height="213" class="hidden">
                </a>

                <div class="bottom">

                    <p class="text">${track.name}</p>

                    <p class="tool">
                        <a class="btn-like" target="_blank" style="float: left" href="/trips/2387426340/#wp2364074168"><i
                                class="fa fa-heart-o"></i>价格：${track.price}</a><a class="btn-comment" target="_blank"
                                                                     href="/trips/2387426340/#wp2364074168"><i
                            class="fa fa-comment-o"></i>销量：${track.saleNum}</a>
                        <a class="tripname one-row-ellipsis"  target="_blank" style="float: right" href="transpond">转发</a>

                    </p>

                </div>
            </div>
        </c:forEach>
    </div>

    <div class="footer">
        <button type="button" class="btn btn-default" id="btn-more">加载更多</button>
    </div>
</div>



<script src="./js/track.js"></script>
</body>
</html>