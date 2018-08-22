<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns:wb="http://open.weibo.com/wb">

	<head>
		<base href="${pageContext.request.scheme }://${pageContext.request.serverName}:${pageContext.request.serverPort}/">
		<script type="text/javascript" async="" src="style/js/conversion.js"></script>
		<script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script>
		<style type="text/css"></style>
		<meta content="no-siteapp" http-equiv="Cache-Control">
		<link media="handheld" rel="alternate">
		<!-- end 云适配 -->
		<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
		<title>招聘网|项目经验</title>
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
						<div class="profile_box" id="projectExperience"  style="position:relative;left:-19px;top:-84px; opacity:0.8;background-color: #f2e6e6;margin-left: 310px;margin-top: 50px;height: 490px; width: 600px;padding-left: 50px;padding-right:50px;padding-top: 50px;">
							<h1>请填写项目经验</h1>
							<form class="projectForm" action="/jianli/projectexp" method="post">
								<table>
									<tbody>
									<tr>
										<td valign="top">
											<span class="redstar">*</span>
										</td>
										<td>
											<input type="text" placeholder="项目名称" value="${sessionScope.projectexp.projectname}" name="projectname" class="projectName">
										</td>
									</tr>
									<tr>
										<td valign="top">
											<span class="redstar">*</span>
										</td>
										<td>
											<div class="fl">
												<input type="hidden" class="projectYearStart" value="${sessionScope.projectexp.starttimeyear}" name="starttimeyear">
												<input type="button" value="${sessionScope.projectexp.starttimeyear!=null?sessionScope.projectexp.starttimeyear: '开始年份'}"
													   class="profile_select_139 profile_select_normal select_projectYearStart">
												<div class="box_projectYearStart  boxUpDown boxUpDown_139 dn"
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
												<input type="hidden" class="projectMonthStart" value="${sessionScope.projectexp.starttimemonth}"
													   name="starttimemonth">
												<input type="button" value="${sessionScope.projectexp.starttimemonth!=null?sessionScope.projectexp.starttimemonth: '开始月份'}"
													   class="profile_select_139 profile_select_normal select_projectMonthStart">
												<div style="display: none;"
													 class="box_projectMonthStart boxUpDown boxUpDown_139 dn">
													<ul>
														<script type="text/javascript">
                                                            for (var i = 1; i <= 12; i++) {
                                                                document.write("<li>" + i + "</li>");
                                                            }
														</script>
													</ul>
												</div>
											</div>
											<div class="clear"></div>
										</td>
										<td valign="top">
											<span class="redstar">*</span>
										</td>
										<td>
											<div class="fl">
												<input type="hidden" class="projectYearEnd" value="${sessionScope.projectexp.endtimeyear}" name="endtimeyear">
												<input type="button" value="${sessionScope.projectexp.endtimeyear!=null?sessionScope.projectexp.endtimeyear: '结束年份'}"
													   class="profile_select_139 profile_select_normal select_projectYearEnd">
												<div class="box_projectYearEnd  boxUpDown boxUpDown_139 dn"
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
												<input type="hidden" class="projectMonthEnd" value="${sessionScope.projectexp.endtimemonth}" name="endtimemonth">
												<input type="button" value="${sessionScope.projectexp.endtimemonth!=null?sessionScope.projectexp.endtimemonth: '开始年份'}"
													   class="profile_select_139 profile_select_normal select_projectMonthEnd">
												<div style="display: none;"
													 class="box_projectMonthEnd boxUpDown boxUpDown_139 dn">
													<ul>
														<script type="text/javascript">
                                                            for (var i = 1; i <= 12; i++) {
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
										<td colspan="3">
                                    <textarea class="projectDescription s_textarea" name="des"
											  placeholder="项目描述"><c:if test="${sessionScope.projectexp.des!=null}">${sessionScope.projectexp.des}</c:if></textarea>
											<div class="word_count">你还可以输入 <span>500</span> 字</div>
										</td>
									</tr>
									<tr>
										<td valign="top"></td>
										<td colspan="3">
                                    <textarea placeholder="职责描述" name="dutydes"
											  class="ResponsDescription s_textarea"><c:if test="${sessionScope.projectexp.dutydes!=null}">${sessionScope.projectexp.dutydes}</c:if></textarea>
											<div class="word_count">你还可以输入 <span>500</span> 字</div>
										</td>
									</tr>
									<tr>
										<td valign="top"></td>
										<td colspan="3">
											<input type="submit" value="下一步" class="btn_profile_save">
											<a class="btn_profile_cancel" href="jianlistep3.jsp">上一步</a>
										</td>
									</tr>
									</tbody>
								</table>
								<input type="hidden" value="" class="projectId">
							</form>
								<!--end .projectForm-->
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
                url: "/jianli/projectexp",
                type: "POST",
                data: $(".basicEdit form").serialize(),
                success:function(data){
                    window.location.href="jianlistep5.jsp"
                }
            });
        });
	</script>
</html>