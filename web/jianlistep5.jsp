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
		<title>招聘网|教育经历-</title>
		<meta content="23635710066417756375" property="qc:admins">
		<meta name="description" content="拉勾网是3W旗下的互联网领域垂直招聘网站,互联网职业机会尽在拉勾网">
		<meta name="keywords" content="拉勾,拉勾网,拉勾招聘,拉钩, 拉钩网 ,互联网招聘,拉勾互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 拉勾官网, 拉勾百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">
		<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

		<!-- <div class="web_root"  style="display:none">h</div> -->
		<script type="text/javascript">
			var ctx = "h";
			console.log(1);
		</script>

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
		<script type="text/javascript">
			var youdao_conv_id = 271546;
		</script>
		<script src="style/js/conv.js" type="text/javascript"></script>
		<script src="style/js/ajaxCross.json" charset="UTF-8"></script>
	</head>

	<body style="background-image: url(static/img/bg1.jpg);">
    <%--header start--%>
        <%@include file="top.jsp"%>
    <%--header end--%>

		<div id="body">
			<div id="container">

				<div class="clearfix">
					<div class="content_l">
						<div class="profile_box" id="educationalBackground"  style="opacity:0.8;background-color: #f2e6e6;position:relative;left:299px;top:-35px;height: 467px;padding-top: 75px">
							<h1>请填写教育经历</h1>
							<form class="educationalForm" action="/jianli/eduexp" method="post">
								<table>
									<tbody>
									<tr>
										<td valign="top">
											<span class="redstar">*</span>
										</td>
										<td>
											<input type="text" placeholder="学校名称" name="schoolName" value="${sessionScope.eduexp.schoolName}" class="schoolName">
										</td>
										<td valign="top">
											<span class="redstar">*</span>
										</td>
										<td>
											<input type="hidden" class="degree" value="${sessionScope.eduexp.degree}" name="degree">
											<input type="button" value="学历"
												   class="profile_select_287 profile_select_normal select_degree">
											<div class="box_degree boxUpDown boxUpDown_287 dn" style="display: none;">
												<ul>
													<li>大专</li>
													<li>本科</li>
													<li>硕士</li>
													<li>博士</li>
													<li>其他</li>
												</ul>
											</div>
										</td>
									</tr>
									<tr>
										<td valign="top">
											<span class="redstar">*</span>
										</td>
										<td>
											<input type="text" placeholder="专业名称" value="${sessionScope.eduexp.profession}" name="profession"
												   class="professionalName">
										</td>
										<td valign="top">
											<span class="redstar">*</span>
										</td>
										<td>
											<div class="fl">
												<input type="hidden" class="schoolYearStart" value="${sessionScope.eduexp.starttime}" name="starttime">
												<input type="button" value="开始年份"
													   class="profile_select_139 profile_select_normal select_schoolYearStart">
												<div class="box_schoolYearStart boxUpDown boxUpDown_139 dn"
													 style="display: none;">
													<ul>
														<script type="text/javascript">
                                                            for (var i = 2018; i >= 1970; i--) {
                                                                document.write("<li>" + i + "</li>");
                                                            }
														</script>
													</ul>
												</div>
											</div>
											<div class="fl">
												<input type="hidden" class="schoolYearEnd" value="${sessionScope.eduexp.endtime}" name="endtime">
												<input type="button" value="结束年份"
													   class="profile_select_139 profile_select_normal select_schoolYearEnd">
												<div class="box_schoolYearEnd  boxUpDown boxUpDown_139 dn"
													 style="display: none;">
													<ul>
														<script type="text/javascript">
                                                            for (var i = 2018; i >= 1970; i--) {
                                                                document.write("<li>" + i + "</li>");
                                                            }
														</script>
													</ul>
												</div>
											</div>
											<div class="clear"></div>
										</td>
									</tr>
									<tr>
										<td valign="top"></td>
										<td style="font: normal 23px/20px arial;">海外经历</td>
									</tr>
									<tr>
										<td valign="top"></td>
										<td>
											<ul class="profile_radio clearfix reset">
												<li class="current">
													是<em></em>
													<input type="radio" checked="checked" name="studyabroad" value="1">
												</li>
												<li>
													否<em></em>
													<input type="radio" name="studyabroad" value="0">
												</li>
											</ul>
										</td>
									</tr>
										<tr>
											<td></td>
											<td colspan="3">
												<input type="submit" value="保 存" class="btn_profile_save">
												<a class="btn_profile_cancel" href="jianlistep4.jsp">上一步</a>
											</td>
										</tr>
									</tbody>
								</table>
							</form>
								<!--end .educationalForm-->
							</div>
						</div>
						</div>
				</div>

				<script src="style/js/Chart.min.js" type="text/javascript"></script>
				<script src="style/js/profile.min.js" type="text/javascript"></script>
				<div class="clear"></div>
			</div>
		<script src="style/js/core.min.js" type="text/javascript"></script>
		<script src="style/js/popup.min.js" type="text/javascript"></script>

	</body>
	<script type="text/javascript">
        $(".btn_profile_save").click(function () {
            $.ajax({
                url: "/jianli/workexp",
                type: "POST",
                data: $(".basicEdit form").serialize(),
                success:function(data){
                    window.location.href="index.jsp"
                }
            });
        });
	</script>
</html>