<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
	<title>detail</title>
<link rel="stylesheet" type="text/css" href="11112/css/style.css">
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
		 	<a href="login.jsp" class="curspan">立即登录</a>
		 	<span>|</span>
		 	<a href="register.jsp">免费注册</a>
		 	<span>|</span>
		 	<a href="#">常见问题</a>
		 </div>
	</div>
</div>
<!-- end top -->
<div class="zxcf_nav_wper">
	<div class="zxcf_nav clearfix px1000">
		 <div class="zxcf_nav_l fl"><img src="images/zxcf_logo.png" alt=""></div>
		 <div class="zxcf_nav_r fr">
		 	<img src="images/zxcf_perinfo.png" alt="">
		 	<span>个人中心
		 	<img src="images/zxcf_icon01.png" alt=""></span>
		 	<ul class="zxcf_perinfo" style="display:none;">
		 		<li><a href="#">111</a></li>
		 		<li><a href="#">111</a></li>
		 		<li><a href="#">111</a></li>
		 	</ul>
		 </div>
	</div>
</div>
<div class="zxcf_menu_wper">
	<div class="zxcf_menu px1000">
		  <div class="zxcf_menu px1000">
			<a href="index.jsp" class="zm_cura">首页</a> <a href="track.jsp">热门足迹</a>
			
			<a href="#">新手指引</a> <a href="#" style="margin-right:0;">关于我们</a>
		</div>
	</div>
</div>
<!-- end  -->
<div class="zxcf_detail_wper">
	  <div class="zxcf_detail px1000">
	  	     <div class="detail_intro clearfix">
	  	     	    <div class="detail_intro_l fl">
	  	     	    	  <div class="detail_introl_tit clearfix">
	  	     	    	  	  <div class="det_introl_tit_l fl">
	  	     	    	  	  	   <span>类型</span> introduce
	  	     	    	  	  </div>
	  	     	    	  	  <!-- end l -->
	  	     	    	  	  <div class="det_introl_tit_r fr">
	  	     	    	  	  	  保障级别：A级 <img src="images/det_wenhao.png" alt="">
	  	     	    	  	  </div>
	  	     	    	  </div>
	  	     	    	  <!-- end tit -->
	  	     	    	  <div class="det_intro_text mr20">
	  	     	    	  	    <ul class="det_intro_tul clearfix">
	  	     	    	  	    	<li>
	  	     	    	  	    		服务酬劳<br>
	  	     	    	  	    		 <span style="color:#ff7112;">
	  	     	    	  	    		 	 <strong>120	</strong>元
	  	     	    	  	    		 </span>
	  	     	    	  	    	</li>
	  	     	    	  	    	<li>
	  	     	    	  	    		提供服务<br>
	  	     	    	  	    		 <span style="color:#ff7112;">
	  	     	    	  	    		 	
	  	     	    	  	    		 </span>
	  	     	    	  	    	</li>
	  	     	    	  	    	<li>
	  	     	    	  	    		 服务周期<br>
	  	     	    	  	    		 <span>
	  	     	    	  	    		 	 <strong>12</strong>月
	  	     	    	  	    		 </span>
	  	     	    	  	    	</li>
                                  

	  	     	    	  	    </ul>
	  	     	    	  	    <!-- end  -->
	  	     	    	  	    <ul class="det_intro_tul2 clearfix">
	  	     	    	  	    	<li>
	  	     	    	  	    		发布日期：2015-07-08
	  	     	    	  	    	</li>
	  	     	    	  	    	
	  	     	    	  	    	<li>
	  	     	    	  	    		       保障机构：Flytrip畅游儿股份公司
	  	     	    	  	    	</li>
	  	     	    	  	    	
	  	     	    	  	    </ul>
	  	     	    	  </div>
	  	     	    	  <!-- end text -->
	  	     	    </div>
	  	     	    <div class="detail_intro_r fr">
	  	     	   
	  	     	    	  <h2 class="det_intro_h2 clearfix"><span class="fl">服务状态:</span><em class="fr">未服务</em></h2>
	  	     	    	  <img src="images/y.jpg" alt="">
                          <p><input type="submit" id="submit-btn" class=" pro_btn det_btn" value="立即服务"></input></p>
	  	     	    </div>
	  	     </div>
	  	     <!-- end block1 -->
	  	     <div class="detail_con mt30">
	  	     	   <!-- <h2 class="detail_con_tit clearfix">
	  	     	   	   <span class="det_tit_curspan">项目描述</span>
	  	     	   	   <span>风控信息</span>
	  	     	   	   <span>贷后管理</span>
	  	     	   	   <span>投标记录<i>10</i></span>
	  	     	   </h2> -->
	  	     	   <div class="det_con_box">
	  	     	   	      <div class="det_con_proone clearfix">
	  	     	   	           <div class="det_l_box fl">

	  	     	   	            <div class="det_proone_l">
	  	     	   	            	   <h2 class="det_proone_tit">具体内容</h2>
	  	     	   	            	   <div class="det_clsj ">
	  	     	   	            	   	   <p>关于在这座城市的我

