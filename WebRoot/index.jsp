<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<script type="text/javascript">
    function toIndex() {
        window.location.href = "managerIndex.jsp";
    };
</script>
<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>首页</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <!-- <link rel="stylesheet/less" type="text/css" href="css/style.less" /> -->
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="js/all.js"></script>
    <!--[if IE 6]>
    <script src="./js/iepng.js" type="text/javascript"></script>
    <script type="text/javascript">
        EvPNG.fix('div, ul, img, li, input,span, p');
    </script>
    <![endif]-->
</head>
<body>
<!-- header start -->
<div class="zxcf_top_wper">
    <div class="zxcf_top px1000 clearfix">
        <div class="zxcf_top_l fl">
            <img src="images/zxcf_phone.png" alt="">
            400-027-0101(工作时间9:00-17:30)
            <a href="#"><img src="images/zxcf_weixin.png" alt=""></a>
            <a href="#"><img src="images/zxcf_sina.png" alt=""></a>
            <a href="#"><img src="images/zxcf_qq.png" alt=""></a>
        </div>
        <div class="zxcf_top_r fr">
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

        </div>
    </div>
</div>
<!-- end top -->
<div class="zxcf_nav_wper">
    <div class="zxcf_nav clearfix px1000">
        <div class="zxcf_nav_l fl"><img src="images/logo.png" height="80" alt=""></div>
        <div class="zxcf_nav_r fr">
            <img src="images/zxcf_perinfo.png" alt="">
            <span onclick="toIndex()">个人中心
		 	</span>

        </div>
    </div>
</div>
<div class="zxcf_menu_wper">
    <div class="zxcf_menu px1000">
        <a href="index.jsp" class="zm_cura">首页</a>
        <a href="publicService.jsp">发布服务</a>
        <a href="findService.jsp">我要接服务</a>

        <a href="#">新手指引</a>
        <a href="#" style="margin-right:0;">关于我们</a>
    </div>
</div>
<!-- end  -->
<div class="zscf_banner_wper">
    <div class="zscf_banner px1000">
        <div class="zscf_box">
            <p>累计成交：<strong>2亿2332万元</strong></p>
            <p>运营时间：<strong>123天</strong></p>
            <p><strong>24</strong>小时成功服务率:<strong>92.12%</strong></p>
            <a href="login.jsp" class="btn btn1">成果展示</a><br>
            <!--   <a href="register.jsp" class="btn btn2">立即注册</a>
              -->
        </div>
    </div>
