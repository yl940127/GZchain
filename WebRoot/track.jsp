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
    <link rel="stylesheet" href="./css/track.css">
    <link rel="stylesheet" href="./public/css/trackBox.css">
    <script src="node_modules/jquery/dist/jquery.min.js"></script>
    <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="node-modules/animejs/anime.js"></script>
    <script src="node_modules/masonry-layout/dist/masonry.pkgd.js"></script>
</head>
<body>
  
	<%@include file="./public/page/header.html" %>>
    <div class="container content-box">
     
        <div class="container-fluid animated bounceIn" id="masnory">
            <div class="box feed">
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
                                    class="fa fa-heart-o"></i>1</a><a class="btn-comment" target="_blank"
                                                                      href="/trips/2387426340/#wp2364074168"><i
                                    class="fa fa-comment-o"></i>4</a></p>
                        </div>
            </div>
            <div class="box feed">
                    <div class="top fn-clear">
                            <div class="user">
                                <a class="avatar" target="_blank" href="/guoyan"><img
                                        src="./image/track1.jpg"
                                        alt=""></a>
                                <div class="info">
                                    <p class="fn-clear">
                                        <span class="time"><i class="index-icons-time"></i>2小时前</span>
                                        <a class="username one-row-ellipsis" target="_blank" href="/guoyan"
                                           title="shan1230">shan1230</a>
                                    </p>
                                    <a class="tripname one-row-ellipsis" title="巴厘岛游行" target="_blank" href="/trips/2387426340">巴厘岛游行</a>
                                </div>
                            </div>
                        </div>
        
                        <a class="pic" target="_blank" href="/trips/2387426340/#wp2364074168">
                            <img src="./image/track5.jpg" alt="冰岛环游-2364074168" width="285" height="213" class="hidden">
                        </a>
        
                        <div class="bottom">
        
                            <p class="text">泰国奶茶</p>
        
                            <p class="tool"><a class="btn-like" target="_blank" href="/trips/2387426340/#wp2364074168"><i
                                    class="fa fa-heart-o"></i>10</a><a class="btn-comment" target="_blank"
                                                                      href="/trips/2387426340/#wp2364074168"><i
                                    class="fa fa-comment-o"></i>4</a></p>
                        </div>
            </div>
            <div class="box feed">
                    <div class="top fn-clear">
                            <div class="user">
                                <a class="avatar" target="_blank" href="/guoyan"><img
                                        src="./image/track2.jpg"
                                        alt=""></a>
                                <div class="info">
                                    <p class="fn-clear">
                                        <span class="time"><i class="index-icons-time"></i>1小时前</span>
                                        <a class="username one-row-ellipsis" target="_blank" href="/guoyan"
                                           title="孙岛主">孙岛主</a>
                                    </p>
                                    <a class="tripname one-row-ellipsis" title="众神花园-北海道" target="_blank" href="/trips/2387426340">众神花园-北海道</a>
                                </div>
                            </div>
                        </div>
        
                        <a class="pic" target="_blank" href="/trips/2387426340/#wp2364074168">
                            <img src="./image/track4.jpg" alt="冰岛环游-2364074168" width="285" height="213" class="hidden">
                        </a>
        
                        <div class="bottom">
        
                            <p class="text">白酱油拉面</p>
        
                            <p class="tool"><a class="btn-like" target="_blank" href="/trips/2387426340/#wp2364074168"><i
                                    class="fa fa-heart-o"></i>5</a><a class="btn-comment" target="_blank"
                                                                      href="/trips/2387426340/#wp2364074168"><i
                                    class="fa fa-comment-o"></i>5</a></p>
                        </div>
            </div>
            <div class="box feed">
                    <div class="top fn-clear">
                            <div class="user">
                                <a class="avatar" target="_blank" href="/guoyan"><img
                                        src="./image/track3.jpg"
                                        alt=""></a>
                                <div class="info">
                                    <p class="fn-clear">
                                        <span class="time"><i class="index-icons-time"></i>7小时前</span>
                                        <a class="username one-row-ellipsis" target="_blank" href="/guoyan"
                                           title="妖娆地主婆">妖娆地主婆</a>
                                    </p>
                                    <a class="tripname one-row-ellipsis" title="去南方拉长夏天的尾巴" target="_blank" href="/trips/2387426340">去南方拉长夏天的尾巴</a>
                                </div>
                            </div>
                        </div>
        
                        <a class="pic" target="_blank" href="/trips/2387426340/#wp2364074168">
                            <img src="./image/track3.jpg" alt="冰岛环游-2364074168" width="285" height="213" class="hidden">
                        </a>
        
                        <div class="bottom">
        
                            <p class="text">圣佩特罗堡是菲律宾最古老的城堡之一</p>
        
                            <p class="tool"><a class="btn-like" target="_blank" href="/trips/2387426340/#wp2364074168"><i
                                    class="fa fa-heart-o"></i>9</a><a class="btn-comment" target="_blank"
                                                                      href="/trips/2387426340/#wp2364074168"><i
                                    class="fa fa-comment-o"></i>8</a></p>
                        </div>
            </div>
            <div class="box feed">
                    <div class="top fn-clear">
                            <div class="user">
                                <a class="avatar" target="_blank" href="/guoyan"><img
                                        src="./image/track4.jpg"
                                        alt=""></a>
                                <div class="info">
                                    <p class="fn-clear">
                                        <span class="time"><i class="index-icons-time"></i>9小时前</span>
                                        <a class="username one-row-ellipsis" target="_blank" href="/guoyan"
                                           title="小猪芬蒂克">shan123</a>
                                    </p>
                                    <a class="tripname one-row-ellipsis" title="川西行" target="_blank" href="/trips/2387426340">川西行</a>
                                </div>
                            </div>
                        </div>
        
                        <a class="pic" target="_blank" href="/trips/2387426340/#wp2364074168">
                            <img src="./image/track1.jpg" alt="冰岛环游-2364074168" width="285" height="213" class="hidden">
                        </a>
        
                        <div class="bottom">
        
                            <p class="text">中午途经炉霍县。</p>
        
                            <p class="tool"><a class="btn-like" target="_blank" href="/trips/2387426340/#wp2364074168"><i
                                    class="fa fa-heart-o"></i>11</a><a class="btn-comment" target="_blank"
                                                                      href="/trips/2387426340/#wp2364074168"><i
                                    class="fa fa-comment-o"></i>3</a></p>
                        </div>
            </div>
            <div class="box feed">
                    <div class="top fn-clear">
                            <div class="user">
                                <a class="avatar" target="_blank" href="/guoyan"><img
                                        src="./image/track5.jpg"
                                        alt=""></a>
                                <div class="info">
                                    <p class="fn-clear">
                                        <span class="time"><i class="index-icons-time"></i>5小时前</span>
                                        <a class="username one-row-ellipsis" target="_blank" href="/guoyan"
                                           title="小猪芬蒂克">小猪芬蒂克</a>
                                    </p>
                                    <a class="tripname one-row-ellipsis" title="冰岛环游" target="_blank" href="/trips/2387426340">冰岛环游</a>
                                </div>
                            </div>
                        </div>
        
                        <a class="pic" target="_blank" href="/trips/2387426340/#wp2364074168">
                            <img src="./image/track2.jpg" alt="冰岛环游-2364074168" width="285" height="213" class="hidden">
                        </a>
        
                        <div class="bottom">
        
                            <p class="text">古堡， 艳阳。</p>
        
                            <p class="tool"><a class="btn-like" target="_blank" href="/trips/2387426340/#wp2364074168"><i
                                    class="fa fa-heart-o"></i>22</a><a class="btn-comment" target="_blank"
                                                                      href="/trips/2387426340/#wp2364074168"><i
                                    class="fa fa-comment-o"></i>1</a></p>
                        </div>
            </div>
        </div>

        <div class="footer">
            <button type="button" class="btn btn-default" id="btn-more">加载更多</button>
        </div>
    </div>            
	
  
    
    <script src="./js/track.js"></script>
</body>
</html>
