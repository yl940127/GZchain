<%@ page language="java" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<script type="text/javascript">
    function toIndex() {
        window.location.href = "userIndex.jsp";
    };
</script>

<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Ty
pe" content="text/html; charset=utf-8"/>
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
                        <h3 class="bor_onel_tit"><span>任务描述</span></h3>
                        <textarea rows="18" cols="50">在这里输入内容...</textarea><br>
                        <!--<ul class="bor_onel_ul">
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
                        -->
                    </div>

                    <!-- end l -->
                    <div class="bor_det_oner fl">
                        <form method="post" action="#" id="publicService">
                            <fieldset>


                                <div class="mt15">
                                    <label>*服务类型</label>
                                    <select name="room">
                                        <option>请选择服务类型</option>
                                        <option value="1">有</option>
                                        <option value="0">无</option>

                                    </select>
                                </div>
                                <div class="mt15">
                                    <label>*需求对象</label>
                                    <select name="car">
                                        <option>请选择服务类型</option>
                                        <option value="1">有</option>
                                        <option value="0">无</option>

                                    </select>
                                </div>
                                <div class="mt15">
                                    <label>*发布合约</label>
                                    <select name="food">
                                        <option>请选择服务类型</option>
                                        <option value="1">有</option>
                                        <option value="0">无</option>

                                    </select>
                                </div>
                                <div class="mt15">
                                    <label>*应聘人数</label>
                                    <input type="text" name="cost">
                                </div>

                                <div class="mt15">
                                    <label>*薪金</label>
                                    <input type="text" name="cost">
                                </div>

                                <div class="mt30">
                                    <label></label>
                                    <button type="button" class="bor_btn" border-style:none onclick="ale()">提交服务</button>

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
    if (localStorage.getItem("data2") != null) {

        var data = JSON.parse(localStorage.getItem("data2"));

        $('select[name="room"]').children().each(function () {
            var res = data.room ? 1 : 0;

            if ($(this).val() == res) {
                $(this).attr('selected', true);
            }
        });

        $('select[name="car"]').children().each(function () {
            var res = data.car ? 1 : 0;

            if ($(this).val() == res) {
                $(this).attr('selected', true);
            }
        });
        $('select[name="food"]').children().each(function () {
            var res = data.food ? 1 : 0;

            if ($(this).val() == res) {
                $(this).attr('selected', true);
            }
        });
        $('select[name="company"]').children().each(function () {
            var res = data.company ? 1 : 0;

            if ($(this).val() == res) {
                $(this).attr('selected', true);
            }
        });

        $('input[name="cost"]').val(localStorage.getItem('cost'));
    }
    function ale()
    {
        alert("提交成功");
        window.location.href = "index.jsp";

    };

    //批量删除
    function DelSelect() {

        //var Checkbox=false;
        var testform = document.getElementById("publicService");
        var chk = document.getElementById("option");
        var serviceTypeName = "";
        var i = 0;
        var k = 0;

        /* 	$("input[name='id[]']").each(function() {
                if (this.checked == true) {
                    //Checkbox=true;
                    alert(this.value);
                    ids[i++]=this.value;

                }
            }); */

        for (i = 0; i < chk.length; i++) {
            if (chk[i].selected) {
                type += chk[i].value;
                break;
            }
        }

        if (ids.length > 0) {
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


    $('.bor_btn').click(function () {
        $.ajax({
            type: 'post',
            url: './publicService',
            data: {
                room: $('select[name="room"]').val(),
                car: $('select[name="car"]').val(),
                food: $('select[name="food"]').val(),
                company: $('select[name="company"]').val(),
                cost: $('input[name="cost"]').val()
            },
            dataType: 'json',
            success: function (data) {
                localStorage.setItem("data2", data.servicejson);
                localStorage.setItem("cost", data.cost);
                document.location.reload();
            }

        });
    });


</script>
</body>
</html>