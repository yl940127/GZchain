<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>
<body>
	<form method="post" action="" id="listform">
		<div class="panel admin-panel">
			<div class="panel-head">
				<strong class="icon-reorder"> 内容列表</strong> <a href=""
					style="float:right; display:none;">添加字段</a>
			</div>
			<div class="padding border-bottom">
				<ul class="search" style="padding-left:10px;">
					<li><a class="button border-main icon-plus-square-o"
						href="addTrack.jsp"> 添加足迹</a></li>
					<li>搜索：</li>
					<li>首页 <select name="s_ishome" class="input"
						onchange="changesearch()"
						style="width:60px; line-height:17px; display:inline-block">
							<option value="">选择</option>
							<option value="1">是</option>
							<option value="0">否</option>
					</select> &nbsp;&nbsp; 推荐 <select name="s_isvouch" class="input"
						onchange="changesearch()"
						style="width:60px; line-height:17px;display:inline-block">
							<option value="">选择</option>
							<option value="1">是</option>
							<option value="0">否</option>
					</select> &nbsp;&nbsp; 置顶 <select name="s_istop" class="input"
						onchange="changesearch()"
						style="width:60px; line-height:17px;display:inline-block">
							<option value="">选择</option>
							<option value="1">是</option>
							<option value="0">否</option>
					</select>
					</li>

					<li>
						<input type="text" placeholder="请输入搜索关键字" name="keywords" id="keywords"
							class="input" style="width:250px; line-height:17px;display:inline-block" /> 
							<a href="javascript:void(0)" class="button border-main icon-search"
							onclick="changesearch()"> 搜索</a>
					</li>
				</ul>
			</div>
			<table class="table table-hover text-center">
				<tr>
					<th width="60" style="text-align:left; padding-left:20px;">ID</th>
					<!-- <th width="5%">排序</th> -->
					<th>图片</th>
					<th width="20%">旅行笔记</th>
					<th width="20%">旅行地点</th>
					<th width="10%">发布时间</th>
					<th width="300">操作</th>
				</tr>
				<volist name="list" id="vo"> <a:forEach
					items="${requestScope.tracks}" var="track">
					<tr>
						<td style="text-align:left; padding-left:20px;"><input
							type="checkbox" name="id[]" value="${track.trackid}" />${track.trackid}</td>
						<!-- <td><input type="text" name="sort[1]" value="1"
							style="width:50px; text-align:center; border:1px solid #ddd; padding:7px 0;" /></td> -->
						<td width="6%"><img src="${track.trackimgurl}" alt="" width="50"
							height="50" /></td>
						<td>${track.content}</td>
						<%-- <td><font color="#00CC99">${caller.sex}</font></td> --%>
						<td>${track.location}</td>
						<td>${track.publictime}</td>
						<td>
							<div class="button-group">
								<a class="button border-main"
									href="updatetrack?op=open&trackid=${track.trackid}"><span
									class="icon-edit"></span> 修改</a> <a class="button border-red"
									href="deletetrack?trackid=${track.trackid}"><span class="icon-trash-o"></span>
									删除</a>
							</div>
						</td>
					</tr>
				</a:forEach>


				<tr>
					<td style="text-align:left; padding:19px 0;padding-left:20px;"><input
						type="checkbox" id="checkall" /> 全选</td>
					<td colspan="7" style="text-align:left;padding-left:20px;"><a
						href="javascript:void(0)" class="button border-red icon-trash-o"
						style="padding:5px 15px;" onclick="DelSelect()"> 删除</a> <a
						href="javascript:void(0)" style="padding:5px 15px; margin:0 10px;"
						class="button border-blue icon-edit" onclick="sorts()"> 排序</a> 操作：
						<select name="ishome"
						style="padding:5px 15px; border:1px solid #ddd;"
						onchange="changeishome(this)">
							<option value="">首页</option>
							<option value="1">是</option>
							<option value="0">否</option>
					</select> <select name="isvouch"
						style="padding:5px 15px; border:1px solid #ddd;"
						onchange="changeisvouch(this)">
							<option value="">推荐</option>
							<option value="1">是</option>
							<option value="0">否</option>
					</select> <select name="istop"
						style="padding:5px 15px; border:1px solid #ddd;"
						onchange="changeistop(this)">
							<option value="">置顶</option>
							<option value="1">是</option>
							<option value="0">否</option>
					</select> &nbsp;&nbsp;&nbsp; 请选择： <select name="movecid"
						style="padding:5px 15px; border:1px solid #ddd;"
						id="check" >
							<option id="checksex">请选择分类</option>
							<option id="checksex">男</option>
							<option id="checksex">女</option>
				<!-- 	</select> <select name="copynum"
						style="padding:5px 15px; border:1px solid #ddd;"
						onchange="changecopy(this)">
							<option value="">请选择复制</option>
							<option value="5">复制5条</option>
							<option value="10">复制10条</option>
							<option value="15">复制15条</option>
							<option value="20">复制20条</option>
					</select></td> -->
				</tr>
				<tr>
					<td colspan="8"><div class="pagelist">
							<a href="">上一页</a> <span class="current">1</span><a href="">2</a><a
								href="">3</a><a href="" >下一页</a><a href="">尾页</a>
						</div></td>
				</tr>
			</table>
		</div>
	</form>
	<script type="text/javascript">
	
			/////////////手动触发selectd的change事件////////////////  
		    $("#check").change(function () {  
		        var aaa = $("#check  option:selected").text();  
		        alert(aaa);  
		        var testform = document.getElementById("listform");
		        testform.action = "showCallersServlet?check=" + aaa;
				testform.submit();
		        
		    });  
		    /* $("#check").trigger("change");   */
		   /////////////手动触发selectd的change事件//////////////	
	
	
		//搜索
		function changesearch() {

			/* var testform = document.getElementById("listform");
			testform.action = "showCallersServlet";
			testform.submit(); */
			
			var inputbox = document.getElementById("keywords");
			window.location.href = "searchmytrack?condition="+inputbox.value;
			
		}

		//单个删除
		function del(id, mid, iscid) {
			if (confirm("您确定要删除吗?")) {

			}
		}

		//全选
		$("#checkall").click(function() {
			$("input[name='id[]']").each(function() {
				if (this.checked) {
					this.checked = false;
				} else {
					this.checked = true;
				}
			});
		})

		//批量删除
		function DelSelect() {

			//var Checkbox=false;
			var testform = document.getElementById("listform");
			var chk = document.getElementsByName("id[]");
			var ids="";
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
				if(chk[i].checked)
				{
					ids += chk[i].value + ";";
					
				}
			}
			
			if (ids.length>0) {
				var t = confirm("您确认要删除选中的内容吗？");
				if (t == false)
					return false;

				testform.action = "delCallerServlet?ids=" + ids;
				testform.submit();
			} else {
				alert("请选择您要删除的内容!");
				return false;
			}
		}
		
		//批量移动
		function changecate() {
		
		
		
		
		
				
			/* var testform = document.getElementById("listform");
			var chk = document.getElementsById("checksex");
			var k="";
			var i;
			for(i=0;i<chk.length;i++)
			{
				if(chk[i].selected)
				{
					k+=chk[i].value;
					break;		
				}
			}
		
			alert(k);
			testform.action = "showCallersServlet?check=" + k;
			testform.submit(); */
		
		
		
		
			/* var Checkbox = false;
			$("input[name='id[]']").each(function() {
				if (this.checked == true) {
					Checkbox = true;
				}
			});
			if (Checkbox) {

				$("#listform").submit();
			} else {
				alert("请选择要操作的内容!");

				return false;
			} */
		}
		
		//批量排序
		function sorts() {
			var Checkbox = false;
			$("input[name='id[]']").each(function() {
				if (this.checked == true) {
					Checkbox = true;
				}
			});
			if (Checkbox) {

				$("#listform").submit();
			} else {
				alert("请选择要操作的内容!");
				return false;
			}
		}

		//批量首页显示
		function changeishome(o) {
			var Checkbox = false;
			$("input[name='id[]']").each(function() {
				if (this.checked == true) {
					Checkbox = true;
				}
			});
			if (Checkbox) {

				$("#listform").submit();
			} else {
				alert("请选择要操作的内容!");

				return false;
			}
		}

		//批量推荐
		function changeisvouch(o) {
			var Checkbox = false;
			$("input[name='id[]']").each(function() {
				if (this.checked == true) {
					Checkbox = true;
				}
			});
			if (Checkbox) {

				$("#listform").submit();
			} else {
				alert("请选择要操作的内容!");

				return false;
			}
		}

		//批量置顶
		function changeistop(o) {
			var Checkbox = false;
			$("input[name='id[]']").each(function() {
				if (this.checked == true) {
					Checkbox = true;
				}
			});
			if (Checkbox) {

				$("#listform").submit();
			} else {
				alert("请选择要操作的内容!");

				return false;
			}
		}

		
		//批量复制
		function changecopy(o) {
			var Checkbox = false;
			$("input[name='id[]']").each(function() {
				if (this.checked == true) {
					Checkbox = true;
				}
			});
			if (Checkbox) {
				var i = 0;
				$("input[name='id[]']").each(function() {
					if (this.checked == true) {
						i++;
					}
				});
				if (i > 1) {
					alert("只能选择一条信息!");
					$(o).find("option:first").prop("selected", "selected");
				} else {

					$("#listform").submit();
				}
			} else {
				alert("请选择要复制的内容!");
				$(o).find("option:first").prop("selected", "selected");
				return false;
			}
		}
	</script>
</body>
</html>