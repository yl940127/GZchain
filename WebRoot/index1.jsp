<%@ page language="java" pageEncoding="utf-8"%>
<!doctype html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Fly Trip</title>
    <link rel="stylesheet" href="./node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="./node_modules/animate.css/animate.min.css">
    <link rel="stylesheet" href="./node_modules/normalize.css/normalize.css">
    <link rel="stylesheet" href="./node_modules/_font-awesome.css@4.7.2@font-awesome.css/css/font-awesome.css">
    <link rel="stylesheet" href="./css/main.css">
    <link rel="stylesheet" href="./public/css/public.css">
    <link rel="stylesheet" href="./public/css/trackBox.css">
    <script src="./node_modules/jquery/dist/jquery.min.js"></script>
    <script src="./node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
</head>
<body>
<%@include file="public/page/header.jsp"%>
<!-- 轮播图开始 -->
<div id="carousel" class="carousel slide">
    <ol class="carousel-indicators">
        <li data-target="#carousel" data-slide-to="0" class="active"></li>
        <li data-target="#carousel" data-slide-to="1"></li>
        <li data-target="#carousel" data-slide-to="2"></li>
    </ol>

    <div class="carousel-inner">
        <div class="item active"><img src="image/3-1.jpg" alt="first">
            <div class="carousel-caption">一个人的旅行，在路上遇见最真实的自己</div>
        </div>
        <div class="item"><img src="image/2-1.jpg" alt="second">
            <div class="carousel-caption">一个人的旅行，在路上遇见最真实的自己</div>
        </div>
        <div class="item"><img src="image/1-1.jpg" alt="third">
            <div class="carousel-caption">一个人的旅行，在路上遇见最真实的自己</div>
        </div>
    </div>
    <!-- 搜索框开始 -->
    <div class="search">
        <input type="text" placeholder="      请输入您想去的国家、城市">
        <span class="search-btn"></span>
    </div>
    <!-- 搜索框结束 -->
    <a href="#carousel" class="carousel-control to-left" data-slide="prev">
        <div class="swipper-btn" id="swipper-btn-1"></div>
    </a>
    <a href="#carousel" class="carousel-control to-right" data-slide="next">
        <div class="swipper-btn" id="swipper-btn-2"></div>
    </a>
