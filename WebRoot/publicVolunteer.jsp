<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
</script>

<!doctype html>
<html>
<head>
<meta http-equiv="Content-Ty
pe" content="text/html; charset=utf-8" /> 
	<title>发布服务</title>
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



<div class="bor_banner01">
	 
</div>
<!-- end banner -->
<div class="bor_con_wper">
	  <div class="bor_con px1000">
	  	    <div class="bor_detail" align="center">
	  	    	  
	  	    	   <div class="bor_detail_box">
	  	    	   	    <div class="bor_det_one clearfix pt30 pb30">
	  	    	   	    	  <div class="bor_det_onel fl">
	  	    	   	    	  	       <p class="bor_p1">畅游儿平台的服务交易功能旨在帮助旅行爱好者fly on way。</p>
										<p class="bor_p2">畅游儿平台的发布服务需要通过管理员审核通过后才能正式发布，一旦对接成功，畅游儿 将成为唯一的担保方，直至服务结束。</p>
										<h3 class="bor_onel_tit"><span>申请条件</span></h3>
										<ul class="bor_onel_ul">
											 <li><img src="images/bor_pic01.png" alt="">年满18周岁以上的公民
											 </li>
											 <li><img src="images/bor_pic02.png" alt="">具有一定的行业资格证书
											 </li>
											 <li><img src="images/bor_pic03.png" alt="">个人或企业银行征信记录良好
											 </li>
											 <li><img src="images/bor_pic04.png" alt="">
											  无现有诉讼记录
											 </li>
											 
										</ul>
										
	  	    	   	    	  </div>  
	  	    	   	    	  <!-- end l -->
	  	    	   	    	  <div class="bor_det_oner fl">
	  	    	   	    	  	     <form method="post" action="service.jhtml?type=add" id="publicService">
	  	    	   	    	  	     	  <fieldset>
	  	    	   	    	  	     	  	   
	  	    	   	    	  	     	  	   <div class="mt15">
	  	    	   	    	  	     	  	   	   <label>*服务薪金</label>
	  	    	   	    	  	     	  	   	   <input type="text" class="bor_inputbg01" name="salary">
	  	    	   	    	  	     	  	   </div>
	  	    	   	    	  	     	  	   <div class="mt15">
	  	    	   	    	  	     	  	   	   <label>*服务人数</label>
	  	    	   	    	  	     	  	   	   <input type="text" class="bor_inputbg01" name="salary">
	  	    	   	    	  	     	  	   </div>
                                               <div class="mt15">
	  	    	   	    	  	     	  	   	   <label>*服务开始</label>
	  	    	   	    	  	     	  	   	   <input type="date" class="bor_inputbg02" name="startTime">
	  	    	   	    	  	     	  	   </div>
	  	    	   	    	  	     	  	    <div class="mt15">
	  	    	   	    	  	     	  	   	   <label>*服务结束</label>
	  	    	   	    	  	     	  	   	   <input type="date" class="bor_inputbg02" name="endTime">
	  	    	   	    	  	     	  	   </div>
	  	    	   	    	  	     	  	   
	  	    	   	    	  	     	  	    <div class="mt15">
	  	    	   	    	  	     	  	   	   <label>*服务简介</label> 
	  	    	   	    	  	     	  	   	   <textarea name="content"></textarea>
	  	    	   	    	  	     	  	   	 
	  	    	   	    	  	     	  	   </div>
	  	    	   	    	  	     	  	  
	  	    	   	    	  	     	  	   <div class="mt30">
	  	    	   	    	  	     	  	   	   <label></label>
	  	    	   	    	  	     	  	   	   <button type="submit" class="bor_btn" border-style:none>提交服务</button>
	  	    	   	    	  	     	  	   </div>
	  	    	   	    	  	     	  </fieldset>
	  	    	   	    	  	     </form>
	  	    	   	    	  </div>
	  	    	   	    </div>
	  	    	   	    <!-- end 房产抵押 -->
	  	    	   	    <div class="bor_det_one" style="display:none;">
	  	    	   	    	  2  
	  	    	   	    </div>
	  	    	   	    <!-- end  -->
	  	    	   	    <div class="bor_det_one" style="display:none;">
	  	    	   	    	 3
	  	    	   	    </div>
	  	    	   	    <!-- end  -->
	  	    	   	    <div class="bor_det_one" style="display:none;">
	  	    	   	    	 4
	  	    	   	    </div>
	  	    	   	    <!-- end  -->
	  	    	   </div>
	  	    </div>
	  </div>
</div>


<script type="text/javascript">
//批量删除
		function DelSelect() {

			//var Checkbox=false;
			var testform = document.getElementById("publicService");
			var chk = document.getElementById("option");
			var serviceTypeName="";
			var i=0;
			var k=0;

		/* 	$("input[name='id[]']").each(function() {
				if (this.checked == true) {
					//Checkbox=true;	
					alert(this.value);
					ids[i++]=this.value;
						
				}
			}); */
			
			for(i=0;i<chk.length;i++)
			{
				if(chk[i].selected)
				{
					type += chk[i].value;
					break;
				}
			}
			
			if (ids.length>0) {
				var t = confirm("您确认要选中的内容吗？");
				if (t == false)
					return false;

				testform.action = "service.jhtml?type=add&serviceTypeName=" + serviceTypeName;
				testform.submit();
			} else {
				alert("请选择您选择类型!");
				return false;
			}
		}


</script>
</body>
</html>