大家好！我是马立国，大家都亲切地叫我“小马”，现住在日本大阪，在日本的生活中，从南到北从东到西，我走过了日本大大小小的城市。遍布京都的寺院、神社充满了古都的韵味，奈良公园奔跑的小鹿充满了灵性，北海道美味螃蟹、山梨县美丽的富士山、东京展现的现代日本风貌，我看过了太多太多的风景，想讲给你太多太多的故事，如果你走近我，我带你走近最真实的日本。

每次出行前我都会认真做好准备工作，不仅仅是各种</p>
	  	     	   	            	   
	  	     	   	            	   </div>
	  	     	   	            	   <div class="det_clsj ">
	  	     	   	            	     <img src="images/det_pic01.png" alt="">
	  	     	   	            	   </div>
	  	     	   	            	    <div class="det_clsj ">
	  	     	   	            	     <img src="images/det_pic02.png" alt="">
	  	     	   	            	   </div>
	  	     	   	            	   <h2 class="det_proone_tit mt30">基本信息</h2>
	  	     	   	            	    <div class="det_clsj ">
	  	     	   	            	        小马人非常好，很稳重，一路上尽心尽力，在没下单的时候就积极帮我们计划行程，到酒店后积极主动帮我们安排住宿，定晚餐，还带我们吃了我觉得是我吃到的日本最好吃的拉面，在大阪环球影城玩的快结束的时候下起了雨，小马立马跑去给我们去车上取他备在车上的雨伞，等我们出来的时候车早就从停车场取出来停在路边，方便我们上车，一路上耐心细致讲解，还非常耐心的陪我们逛街，主动帮妈妈拿购物袋，我们变换行程去奥特莱斯，一路上也是不厌其烦，一直陪在爸妈身边，主动帮忙询问商品型号，价格，提购物袋，一路上还兼职摄影师，对了！车子是新车，车技赞赞的！！！分别的时候还要一直陪我们等到下个丸子来才放心离开！下次来还会找他，小伙伴们放心找小马吧！
	  	     	   	            	    </div>
	  	     	   	            	     
	  	     	   	            </div>
	  	     	   	            <!-- end 项目描述 -->
	  	     	   	            <div class="det_proone_l" style="display:none;">
	  	     	   	            	 <h2 class="det_proone_tit">项目评估</h2>
	  	     	   	            	 <!--  -->
	  	     	   	            	 <div class="company-msg-option ppd-company-option2 show">
	  	     	   	            	 <div class="project-assess clearfix">
                                <ul class="project-assess-pt1">
                                    <li>
                                        <div class="small-tit">基本信息</div>
                                        <div class="progress-bar">
                                            <div class="progress-bar-in" style="width:93%"></div>
                                        </div>
                                        <div class="progress-bar-txt">93分</div>
                                    </li>
                                    <li>
                                        <div class="small-tit">财务实力</div>
                                        <div class="progress-bar">
                                            <div class="progress-bar-in" style="width:89%"></div>
                                        </div>
                                        <div class="progress-bar-txt">89分</div>
                                    </li>
                                    <li>
                                        <div class="small-tit">经营情况</div>
                                        <div class="progress-bar">
                                            <div class="progress-bar-in" style="width:93%"></div>
                                        </div>
                                        <div class="progress-bar-txt">93分</div>
                                    </li>
                                    <li>
                                        <div class="small-tit">偿还能力</div>
                                        <div class="progress-bar">
                                            <div class="progress-bar-in" style="width:95%"></div>
                                        </div>
                                        <div class="progress-bar-txt">95分</div>
                                    </li>
                                    <li>
                                        <div class="small-tit">实际控制人</div>
                                        <div class="progress-bar">
                                            <div class="progress-bar-in" style="width:89%"></div>
                                        </div>
                                        <div class="progress-bar-txt">89分</div>
                                    </li>
                                </ul>
                                <div class="project-assess-pt2" style=" color: #ff5a00;">
                                    <p class="p1">92<span class="small-txt" style="font-size:12px;">分</span></p>
                                    <p class="p2">综合信用评分</p>
                                </div>
                                <div class="project-assess-pt3" >
                                    <p class="p1">AAA</p>
                                    <p class="p2">综合信用等级</p>                                
                                </div>
                            </div>
                            </div>
                            <!--  -->
                                   <h2 class="det_proone_tit">项目保障</h2>
                                   <!--  -->

                                    <div class="prject-guarantee">
                                <dl class="dl1 clearfix">
                                    <dt>担保方</dt>
                                    <dd><em class="company-logo-sprite" style="background:url(https://dn-licaifan-upload.qbox.me/uploads/admin/e9fb6a4feac008a08ab67dc3dc2244a2.png)"></em><span><a href="/vouch/detail/8" target="_blank">金达融资担保有限责任公司</a></span></dd>
                                </dl>
                                <dl class="dl2 clearfix">
                                    <dt style="height:200px;line-height:20px;">保障措施</dt>
                                    <dd>
                                        <p>1、担保机构提供不可撤销的连带责任担保，对本息100%保障；</p><p>2、担保机构按规定计提30%的担保费作为风险保障金，由理财范与担保公司共同监管；</p><p>3、借款企业提供足值抵押物；</p><p>4、借款企业实际控制人向债权人提供连带保证；</p><p>5、北京***企业提供连带保证。</p><p><br></p>                                    </dd>
                                </dl>
                            </div>
                                   <!--  -->
                                     <h2 class="det_proone_tit">抵押物信息</h2>
                                     <div class="det_dywxx_ul">借款企业提供一处面积为6308.97平方米、评估价值2086.38万元的房产作抵押。</div>
                                     <!-- end 抵押物信息 -->
                                     <h2 class="det_proone_tit">风险控制措施</h2>
                                     <ul class="det_dywxx_ul">
                                     	 <li>1、借款企业提供足值的抵押物；</li>
											<li>2、借款企业法人提供个人连带保证；</li>
											<li>3、北京***企业提供连带保证；</li>
											<li>4、担保公司及理财范平台将执行严格的贷后管理制度。</li>
                                     </ul>
                                     <!-- end 风险控制 -->
                                      <h2 class="det_proone_tit">担保机构意见</h2>
                                     <div class="det_dywxx_ul">借款企业提供一处面积为6308.97平方米、评估价值2086.38万元的房产作抵押。</div>
                                     <!-- end 抵押物信息 -->
	  	     	   	            </div>
	  	     	   	            <!-- end fk -->
	  	     	   	            <div class="det_proone_l" style="display:none;">
	  	     	   	            	 <h2 class="det_proone_tit">放款通知</h2>
	  	     	   	            	 <p class="dhgl_p1"><img src="images/1.jpg" alt="">融资成功,企业正在还款</p>
	  	     	   	            	 <h2 class="det_proone_tit">还款概况</h2>
	  	     	   	            	 <ul  class="dhgl_ul">
	  	     	   	            	 	 <li>
	  	     	   	            	 	    <img src="images/2.jpg" alt="">
	  	     	   	            	 	    <span>应付利息</span>
	  	     	   	            	 	    <span>123213.4元（12期）</span>
	  	     	   	            	 	 </li>
	  	     	   	            	 	 <li>
	  	     	   	            	 	    &nbsp;<img src="images/3.jpg" alt="">
	  	     	   	            	 	    <span>应付利息</span>
	  	     	   	            	 	    <span>123213.4元（12期）</span>
	  	     	   	            	 	 </li>
	  	     	   	            	 	 <li>
	  	     	   	            	 	    &nbsp;<img src="images/4.jpg" alt="">
	  	     	   	            	 	    <span>应付利息</span>
	  	     	   	            	 	    <span>123213.4元（12期）</span>
	  	     	   	            	 	 </li>
	  	     	   	            	 	 <li>
	  	     	   	            	 	    <img src="images/5.jpg" alt="">
	  	     	   	            	 	    <span>应付利息</span>
	  	     	   	            	 	    <span>123213.4元（12期）</span>
	  	     	   	            	 	 </li>

	  	     	   	            	 </ul>
	  	     	   	            	 <h2 class="det_proone_tit">还款明细</h2>
                                     <div class="pl20 pr20 pt20">
                                       <table class="dhgl_table">
	  	     	   	            	 	 <tr style="border-bottom:none;">
	  	     	   	            	 	 	 <th>还款日期</th>
	  	     	   	            	 	 	 <th>还款类型</th>
	  	     	   	            	 	 	 <th>还款金额</th>
	  	     	   	            	 	 	 <th>还款状态</th>
	  	     	   	            	 	 </tr>
	  	     	   	            	 	 <tr>
	  	     	   	            	 	 	  <td>2015-11</td>
	  	     	   	            	 	 	  <td>利息</td>
	  	     	   	            	 	 	  <td>82333.23元</td>
	  	     	   	            	 	 	  <td>未到期</td>
	  	     	   	            	 	 </tr>
	  	     	   	            	 	 <tr>
	  	     	   	            	 	 	  <td>2015-11</td>
	  	     	   	            	 	 	  <td>利息</td>
	  	     	   	            	 	 	  <td>82333.23元</td>
	  	     	   	            	 	 	  <td>未到期</td>
	  	     	   	            	 	 </tr>
	  	     	   	            	 	 <tr>
	  	     	   	            	 	 	  <td>2015-11</td>
	  	     	   	            	 	 	  <td>利息</td>
	  	     	   	            	 	 	  <td>82333.23元</td>
	  	     	   	            	 	 	  <td>未到期</td>
	  	     	   	            	 	 </tr>
	  	     	   	            	 	 <tr>
	  	     	   	            	 	 	  <td>2015-11</td>
	  	     	   	            	 	 	  <td>利息</td>
	  	     	   	            	 	 	  <td>82333.23元</td>
	  	     	   	            	 	 	  <td>未到期</td>
	  	     	   	            	 	 </tr>
	  	     	   	            	 	 <tr>
	  	     	   	            	 	 	  <td>2015-11</td>
	  	     	   	            	 	 	  <td>利息</td>
	  	     	   	            	 	 	  <td>82333.23元</td>
	  	     	   	            	 	 	  <td>未到期</td>
	  	     	   	            	 	 </tr>
	  	     	   	            	 	 <tr>
	  	     	   	            	 	 	  <td>2015-11</td>
	  	     	   	            	 	 	  <td>利息</td>
	  	     	   	            	 	 	  <td>82333.23元</td>
	  	     	   	            	 	 	  <td>未到期</td>
	  	     	   	            	 	 </tr>
	  	     	   	            	   </table>
	  	     	   	            	 </div>
	  	     	   	            	 
	  	     	   	            </div>
	  	     	   	            <!-- end dhgl -->
	  	     	   	            <div class="det_proone_l" style="display:none;">
	  	     	   	            	  <P class="det_tbjl_tit">
	  	     	   	            	     <span class="mr30"><img src="images/det_tbjl_pic01.png" alt=""> 
	  	     	   	            	     目前总金额：￥21,122.00</span>
	  	     	   	            	     <span><img src="images/det_tbjl_pic02.png" alt=""> 
	  	     	   	            	     剩余金额：￥123,123.00</span>
	  	     	   	            	  </P>
	  	     	   	            	  <table class="det_table">
	  	     	   	            	  	  <tr class="det_table_head" style="height:40px;">
	  	     	   	            	  	  	  <td>投资用户</td>
	  	     	   	            	  	  	  <td>投资金额</td>
	  	     	   	            	  	  	  <td class="det_w1160">投资时间</td>
	  	     	   	            	  	  	  <td>状态</td>
	  	     	   	            	  	  </tr>
	  	     	   	            	  	  <tr>
	  	     	   	            	  	  	  <td>0****</td>
	  	     	   	            	  	  	  <td>10000.00元</td>
	  	     	   	            	  	  	  <td>2015-07-08 18:08:05</td>
	  	     	   	            	  	  	  <td>手动投标</td>
	  	     	   	            	  	  </tr>
                                          <tr>
	  	     	   	            	  	  	  <td>0****</td>
	  	     	   	            	  	  	  <td>10000.00元</td>
	  	     	   	            	  	  	  <td>2015-07-08 18:08:05</td>
	  	     	   	            	  	  	  <td>手动投标</td>
	  	     	   	            	  	  </tr>
                                          <tr>
	  	     	   	            	  	  	  <td>0****</td>
	  	     	   	            	  	  	  <td>10000.00元</td>
	  	     	   	            	  	  	  <td>2015-07-08 18:08:05</td>
	  	     	   	            	  	  	  <td>手动投标</td>
	  	     	   	            	  	  </tr>
                                          <tr>
	  	     	   	            	  	  	  <td>0****</td>
	  	     	   	            	  	  	  <td>10000.00元</td>
	  	     	   	            	  	  	  <td>2015-07-08 18:08:05</td>
	  	     	   	            	  	  	  <td>手动投标</td>
	  	     	   	            	  	  </tr>
                                          <tr>
	  	     	   	            	  	  	  <td>0****</td>
	  	     	   	            	  	  	  <td>10000.00元</td>
	  	     	   	            	  	  	  <td>2015-07-08 18:08:05</td>
	  	     	   	            	  	  	  <td>手动投标</td>
	  	     	   	            	  	  </tr>
                                          <tr>
	  	     	   	            	  	  	  <td>0****</td>
	  	     	   	            	  	  	  <td>10000.00元</td>
	  	     	   	            	  	  	  <td>2015-07-08 18:08:05</td>
	  	     	   	            	  	  	  <td>手动投标</td>
	  	     	   	            	  	  </tr>
                                          <tr>
	  	     	   	            	  	  	  <td>0****</td>
	  	     	   	            	  	  	  <td>10000.00元</td>
	  	     	   	            	  	  	  <td>2015-07-08 18:08:05</td>
	  	     	   	            	  	  	  <td>手动投标</td>
	  	     	   	            	  	  </tr>
                                          <tr>
	  	     	   	            	  	  	  <td>0****</td>
	  	     	   	            	  	  	  <td>10000.00元</td>
	  	     	   	            	  	  	  <td>2015-07-08 18:08:05</td>
	  	     	   	            	  	  	  <td>手动投标</td>
	  	     	   	            	  	  </tr>
                                          <tr>
	  	     	   	            	  	  	  <td>0****</td>
	  	     	   	            	  	  	  <td>10000.00元</td>
	  	     	   	            	  	  	  <td>2015-07-08 18:08:05</td>
	  	     	   	            	  	  	  <td>手动投标</td>
	  	     	   	            	  	  </tr>
                                          <tr>
	  	     	   	            	  	  	  <td>0****</td>
	  	     	   	            	  	  	  <td>10000.00元</td>
	  	     	   	            	  	  	  <td>2015-07-08 18:08:05</td>
	  	     	   	            	  	  	  <td>手动投标</td>
	  	     	   	            	  	  </tr>
                                          
	  	     	   	            	  </table>
	  	     	   	            </div>
	  	     	   	            <!-- end tbjl -->
	  	     	   	           </div> 
	  	     	   	            <!-- end l -->

	  	     	   	      	    <div class="det_proone_r fl">
	  	     	   	      	    	   <h3>项目资质审核</h3>
	  	     	   	      	    	   <ul class="det_proone_rul">
	  	     	   	      	    	   	   <li class="clearfix">
	  	     	   	      	    	   	   	  <span class="fl mr15">
	  	     	   	      	    	   	   	  	  <img src="images/det_dbh01.png" alt=""><br><br>
	  	     	   	      	    	   	   	  	  担保函
	  	     	   	      	    	   	   	  	  
	  	     	   	      	    	   	   	  </span>
	  	     	   	      	    	   	   	   <span class="fl">
	  	     	   	      	    	   	   	  	  <img src="images/det_dbh02.png" alt=""><br><br>
	  	     	   	      	    	   	   	  	  身份证
	  	     	   	      	    	   	   	  	 
	  	     	   	      	    	   	   	  </span>
	  	     	   	      	    	   	   </li>
	  	     	   	      	    	   	   <li class="clearfix">
	  	     	   	      	    	   	   	  <span class="fl mr15">
	  	     	   	      	    	   	   	  	  <img src="images/det_dbh01.png" alt=""><br><br>
	  	     	   	      	    	   	   	  	  担保函
	  	     	   	      	    	   	   	  	  
	  	     	   	      	    	   	   	  </span>
	  	     	   	      	    	   	   	   <span class="fl">
	  	     	   	      	    	   	   	  	  <img src="images/det_dbh02.png" alt=""><br><br>
	  	     	   	      	    	   	   	  	  身份证
	  	     	   	      	    	   	   	  	 
	  	     	   	      	    	   	   	  </span>
	  	     	   	      	    	   	   </li>
	  	     	   	      	    	   </ul>
	  	     	   	      	    </div>
	  	     	   	      	    <!-- end r -->
	  	     	   	      </div>
	  	     	   	      <!-- end 项目描述 -->
	  	     	   	      
	  	     	   </div>
	  	     </div>
	  	     <!-- end block2 -->
	  	     <!-- 用户评论开始 -->
	  	     <div class="det_comment mt30">
	  	     	   <h2 class="det_comment_tit">用户评论</h2>
	  	     	   <div class="det_comment_text clearfix">
	  	     	   	   <div class="comment_l fl pl30">
	  	     	   	   	   <img src="images/comment_pic02.png" alt="">
	  	     	   	   </div>
	  	     	   	   <!-- end l -->
	  	     	   	   <div class="comment_r fl ml20">
	  	     	   	   	   <textarea name="" id="comment_content" cols="30" rows="10"></textarea>
	  	     	   	   </div>
	  	     	   	   <!-- end r -->
	  	     	   </div>
	  	     	   <div class="comment_btn clearfix">
	  	     	   	   <a href="#" class="det_btn">提交</a>
	  	     	   </div>
	  	     	   <div class="comment_show">
	  	     	   	     <ul class="comment_show_ul">
	  	     	   	     	 <li class="clearfix">
	  	     	   	     	 <span class="fl mr30">
	  	     	   	     	   <img src="images/comment_pic03.png" alt="">	
	  	     	   	     	 </span>
	  	     	   	     	 <div class="fl ml">
	  	     	   	     	 	  <h3>发布的风向 标</h3>
	  	     	   	     	 	  <p><img src="images/comment_pic04.png" alt=""></p>
	  	     	   	     	 	  <p>前天 13:40</p>
	  	     	   	     	 </div>
	  	     	   	     	 </li>
	  	     	   	     	 <li class="clearfix">
	  	     	   	     	 <span class="fl mr30">
	  	     	   	     	   <img src="images/comment_pic03.png" alt="">	
	  	     	   	     	 </span>
	  	     	   	     	 <div class="fl ml">
	  	     	   	     	 	  <h3>发布的风向 标</h3>
	  	     	   	     	 	  <p><img src="images/comment_pic04.png" alt=""></p>
	  	     	   	     	 	  <p>前天 13:40</p>
	  	     	   	     	 </div>
	  	     	   	     	 </li>
	  	     	   	     </ul>
	  	     	   </div>
	  	     </div>
	  	     <!-- 用户评结束 -->
	  </div>
