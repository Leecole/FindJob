<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns:wb="http://open.weibo.com/wb">

	<head>
		<!-- <base href="${pageContext.request.scheme }://${pageContext.request.serverName}:${pageContext.request.serverPort}/">-->
		<script type="text/javascript" async="" src="style/js/conversion.js"></script>
		<script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script>
		<style type="text/css"></style>
		<meta content="no-siteapp" http-equiv="Cache-Control">
		<link media="handheld" rel="alternate">
		<!-- end 云适配 -->
		<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
		<title>招聘网|期望工作</title>
		<meta content="23635710066417756375" property="qc:admins">
		<meta name="description" content="拉勾网是3W旗下的互联网领域垂直招聘网站,互联网职业机会尽在拉勾网">
		<meta name="keywords" content="拉勾,拉勾网,拉勾招聘,拉钩, 拉钩网 ,互联网招聘,拉勾互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 拉勾官网, 拉勾百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">
		<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

        <link rel="Shortcut Icon" href="static/img/favicon.ico">
		<link href="style/css/style.css" type="text/css" rel="stylesheet">
		<link href="style/css/external.min.css" type="text/css" rel="stylesheet">
		<link href="style/css/popup.css" type="text/css" rel="stylesheet">
		<script type="text/javascript" src="style/js/jquery.1.10.1.min.js"></script>
		<script src="style/js/jquery.lib.min.js" type="text/javascript"></script>
		<script type="text/javascript" src="style/js/ajaxfileupload.js"></script>
		<script src="style/js/additional-methods.js" type="text/javascript"></script>
		<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
		<script src="style/js/conv.js" type="text/javascript"></script>
		<script src="style/js/ajaxCross.json" charset="UTF-8"></script>
	</head>

	<body style="background-image: url(static/img/bg1.jpg);">

    <%--header start--%>
    <%@include file="top.jsp"%>
    <%--header end--%>

<!--			<div class="basemsg" style="background-color: #AFD9EE;margin-left: 310px;margin-top: 50px;height: 480px; width: 550px;padding-left: 80px;padding-top: 50px; padding-bottom: 20px;">-->
				<div id="body">
				<div class="profile_box" id="expectJob" style="opacity:0.8;background-color: #f2e6e6;position:relative;left:537px;top:-11px;width: 500px; height: 524px;padding-left: 50px">
				<h1>告诉我们你想要什么工作</h1>
					<form id="expectForm" action="/jianli/hopedjob" method="post">
						<table>
							<tbody>
							<tr>
								<td>
									<input type="hidden" id="expectCity" value="${sessionScope.hopedjob.hopedaddress}" name="hopedaddress">
									<input type="button" value="${sessionScope.hopedjob.hopedaddress!=null?sessionScope.hopedjob.hopedaddress: '期望城市，如：北京'}" id="select_expectCity"
										   class="profile_select_287 profile_select_normal">
									<div class="boxUpDown boxUpDown_596 dn" id="box_expectCity" style="display: none;">
										<dl>
											<dt>热门城市</dt>
											<dd>
												<span>北京</span>
												<span>上海</span>
												<span>广州</span>
												<span>深圳</span>
												<span>成都</span>
												<span>杭州</span>
											</dd>
										</dl>
										<dl>
											<dt>ABCDEF</dt>
											<dd>
												<span>北京</span>
												<span>长春</span>
												<span>成都</span>
												<span>重庆</span>
												<span>长沙</span>
												<span>常州</span>
												<span>东莞</span>
												<span>大连</span>
												<span>佛山</span>
												<span>福州</span>
											</dd>
										</dl>
										<dl>
											<dt>GHIJ</dt>
											<dd>
												<span>贵阳</span>
												<span>广州</span>
												<span>哈尔滨</span>
												<span>合肥</span>
												<span>海口</span>
												<span>杭州</span>
												<span>惠州</span>
												<span>金华</span>
												<span>济南</span>
												<span>嘉兴</span>
											</dd>
										</dl>
										<dl>
											<dt>KLMN</dt>
											<dd>
												<span>昆明</span>
												<span>廊坊</span>
												<span>宁波</span>
												<span>南昌</span>
												<span>南京</span>
												<span>南宁</span>
												<span>南通</span>
											</dd>
										</dl>
										<dl>
											<dt>OPQR</dt>
											<dd>
												<span>青岛</span>
												<span>泉州</span>
											</dd>
										</dl>
										<dl>
											<dt>STUV</dt>
											<dd>
												<span>上海</span>
												<span>石家庄</span>
												<span>绍兴</span>
												<span>沈阳</span>
												<span>深圳</span>
												<span>苏州</span>
												<span>天津</span>
												<span>太原</span>
												<span>台州</span>
											</dd>
										</dl>
										<dl>
											<dt>WXYZ</dt>
											<dd>
												<span>武汉</span>
												<span>无锡</span>
												<span>温州</span>
												<span>西安</span>
												<span>厦门</span>
												<span>烟台</span>
												<span>珠海</span>
												<span>中山</span>
												<span>郑州</span>
											</dd>
										</dl>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<ul class="profile_radio clearfix reset" style="padding-top: 24px;">
										<li class="current">
											全职<em></em>
											<input type="radio" checked="" name="type" value="全职">
										</li>
										<li>
											兼职<em></em>
											<input type="radio" name="type" value="兼职">
										</li>
										<li>
											实习<em></em>
											<input type="radio" name="type" value="实习">
										</li>
									</ul>
								</td>
							</tr>

							<tr>
								<td>
									<input type="text" placeholder="期望行业，如：IT行业" value="${sessionScope.hopedjob.hopedhangye}" name="hopedhangye" id="hopedhangye"
										   style="width: 263px;margin-bottom: 4px;">
								</td>
							</tr>

							<tr>
								<td>
									<input type="text" placeholder="期望职位，如：产品经理" value="${sessionScope.hopedjob.hopedzhiwei}" name="hopedzhiwei" id="expectPosition"
										   style="width: 263px;margin-bottom: 24px;">
								</td>
							</tr>

							<tr>
								<td>
									<input type="hidden" id="expectSalary" value="${sessionScope.hopedjob.hopedsalary}" name="hopedsalary">
									<input type="button" value="${sessionScope.hopedjob.hopedsalary!=null?sessionScope.hopedjob.hopedsalary: '期望月薪'}" id="select_expectSalary"
										   class="profile_select_287 profile_select_normal">
									<div class="boxUpDown boxUpDown_287 dn" id="box_expectSalary" style="display: none;">
										<ul>
											<li>2k以下</li>
											<li>2k-5k</li>
											<li>5k-10k</li>
											<li>10k-15k</li>
											<li>15k-25k</li>
											<li>25k-50k</li>
											<li>50k以上</li>
										</ul>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="submit" value="下一步" class="btn_profile_save" style="margin-top: 24px;">
									<a class="btn_profile_cancel" href="jianlistep1.jsp" style="margin-top: 24px;">上一步</a>
								</td>
							</tr>
							</tbody>
						</table>
					</form>
								<!--end #expectForm-->
							</div>
						</div>

</div>
								
		<script src="style/js/Chart.min.js" type="text/javascript"></script>
				<script src="style/js/profile.min.js" type="text/javascript"></script>

		<script src="style/js/core.min.js" type="text/javascript"></script>
		<script src="style/js/popup.min.js" type="text/javascript"></script>

	<script type="text/javascript">
    $(".btn_profile_save").click(function () {
        alert($(".basemsg form").serialize())
        /*$.ajax({
            url: "jianli",
            type: "POST",
            data: $(".basicEdit form").serialize(),
        });*/
    });
</script>

</body>
</html>