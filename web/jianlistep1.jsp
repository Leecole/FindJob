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
		<title>招聘网|我的简历</title>
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

			<div class="basemsg" style="position:relative;left:200px;top:-20px; opacity:0.8;background-color: #f2e6e6;margin-left: 310px;margin-top: 24px;height: 510px; width: 550px;padding-left: 80px;padding-top: 50px;">
				<h1>请填写个人信息</h1>
				<form id="profileForm" action="/jianli/basemsg" method="post">
					<table>
						<tbody>
						<tr>
							<td valign="top">
								<span class="redstar">*</span>
							</td>
							<td>
								<input type="text" placeholder="姓名" value="${sessionScope.basemsg.name}" name="name" id="name">
							</td>
							<td valign="top"></td>
							<td>
								<ul class="profile_radio clearfix reset">
									<li class="current">
										男<em></em>
										<input type="radio" checked="checked" name="sex" value="1">
									</li>
									<li>
										女<em></em>
										<input type="radio" name="sex" value="0">
									</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<span class="redstar">*</span>
							</td>
							<td>
								<input type="text" placeholder="年龄" value="${sessionScope.basemsg.age}" name="age" id="age">
							</td>
							<td valign="top">
								<span class="redstar">*</span>
							</td>
							<td>
								<input type="hidden" id="workyear" value="${sessionScope.basemsg.startworktime}" name="startworktime">
								<input type="button" value="${sessionScope.basemsg.startworktime!=null?sessionScope.basemsg.startworktime: '工作年长'}" id="select_workyear"
									   class="profile_select_190 profile_select_normal">
								<div class="boxUpDown boxUpDown_190 dn" id="box_workyear" style="display: none;">
									<ul>
										<li>应届毕业生</li>
										<li>1年</li>
										<li>2年</li>
										<li>3年</li>
										<li>4年</li>
										<li>5年</li>
										<li>6年</li>
										<li>7年</li>
										<li>8年</li>
										<li>9年</li>
										<li>10年</li>
										<li>10年以上</li>
									</ul>
								</div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<span class="redstar">*</span>
							</td>
							<td colspan="3">
								<input type="text" placeholder="手机号码" value="${sessionScope.basemsg.phone}" name="phone" id="phone">
							</td>
						</tr>
						<tr>
							<td valign="top">
								<span class="redstar">*</span>
							</td>
							<td colspan="3">
								<input type="text" placeholder="家庭住址" value="${sessionScope.basemsg.address}" name="address" id="address">
							</td>
						</tr>
						<tr>
							<td valign="top">
								<span class="redstar">*</span>
							</td>
							<td colspan="3">
								<input type="text" placeholder="接收面试通知的邮箱" value="${sessionScope.basemsg.email}" name="email" id="email">
							</td>
						</tr>
						<tr>
							<td valign="top"></td>
							<td colspan="3">
								<input type="hidden" id="currentState" value="${sessionScope.basemsg.workstatus}" name="workstatus">
								<input type="button" value="${sessionScope.basemsg.workstatus!=null?sessionScope.basemsg.workstatus: '目前状态'}" id="select_currentState"
									   class="profile_select_410 profile_select_normal">
								<div class="boxUpDown boxUpDown_410 dn" id="box_currentState" style="display: none;">
									<ul>
										<li>我目前已离职，可快速到岗</li>
										<li>我目前正在职，正考虑换个新环境</li>
										<li>我暂时不想找工作</li>
										<li>我是应届毕业生</li>
									</ul>
								</div>
							</td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3">
								<input type="submit" value="下一步" class="btn_profile_save">
								<%--<a class="btn_profile_cancel" href="jianlistep1.jsp">上一步</a>--%>
							</td>
						</tr>
						</tbody>
					</table>
				</form>
			</div>
								
		<script src="style/js/Chart.min.js" type="text/javascript"></script>
				<script src="style/js/profile.min.js" type="text/javascript"></script>

		<script src="style/js/core.min.js" type="text/javascript"></script>
		<script src="style/js/popup.min.js" type="text/javascript"></script>

</body>
</html>