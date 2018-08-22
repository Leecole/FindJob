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
		<title>招聘网|WorkExperience</title>
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

	<body style="background-image: url(static/img/bg1.jpg);" >

    <%--header start--%>
    <%@include file="top.jsp"%>
    <%--header end--%>

    <div id="body" >
			<div id="container">

				<div class="clearfix">
					<div class="content_l">
						<div class="profile_box" id="projectExperience" style="opacity:0.8;background-color: #f2e6e6;position:relative;left:306px;top:-34px;height: 522px">
							<h1>请填写工作经历</h1>
							<form class="projectForm" action="/jianli/workexp" method="post">
								<table>
									<tbody>
									<tr>
										<td valign="top">
											<span class="redstar">*</span>
										</td>
										<td>
											<input type="text" placeholder="公司名称" value="${sessionScope.workexp.companyname}" name="companyname" class="projectName">
										</td>
										<td valign="top">
											<span class="redstar">*</span>
										</td>
										<td>
											<input type="text" placeholder="职位" value="${sessionScope.workexp.zhiwei}" name="zhiwei" class="thePost">
										</td>
									</tr>
									<tr>
										<td valign="top">
											<span class="redstar">*</span>
										</td>
										<td colspan="2">
											<input type="text" placeholder="所在部门" value="${sessionScope.workexp.department}" name="department" class="projectName">
										</td>
									</tr>
									<tr>
										<td valign="top">
											<span class="redstar">*</span>
										</td>
										<td>
											<div class="fl">
												<input type="hidden" class="projectYearStart" value="${sessionScope.workexp.starttimeyear}" name="starttimeyear">
												<input type="button" value="${sessionScope.workexp.starttimeyear!=null?sessionScope.workexp.starttimeyear: '开始年份'}"
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
												<input type="hidden" class="projectMonthStart" value="${sessionScope.workexp.starttimemonth}"
													   name="starttimemonth">
												<input type="button" value="${sessionScope.workexp.starttimemonth!=null?sessionScope.workexp.starttimemonth: '开始月份'}"
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
												<input type="hidden" class="projectYearEnd" value="${sessionScope.workexp.endtimeyear}" name="endtimeyear">
												<input type="button" value="${sessionScope.workexp.endtimeyear!=null?sessionScope.workexp.endtimeyear: '结束年份'}"
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
												<input type="hidden" class="projectMonthEnd" value="${sessionScope.workexp.endtimemonth}" name="endtimemonth">
												<input type="button" value="${sessionScope.workexp.endtimemonth!=null?sessionScope.workexp.endtimemonth: '结束月份'}"
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
                                    <textarea class="projectDescription s_textarea" name="workdesc"
											  placeholder="工作描述"><c:if test="${sessionScope.workexp.workdesc!=null}">${sessionScope.workexp.workdesc}</c:if></textarea>
											<div class="word_count">你还可以输入 <span>500</span> 字</div>
										</td>
									</tr>
									<tr>
										<td valign="top"></td>
										<td colspan="3">
											<input type="submit" value="下一步" class="btn_profile_save">
											<a class="btn_profile_cancel" href="jianlistep2.jsp">上一步</a>
										</td>
									</tr>
									</tbody>
								</table>
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
                url: "/jianli/workexp",
                type: "POST",
                data: $(".basicEdit form").serialize(),
                success:function(data){
                    window.location.href="jianlistep4.jsp"
                }
            });
        });
	</script>
</html>