</div>
<!-- end banner -->
<div class="zscf_con_wper pb30">
    <div class="zscf_con px1000">
        <div class="zscf_block1 mt30 ">
            <h2 class="zscf_block1_tit clearfix"><span
                    class="fl"><strong>发标预告</strong>换卡后放假啊客户看 将黑金卡号看见啊后防盗卡…… </span><a href="#" class="fr">查看更多>></a>
            </h2>
            <div class="clearfix clear">
                <ul class="zscf_block1_text clearfix fl">
                    <li>
                        <span class="block1_libg01">已加入感知链</span>
                        <br>
                        <em><strong>123123</strong>人</em>
                    </li>
                    <li>
                        <span class="block1_libg02">已服务单数</span>
                        <br>
                        <em><strong>12345</strong>人</em>
                    </li>
                    <li>
                        <span class="block1_libg03">服务满意率</span>
                        <br>
                        <em><strong>123123</strong>人</em>
                    </li>
                </ul>
                <!-- end l -->
                <div class="block1_r fl">
                    <h2 class="block1_r_tit clearfix"><span>网站公告</span><a href="noticelist.html">+</a></h2>
                    <ul>
                        <li><span>关于新手体验</span><em>06-19</em></li>
                        <li><span>关于新手体验</span><em>06-19</em></li>
                        <li><span>关于新手体验</span><em>06-19</em></li>
                        <li><span>关于新手体验</span><em>06-19</em></li>

                    </ul>
                </div>
            </div>
        </div>


        <div class="zscf_block4 mt30">
            <img src="images/block4_adver.png">
        </div>
        <!-- end block4 -->
        <!-- end block5 -->
        <div class="zscf_partner mt30">
            <h2 class="block3_tit clearfix "><span class="block3_curspan">合作伙伴</span></h2>
            <div class="partner_con">
                <div id="demo">
                    <div id="indemo">
                        <div id="demo1">
                            <a href="#"><img src="images/ifri01.png" border="0"/></a>
                            <a href="#"><img src="images/ifri01.png" border="0"/></a>
                            <a href="#"><img src="images/ifri01.png" border="0"/></a>
                            <a href="#"><img src="images/ifri01.png" border="0"/></a>
                            <a href="#"><img src="images/ifri01.png" border="0"/></a>
                            <a href="#"><img src="images/ifri01.png" border="0"/></a>
                        </div>
                        <div id="demo2"></div>
                    </div>
                </div>
                <script>
                    <!--
                    var speed = 10;
                    var tab = document
                        .getElementById("demo");
                    var tab1 = document
                        .getElementById("demo1");
                    var tab2 = document
                        .getElementById("demo2");
                    tab2.innerHTML = tab1.innerHTML;

                    function Marquee() {
                        if (tab2.offsetWidth
                            - tab.scrollLeft <= 0)
                            tab.scrollLeft -= tab1.offsetWidth
                        else {
                            tab.scrollLeft++;
                        }
                    }

                    var MyMar = setInterval(
                        Marquee,
                        speed);
                    tab.onmouseover = function () {
                        clearInterval(MyMar)
                    };
                    tab.onmouseout = function () {
                        MyMar = setInterval(
                            Marquee,
                            speed)
                    };
                    -->
                </script>

            </div>
        </div>
    </div>
</div>
<!-- footer start -->
<div class="zscf_aboutus_wper">
    <div class="zscf_aboutus px1000 clearfix">
        <div class="zscf_aboutus_l fl">
            <ul class="zscf_aboutus_lul clearfix">
                <li class="pt10"><a href="#"><img src="images/app.png" alt=""></a>
                </li>
                <li>
                    <p class="pb20">服务热线</p>
                    <strong>400-027-0101</strong>
                </li>
                <li>
                    <p class="pb10 linkpic">
                        <a href="#"><img src="images/ft_sina.png" alt=""></a>
                        <a href="#"><img src="images/ft_weixin.png" alt=""></a>
                        <a href="#"><img src="images/ft_erji.png" alt=""></a>
                    </p>
                    <p><a href="#">kefu@zhongxincaifu.com</a></p>
                </li>
            </ul>
        </div>
        <!-- end left -->
        <div class="zscf_aboutus_r fl clearfix">
            <a href="#" class="fl ft_ewm"><img src="images/ft_erweima.png" alt=""></a>
            <ul class="fl clearfix">
                <li><a href="#">联系我们</a></li>
                <li><a href="#">我要服务</a></li>
                <li><a href="problem.html">帮助中心</a></li>
                <li><a href="#">友情链接</a></li>
                <li><a href="#">招贤纳士</a></li>
                <li><a href="#">我要免单</a></li>
            </ul>
        </div>
        <!-- end right -->

    </div>
</div>

<div class="zscf_bottom_wper">
    <div class="zscf_bottom px1000 clearfix">
        <p class="fl">© 2014 zhongxincaifu &nbsp; &nbsp;&nbsp; 中兴财富金融信息服务股份有限公司 &nbsp;&nbsp;&nbsp; 来源:<a
                href="http://www.mycodes.net/" target="_blank">源码之家</a></p>
        <p class="fr">
            <a href="#"><img src="images/360.png" alt=""></a>
            <a href="#"><img src="images/kexin.png" alt=""></a>
            <a href="#"><img src="images/norton.png" alt=""></a>
        </p>
    </div>
</div>
<!-- footer end -->
</body>
</html>