</div>
<!-- end con -->
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
	  	    	   	  	  <p><a href="#">yulei@changyouer.com</a></p>
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
		  <p class="fl">© 2014 zhongxincaifu &nbsp;  &nbsp;&nbsp;   中兴财富金融信息服务股份有限公司 &nbsp;&nbsp;&nbsp;    来源:<a href="http://www.mycodes.net/" target="_blank">源码之家</a></p>
		  <p class="fr">
		    <a href="#"><img src="images/360.png" alt=""></a>
		    <a href="#"><img src="images/kexin.png" alt=""></a>
		    <a href="#"><img src="images/norton.png" alt=""></a>
		  </p>
	</div>
</div>
<!-- footer end -->
<script>
	$('.det_btn').click(function () {
		$('.comment_show_ul').append($('.comment_show_ul li').eq(0).clone(true));
		$('.comment_show_ul li:last-child').find('h3').text('sizeof');
		$('.comment_show_ul li:last-child').find('p:eq(0)').text($('#comment_content').val());
		return false;
	});
	
	$('#submit-btn').click(function () {
		$.ajax({
			type: 'post',
			url: './detail',
			data: {
			},
			dataType: 'ajax',
			success: function (data) {
				if (data.code === '1') {
					alert('已预订该订单');
				}
				
			}
		});
	});
</script>
</body>
</html>