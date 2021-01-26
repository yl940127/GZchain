<%@ page language="java" pageEncoding="utf-8"%>
<!-- 导航栏开始 -->
<header class="navbar navbar-fixed-top" id="banner">
    <a href="#" class="scrollable" id="index">Products</a>
    <nav id="navbar" role="navigation" class="navbar-right">
        <ul class="nav nav-pills">
            <a href="./index.jsp">首页</a>
            <span>|</span>
            <c:if test="${sessionScope.user==null}">
                <a href="login.jsp" class="curspan">立即登录</a>
                <span>|</span>
                <a href="register.jsp">免费注册</a>
            </c:if>
            <c:if test="${sessionScope.user!=null}">
                <span>你好，${user.getUsername()}</span>
            </c:if>
            <span>|</span>
            <a href="#">常见问题</a>
        </ul>
    </nav>
</header>
<!-- 导航栏结束 -->