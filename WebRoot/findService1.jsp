<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<script type="text/javascript">
function toIndex()
{
 window.location.href = "userIndex.jsp";
};

//$(document).ready
</script>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Ty
pe" content="text/html; charset=utf-8" />
<title>寻找服务</title>
<link rel="stylesheet" href="./node_modules/animate.css/animate.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" href="css/main.css">	
<!-- <link rel="stylesheet/less" type="text/css" href="css/style.less" /> -->
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/all.js"></script>
<!--[if IE 6]> 
<script src="./js/iepng.js" type="text/javascript"></script> 
<script type="text/javascript">
   EvPNG.fix('div, ul, img, li, input,span, p');
</script>
<![endif]-->
<style type="text/css">
.btn_disable{
background-color: grey;
}
</style>
</head>
<body> 
	<!-- header start -->
	<div class="zxcf_top_wper">
		<div class="zxcf_top px1000 clearfix">
			<div class="zxcf_top_l fl">
				<img src="images/zxcf_phone.png" alt="">
				400-027-0101(工作时间9:00-17:30) <a href="#"><img
					src="images/zxcf_weixin.png" alt=""></a> <a href="#"><img
					src="images/zxcf_sina.png" alt=""></a> <a href="#"><img
					src="images/zxcf_qq.png" alt=""></a>
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
			<div class="zxcf_nav_l fl">
				<img src="images/zxcf_logo.png" alt="">
			</div>
			<div class="zxcf_nav_r fr">
				<img src="images/zxcf_perinfo.png" alt=""> <span onclick="toIndex()">个人中心</span>
				</ul>
			</div>
		</div>
	</div>
	<div class="zxcf_menu_wper">
		<div class="zxcf_menu px1000">
			<a href="index1.jsp" class="zm_cura">首页</a> <a href="showtrack" class="zm_cura">热门服务</a>
			<a href="transpondSpace.jsp">已完成任务</a> <a href="#" style="margin-right:0;">关于我们</a>
		</div>
	</div>
	<!-- end  -->
	<div class="invest_con_wper">
		<div class="invest_con px1000">
			<div class="product_choose">
				<h2 class="product_tit clearfix">
					<em class="proall fl">全部服务产品</em>
					

				</h2>
				<div class="product_box">
					<div class="product_list">
						<div class="invest_prochoose">
							<p id="serviceStatus">
								<span>服务状态：</span><a href="#" class="inpro_cura" value="noLimit">不限</a>
								<a href="#" value="notCheck">正在招标的服务</a><a href="#" value="achieved">已成功的服务</a>
							</p>
							<p id="serviceTime">
								<span>提供住宿：</span><a href="#" class="inpro_cura" value="0">不限</a><a 
									href="#" value="1" id="roomTrue">是</a><a href="#" value="3" id="roomFalse">否</a>
							</p>
							<p id="serviceType">
								<span>服务类型：</span><a href="#" class="inpro_cura" value="noLimit">不限</a><a
									href="#" value="net">义工旅行</a><a href="#" value="tour">个人旅游</a>
							</p>
							<p id="serviceSalary">
								<span>服务地区：</span><a href="#" class="inpro_cura" value="noLimit">不限</a><a
									href="#" value="杭州">杭州</a><a href="#" value="北京">北京</a><a href="#" value="广州">广州</a><a
									href="#" value="西藏">西藏</a>
							</p>
							
						</div>
					</div>
					<!--  -->
					<div class="product_list" style="display:none;">2</div>
					<!--  -->
					<div class="product_list" style="display:none;">3</div>
					<!--  -->

				</div>
			</div>
			<!-- end block -->
			<h3 class="sort_tit mt30">
				<em>排序</em> <span>综合排序</span> 
				<span><input type="submit" value="收益率" style="background-color: transparent; border: 0;"/><img src="images/invest_jiantou.png" alt=""></span>
				 <span><input type="submit" value="发布时间" style="background-color: transparent; border: 0;"/><img src="images/invest_jiantou.png" alt=""></span> 
				 <span><input type="submit" value="服务周期" style="background-color: transparent; border: 0;"/><img src="images/invest_jiantou.png" alt=""></span>
			</h3>
			<div id="resultList" class="product_list mt20">
					<ul class="guides animated bounceInUp">
							<li>
								<a href="#" class="cover detail" title="走在大阪，感受大阪的无穷魅力">
									<img src="image/guide/guide1.jpg" alt="guide1" class="guide-cover">
								</a>
								<a href="#" class="name detail" title="走在大阪，感受大阪的无穷魅力">走在大阪，感受大阪的无穷魅力</a>
								<div class="info">
									<p>
										<span class="guide-name">张晓琛</span>
									</p>
									<p>
										<span class="guide-pos">日本 - 大阪</span>
										<span class="guide-job">专业向导</span>
									</p>
									<p>
										<span class="guide-service">提供服务：</span>
										<span class="guide-service-content" id="detail">5445081101750315</span>
									</p>
									<p>
										<span>义工旅行：</span>
										<span class="guide-voluntorism"></span>
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
									<p>
											<span class="guide-service">提供服务：</span>
											<span class="guide-service-content"></span>
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
									<p>
											<span class="guide-service">提供服务：</span>
											<span class="guide-service-content"></span>
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
									<p>
											<span class="guide-service">提供服务：</span>
											<span class="guide-service-content"></span>
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
									<p>
											<span class="guide-service">提供服务：</span>
											<span class="guide-service-content"></span>
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
									<p>
											<span class="guide-service">提供服务：</span>
											<span class="guide-service-content"></span>
										</p>
								</div>
							</li>
							
						</ul>
				<!-- <div class="prolist_one prolist_one_bl01 mt20">
					<h2 class="prolist_one_tit">
						<span>类型</span>服务名字
					</h2>
					<ul class="prolist_one_ul clearfix">
						<li>服务内容：<strong>12.49%</strong><br> 付款方式：支付宝微信
						</li>
						<li>服务时间：<i>308</i>天<br> 保障机构：畅游儿股份有限公司
						</li>
						<li class="prolist_press">服务酬劳：<strong>9,900.00</strong> 元 <br>
							认购进度：<span class="ui-progressbar-mid ui-progressbar-mid-100">100%</span>
						</li>
						<li class="prolist_btn"><a href="11112/detail.html"
							class="pro_btn">立即服务</a></li>
					</ul>
				</div>
				<!-- end one -->
				
				
			
				
				<!-- <div class="prolist_one prolist_one_bl03 prolist_onebg mt20">
					<h2 class="prolist_one_tit">
						<span class="pro_spanbg03">抵押</span>汽车销售服务企业补充流动资金（三期）
					</h2>
					<ul class="prolist_one_ul clearfix">
						<li>年华收益：<strong>12.49%</strong><br> 还款方式：按月付息，到期还本
						</li>
						<li>剩余期限：<i>308</i>天<br> 保障机构：中融兴业融资担保有限公司
						</li>
						<li class="prolist_press">募集金额：<strong>9,900.00</strong> 元 <br>
							认购进度：<span class="ui-progressbar-mid ui-progressbar-mid-100">100%</span>
						</li>
						<li class="prolist_btn"><a href="#"
							class="pro_btn pro_btnbg02">已完成</a></li>
					</ul>
				</div> --> -->
				<!-- end one -->
				<!-- pagelink -->
				<p class="pagelink">
					<a href="#" class="pglink_cura">1</a> <a href="#">2</a> <a href="#">3</a>
					<a href="#">下一页</a>
				</p>
				<!-- pagelink end -->

			</div>
		</div>
	</div>
	<!-- footer start -->
	<div class="zscf_aboutus_wper">
		<div class="zscf_aboutus px1000 clearfix">
			<div class="zscf_aboutus_l fl">
				<ul class="zscf_aboutus_lul clearfix">
					<li class="pt10"><a href="#"><img src="images/app.png"
							alt=""></a></li>
					<li>
						<p class="pb20">服务热线</p> <strong>400-027-0101</strong>
					</li>
					<li>
						<p class="pb10 linkpic">
							<a href="#"><img src="images/ft_sina.png" alt=""></a> <a
								href="#"><img src="images/ft_weixin.png" alt=""></a> <a
								href="#"><img src="images/ft_erji.png" alt=""></a>
						</p>
						<p>
							<a href="#">yulei@changyouer.com</a>
						</p>
					</li>
				</ul>
			</div>
			<!-- end left -->
			<div class="zscf_aboutus_r fl clearfix">
				<a href="#" class="fl ft_ewm"><img src="images/ft_erweima.png"
					alt=""></a>
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
			<p class="fl">
				© 2014 zhongxincaifu &nbsp; &nbsp;&nbsp; 中兴财富金融信息服务股份有限公司
				&nbsp;&nbsp;&nbsp; 来源:<a href="http://www.mycodes.net/"
					target="_blank">源码之家</a>
			</p>
			<p class="fr">
				<a href="#"><img src="images/360.png" alt=""></a> <a href="#"><img
					src="images/kexin.png" alt=""></a> <a href="#"><img
					src="images/norton.png" alt=""></a>
			</p>
		</div>
	</div>
	<!-- footer end -->
	<script src="./js/findService.js"></script> 
</body>
</html>