</div>
<!-- 轮播图结束 -->
<!-- 模块开始 -->
<div class="modules">
    <!-- 游豆推荐开始 -->
    <div class="guide">
        <div class="title">
            <h3>受欢迎的游豆</h3>
            <a href="#">更多</a>
        </div>
        <ul class="guides animated bounceInUp">
            <li>
                <a href="#" class="cover" target="_blank" title="走在大阪，感受大阪的无穷魅力">
                    <img src="image/guide/guide1.jpg" alt="guide1" class="guide-cover">
                </a>
                <a href="#" class="name" title="走在大阪，感受大阪的无穷魅力" target="_blank">走在大阪，感受大阪的无穷魅力</a>
                <div class="info">
                    <p>
                        <span class="guide-name">张晓琛</span>
                    </p>
                    <p>
                        <span class="guide-pos">日本 - 大阪</span>
                        <span class="guide-job">专业向导</span>
                    </p>
                </div>
            </li>
            <li>
                <a href="#" class="cover" target="_blank" title="带你领略地地道道的西欧">
                    <img src="image/guide/guide2.jpg" alt="guide1" class="guide-cover">
                </a>
                <a href="#" class="name" title="带你领略地地道道的西欧" arget="_blank">带你领略地地道道的西欧</a>
                <div class="info">
                    <p>
                        <span class="guide-name">张苏</span>
                    </p>
                    <p>
                        <span class="guide-pos">法国 - 巴黎</span>
                        <span class="guide-job">专业向导</span>
                    </p>
                </div>
            </li>
            <li>
                <a href="#" class="cover" target="_blank" title="上帝遗留在人间的花园">
                    <img src="image/guide/guide3.jpg" alt="guide1" class="guide-cover">
                </a>
                <a href="#" class="name" title="上帝遗留在人间的花园" target="_blank">上帝遗留在人间的花园</a>
                <div class="info">
                    <p>
                        <span class="guide-name">方健</span>
                    </p>
                    <p>
                        <span class="guide-pos">加拿大 - 温哥华</span>
                        <span class="guide-job">专业向导</span>
                    </p>
                </div>
            </li>
            <li>
                <a href="#" class="cover" target="_blank" title="我在东京等你">
                    <img src="image/guide/guide4.jpg" alt="guide1" class="guide-cover">
                </a>
                <a href="#" class="name" title="我在东京等你" target="_blank">我在东京等你</a>
                <div class="info">
                    <p>
                        <span class="guide-name">赵响</span>
                    </p>
                    <p>
                        <span class="guide-pos">日本 - 东京</span>
                        <span class="guide-job">自由职业</span>
                    </p>
                </div>
            </li>
            <li>
                <a href="#" class="cover" target="_blank" title="伦敦-欧洲政治文化中心">
                    <img src="image/guide/guide5.jpg" alt="guide1" class="guide-cover">
                </a>
                <a href="#" class="name" title="伦敦-欧洲政治文化中心" target="_blank">伦敦-欧洲政治文化中心</a>
                <div class="info">
                    <p>
                        <span class="guide-name">张宇</span>
                    </p>
                    <p>
                        <span class="guide-pos">英国 - 伦敦</span>
                        <span class="guide-job">房产管理</span>
                    </p>
                </div>
            </li>
            <li>
                <a href="#" class="cover" target="_blank" title="想带您玩不一样的行程">
                    <img src="image/guide/guide6.jpg" alt="guide1" class="guide-cover">
                </a>
                <a href="#" class="name" title="想带您玩不一样的行程" target="_blank">想带您玩不一样的行程</a>
                <div class="info">
                    <p>
                        <span class="guide-name">陈佩君</span>
                    </p>
                    <p>
                        <span class="guide-pos">马来西亚 - 吉隆坡</span>
                        <span class="guide-job">广告设计师</span>
                    </p>
                </div>
            </li>
            <li>
                <a href="#" class="cover" target="_blank" title="南京的四季总是最美的">
                    <img src="image/guide/guide7.jpg" alt="guide1" class="guide-cover">
                </a>
                <a href="#" class="name" title="南京的四季总是最美的" target="_blank">南京的四季总是最美的</a>
                <div class="info">
                    <p>
                        <span class="guide-name">于东磊</span>
                    </p>
                    <p>
                        <span class="guide-pos">中国 - 南京</span>
                        <span class="guide-job">专业向导</span>
                    </p>
                </div>
            </li>
            <li>
                <a href="#" class="cover" target="_blank" title="向杭州人一样闲逛天堂">
                    <img src="image/guide/guide8.jpg" alt="guide1" class="guide-cover">
                </a>
                <a href="#" class="name" title="向杭州人一样闲逛天堂" target="_blank">向杭州人一样闲逛天堂</a>
                <div class="info">
                    <p>
                        <span class="guide-name">潘冬青</span>
                    </p>
                    <p>
                        <span class="guide-pos">中国 - 杭州</span>
                        <span class="guide-job">服装设计师</span>
                    </p>
                </div>
            </li>
        </ul>
    </div>
    <!-- 游豆推荐结束 -->

    <!-- 热门足迹开始 -->
    <div class="footpoint animated bounceInUp">
        <div class="title">
            <h3>热门足迹</h3>
            <a href="#">更多</a>
        </div>
        <ul class="footpoints">
            <li class="feed" id="feed1">
                <div class="top fn-clear">
                    <div class="user">
                        <a class="avatar" target="_blank" href="/guoyan"><img
                                src="http://photos.breadtrip.com/avatars_%E5%B0%8F%E9%83%ADgy_ed2b1b51c24e026f3a07eb761d3a8b87.jpg-avatar.m"
                                alt=""></a>
                        <div class="info">
                            <p class="fn-clear">
                                <span class="time"><i class="index-icons-time"></i>11小时前</span>
                                <a class="username one-row-ellipsis" target="_blank" href="/guoyan"
                                   title="小猪芬蒂克">小猪芬蒂克</a>
                            </p>
                            <a class="tripname one-row-ellipsis" title="冰岛环游" target="_blank" href="/trips/2387426340">冰岛环游</a>
                        </div>
                    </div>
                </div>

                <a class="pic" target="_blank" href="/trips/2387426340/#wp2364074168">
                    <img src="image/feed/feed1.jpg" alt="冰岛环游-2364074168" width="285" height="213" class="hidden">
                </a>

                <div class="bottom">

                    <p class="text">快到了</p>

                    <p class="tool"><a class="btn-like" target="_blank" href="/trips/2387426340/#wp2364074168"><i
                            class="fa fa-heart-o"></i>0</a><a class="btn-comment" target="_blank"
                                                              href="/trips/2387426340/#wp2364074168"><i
                            class="fa fa-comment-o"></i>0</a></p>
                </div>
            </li>
            <li class="feed">
                <div class="top fn-clear">
                    <div class="user">
                        <a class="avatar" target="_blank" href="/guoyan"><img
                                src="http://photos.breadtrip.com/avatars_%E5%B0%8F%E9%83%ADgy_ed2b1b51c24e026f3a07eb761d3a8b87.jpg-avatar.m"
                                alt=""></a>
                        <div class="info">
                            <p class="fn-clear">
                                <span class="time"><i class="index-icons-time"></i>11小时前</span>
                                <a class="username one-row-ellipsis" target="_blank" href="/guoyan"
                                   title="小猪芬蒂克">小猪芬蒂克</a>
                            </p>
                            <a class="tripname one-row-ellipsis" title="冰岛环游" target="_blank" href="/trips/2387426340">冰岛环游</a>
                        </div>
                    </div>
                </div>

                <a class="pic" target="_blank" href="/trips/2387426340/#wp2364074168">
                    <img src="image/feed/feed1.jpg" alt="冰岛环游-2364074168" width="285" height="213" class="hidden">
                </a>

                <div class="bottom">

                    <p class="text">快到了</p>

                    <p class="tool"><a class="btn-like" target="_blank" href="/trips/2387426340/#wp2364074168"><i
                            class="fa fa-heart-o"></i>0</a><a class="btn-comment" target="_blank"
                                                              href="/trips/2387426340/#wp2364074168"><i
                            class="fa fa-comment-o"></i>0</a></p>
                </div>
            </li>
            <li class="feed">
                <div class="top fn-clear">
                    <div class="user">
                        <a class="avatar" target="_blank" href="/guoyan"><img
                                src="http://photos.breadtrip.com/avatars_%E5%B0%8F%E9%83%ADgy_ed2b1b51c24e026f3a07eb761d3a8b87.jpg-avatar.m"
                                alt=""></a>
                        <div class="info">
                            <p class="fn-clear">
                                <span class="time"><i class="index-icons-time"></i>11小时前</span>
                                <a class="username one-row-ellipsis" target="_blank" href="/guoyan"
                                   title="小猪芬蒂克">小猪芬蒂克</a>
                            </p>
                            <a class="tripname one-row-ellipsis" title="冰岛环游" target="_blank" href="/trips/2387426340">冰岛环游</a>
                        </div>
                    </div>
                </div>

                <a class="pic" target="_blank" href="/trips/2387426340/#wp2364074168">
                    <img src="image/feed/feed1.jpg" alt="冰岛环游-2364074168" width="285" height="213" class="hidden">
                </a>

                <div class="bottom">

                    <p class="text">快到了</p>

                    <p class="tool"><a class="btn-like" target="_blank" href="/trips/2387426340/#wp2364074168"><i
                            class="fa fa-heart-o"></i>0</a><a class="btn-comment" target="_blank"
                                                              href="/trips/2387426340/#wp2364074168"><i
                            class="fa fa-comment-o"></i>0</a></p>
                </div>
            </li>
            <li class="feed">
                <div class="top fn-clear">
                    <div class="user">
                        <a class="avatar" target="_blank" href="/guoyan"><img
                                src="http://photos.breadtrip.com/avatars_%E5%B0%8F%E9%83%ADgy_ed2b1b51c24e026f3a07eb761d3a8b87.jpg-avatar.m"
                                alt=""></a>
                        <div class="info">
                            <p class="fn-clear">
                                <span class="time"><i class="index-icons-time"></i>11小时前</span>
                                <a class="username one-row-ellipsis" target="_blank" href="/guoyan"
                                   title="小猪芬蒂克">小猪芬蒂克</a>
                            </p>
                            <a class="tripname one-row-ellipsis" title="冰岛环游" target="_blank" href="/trips/2387426340">冰岛环游</a>
                        </div>
                    </div>
                </div>

                <a class="pic" target="_blank" href="/trips/2387426340/#wp2364074168">
                    <img src="image/feed/feed1.jpg" alt="冰岛环游-2364074168" width="285" height="213" class="hidden">
                </a>

                <div class="bottom">

                    <p class="text">快到了</p>

                    <p class="tool"><a class="btn-like" target="_blank" href="/trips/2387426340/#wp2364074168"><i
                            class="fa fa-heart-o"></i>0</a><a class="btn-comment" target="_blank"
                                                              href="/trips/2387426340/#wp2364074168"><i
                            class="fa fa-comment-o"></i>0</a></p>
                </div>
            </li>
            <li class="feed">
                <div class="top fn-clear">
                    <div class="user">
                        <a class="avatar" target="_blank" href="/guoyan"><img
                                src="http://photos.breadtrip.com/avatars_%E5%B0%8F%E9%83%ADgy_ed2b1b51c24e026f3a07eb761d3a8b87.jpg-avatar.m"
                                alt=""></a>
                        <div class="info">
                            <p class="fn-clear">
                                <span class="time"><i class="index-icons-time"></i>11小时前</span>
                                <a class="username one-row-ellipsis" target="_blank" href="/guoyan"
                                   title="小猪芬蒂克">小猪芬蒂克</a>
                            </p>
                            <a class="tripname one-row-ellipsis" title="冰岛环游" target="_blank" href="/trips/2387426340">冰岛环游</a>
                        </div>
                    </div>
                </div>

                <a class="pic" target="_blank" href="/trips/2387426340/#wp2364074168">
                    <img src="image/feed/feed1.jpg" alt="冰岛环游-2364074168" width="285" height="213" class="hidden">
                </a>

                <div class="bottom">

                    <p class="text">快到了</p>

                    <p class="tool"><a class="btn-like" target="_blank" href="/trips/2387426340/#wp2364074168"><i
                            class="fa fa-heart-o"></i>0</a><a class="btn-comment" target="_blank"
                                                              href="/trips/2387426340/#wp2364074168"><i
                            class="fa fa-comment-o"></i>0</a></p>
                </div>
            </li>
            <li class="feed">
                <div class="top fn-clear">
                    <div class="user">
                        <a class="avatar" target="_blank" href="/guoyan"><img
                                src="http://photos.breadtrip.com/avatars_%E5%B0%8F%E9%83%ADgy_ed2b1b51c24e026f3a07eb761d3a8b87.jpg-avatar.m"
                                alt=""></a>
                        <div class="info">
                            <p class="fn-clear">
                                <span class="time"><i class="index-icons-time"></i>11小时前</span>
                                <a class="username one-row-ellipsis" target="_blank" href="/guoyan"
                                   title="小猪芬蒂克">小猪芬蒂克</a>
                            </p>
                            <a class="tripname one-row-ellipsis" title="冰岛环游" target="_blank" href="/trips/2387426340">冰岛环游</a>
                        </div>
                    </div>
                </div>

                <a class="pic" target="_blank" href="/trips/2387426340/#wp2364074168">
                    <img src="image/feed/feed1.jpg" alt="冰岛环游-2364074168" width="285" height="213" class="hidden">
                </a>

                <div class="bottom">

                    <p class="text">快到了</p>

                    <p class="tool"><a class="btn-like" target="_blank" href="/trips/2387426340/#wp2364074168"><i
                            class="fa fa-heart-o"></i>0</a><a class="btn-comment" target="_blank"
                                                              href="/trips/2387426340/#wp2364074168"><i
                            class="fa fa-comment-o"></i>0</a></p>
                </div>
            </li>
            <li class="feed">
                <div class="top fn-clear">
                    <div class="user">
                        <a class="avatar" target="_blank" href="/guoyan"><img
                                src="http://photos.breadtrip.com/avatars_%E5%B0%8F%E9%83%ADgy_ed2b1b51c24e026f3a07eb761d3a8b87.jpg-avatar.m"
                                alt=""></a>
                        <div class="info">
                            <p class="fn-clear">
                                <span class="time"><i class="index-icons-time"></i>11小时前</span>
                                <a class="username one-row-ellipsis" target="_blank" href="/guoyan"
                                   title="小猪芬蒂克">小猪芬蒂克</a>
                            </p>
                            <a class="tripname one-row-ellipsis" title="冰岛环游" target="_blank" href="/trips/2387426340">冰岛环游</a>
                        </div>
                    </div>
                </div>

                <a class="pic" target="_blank" href="/trips/2387426340/#wp2364074168">
                    <img src="image/feed/feed1.jpg" alt="冰岛环游-2364074168" width="285" height="213" class="hidden">
                </a>

                <div class="bottom">

                    <p class="text">快到了</p>

                    <p class="tool"><a class="btn-like" target="_blank" href="/trips/2387426340/#wp2364074168"><i
                            class="fa fa-heart-o"></i>0</a><a class="btn-comment" target="_blank"
                                                              href="/trips/2387426340/#wp2364074168"><i
                            class="fa fa-comment-o"></i>0</a></p>
                </div>
            </li>
            <li class="feed">
                <div class="top fn-clear">
                    <div class="user">
                        <a class="avatar" target="_blank" href="/guoyan"><img
                                src="http://photos.breadtrip.com/avatars_%E5%B0%8F%E9%83%ADgy_ed2b1b51c24e026f3a07eb761d3a8b87.jpg-avatar.m"
                                alt=""></a>
                        <div class="info">
                            <p class="fn-clear">
                                <span class="time"><i class="index-icons-time"></i>11小时前</span>
                                <a class="username one-row-ellipsis" target="_blank" href="/guoyan"
                                   title="小猪芬蒂克">小猪芬蒂克</a>
                            </p>
                            <a class="tripname one-row-ellipsis" title="冰岛环游" target="_blank" href="/trips/2387426340">冰岛环游</a>
                        </div>
                    </div>
                </div>

                <a class="pic" target="_blank" href="/trips/2387426340/#wp2364074168">
                    <img src="image/feed/feed1.jpg" alt="冰岛环游-2364074168" width="285" height="213" class="hidden">
                </a>

                <div class="bottom">

                    <p class="text">快到了</p>

                    <p class="tool"><a class="btn-like" target="_blank" href="/trips/2387426340/#wp2364074168"><i
                            class="fa fa-heart-o"></i>0</a><a class="btn-comment" target="_blank"
                                                              href="/trips/2387426340/#wp2364074168"><i
                            class="fa fa-comment-o"></i>0</a></p>
                </div>
            </li>
            <li class="feed">
                <div class="top fn-clear">
                    <div class="user">
                        <a class="avatar" target="_blank" href="/guoyan"><img
                                src="http://photos.breadtrip.com/avatars_%E5%B0%8F%E9%83%ADgy_ed2b1b51c24e026f3a07eb761d3a8b87.jpg-avatar.m"
                                alt=""></a>
                        <div class="info">
                            <p class="fn-clear">
                                <span class="time"><i class="index-icons-time"></i>11小时前</span>
                                <a class="username one-row-ellipsis" target="_blank" href="/guoyan"
                                   title="小猪芬蒂克">小猪芬蒂克</a>
                            </p>
                            <a class="tripname one-row-ellipsis" title="冰岛环游" target="_blank" href="/trips/2387426340">冰岛环游</a>
                        </div>
                    </div>
                </div>

                <a class="pic" target="_blank" href="/trips/2387426340/#wp2364074168">
                    <img src="image/feed/feed1.jpg" alt="冰岛环游-2364074168" width="285" height="213" class="hidden">
                </a>

                <div class="bottom">

                    <p class="text">快到了</p>

                    <p class="tool"><a class="btn-like" target="_blank" href="/trips/2387426340/#wp2364074168"><i
                            class="fa fa-heart-o"></i>0</a><a class="btn-comment" target="_blank"
                                                              href="/trips/2387426340/#wp2364074168"><i
                            class="fa fa-comment-o"></i>0</a></p>
                </div>
            </li>
            <li class="feed">
                <div class="top fn-clear">
                    <div class="user">
                        <a class="avatar" target="_blank" href="/guoyan"><img
                                src="http://photos.breadtrip.com/avatars_%E5%B0%8F%E9%83%ADgy_ed2b1b51c24e026f3a07eb761d3a8b87.jpg-avatar.m"
                                alt=""></a>
                        <div class="info">
                            <p class="fn-clear">
                                <span class="time"><i class="index-icons-time"></i>11小时前</span>
                                <a class="username one-row-ellipsis" target="_blank" href="/guoyan"
                                   title="小猪芬蒂克">小猪芬蒂克</a>
                            </p>
                            <a class="tripname one-row-ellipsis" title="冰岛环游" target="_blank" href="/trips/2387426340">冰岛环游</a>
                        </div>
                    </div>
                </div>

                <a class="pic" target="_blank" href="/trips/2387426340/#wp2364074168">
                    <img src="image/feed/feed1.jpg" alt="冰岛环游-2364074168" width="285" height="213" class="hidden">
                </a>

                <div class="bottom">

                    <p class="text">快到了</p>

                    <p class="tool"><a class="btn-like" target="_blank" href="/trips/2387426340/#wp2364074168"><i
                            class="fa fa-heart-o"></i>0</a><a class="btn-comment" target="_blank"
                                                              href="/trips/2387426340/#wp2364074168"><i
                            class="fa fa-comment-o"></i>0</a></p>
                </div>
            </li>
            <li class="feed">
                <div class="top fn-clear">
                    <div class="user">
                        <a class="avatar" target="_blank" href="/guoyan"><img
                                src="http://photos.breadtrip.com/avatars_%E5%B0%8F%E9%83%ADgy_ed2b1b51c24e026f3a07eb761d3a8b87.jpg-avatar.m"
                                alt=""></a>
                        <div class="info">
                            <p class="fn-clear">
                                <span class="time"><i class="index-icons-time"></i>11小时前</span>
                                <a class="username one-row-ellipsis" target="_blank" href="/guoyan"
                                   title="小猪芬蒂克">小猪芬蒂克</a>
                            </p>
                            <a class="tripname one-row-ellipsis" title="冰岛环游" target="_blank" href="/trips/2387426340">冰岛环游</a>
                        </div>
                    </div>
                </div>

                <a class="pic" target="_blank" href="/trips/2387426340/#wp2364074168">
                    <img src="image/feed/feed1.jpg" alt="冰岛环游-2364074168" width="285" height="213" class="hidden">
                </a>

                <div class="bottom">

                    <p class="text">快到了</p>

                    <p class="tool"><a class="btn-like" target="_blank" href="/trips/2387426340/#wp2364074168"><i
                            class="fa fa-heart-o"></i>0</a><a class="btn-comment" target="_blank"
                                                              href="/trips/2387426340/#wp2364074168"><i
                            class="fa fa-comment-o"></i>0</a></p>
                </div>
            </li>
            <li class="feed">
                <div class="top fn-clear">
                    <div class="user">
                        <a class="avatar" target="_blank" href="/guoyan"><img
                                src="http://photos.breadtrip.com/avatars_%E5%B0%8F%E9%83%ADgy_ed2b1b51c24e026f3a07eb761d3a8b87.jpg-avatar.m"
                                alt=""></a>
                        <div class="info">
                            <p class="fn-clear">
                                <span class="time"><i class="index-icons-time"></i>11小时前</span>
                                <a class="username one-row-ellipsis" target="_blank" href="/guoyan"
                                   title="小猪芬蒂克">小猪芬蒂克</a>
                            </p>
                            <a class="tripname one-row-ellipsis" title="冰岛环游" target="_blank" href="/trips/2387426340">冰岛环游</a>
                        </div>
                    </div>
                </div>

                <a class="pic" target="_blank" href="/trips/2387426340/#wp2364074168">
                    <img src="image/feed/feed1.jpg" alt="冰岛环游-2364074168" width="285" height="213" class="hidden">
                </a>

                <div class="bottom">

                    <p class="text">快到了</p>

                    <p class="tool"><a class="btn-like" target="_blank" href="/trips/2387426340/#wp2364074168"><i
                            class="fa fa-heart-o"></i>0</a><a class="btn-comment" target="_blank"
                                                              href="/trips/2387426340/#wp2364074168"><i
                            class="fa fa-comment-o"></i>0</a></p>
                </div>
            </li>

        </ul>
    </div>

    <!-- 热门足迹结束 -->
</div>

<%@include file="./public/page/footer.html"%>
<%@include file="./public/page/loginModal.html"%>
<script src="js/main.js"></script>
<script src="./public/js/public.js"></script>
</body>
</html>