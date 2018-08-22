<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<base  href="${pageContext.request.scheme }://${pageContext.request.serverName}:${pageContext.request.serverPort}/">
	<meta charset="UTF-8">
	<title>招聘网|登录</title>
        <link rel="Shortcut Icon" href="static/img/favicon.ico">
	<link rel="stylesheet" type="text/css" href="static/css/base.css">
	<link rel="stylesheet" type="text/css" href="static/css/home.css">

        <link rel="Shortcut Icon" href="static/img/favicon.ico">
        <link rel="stylesheet" type="text/css" href="style/css/style.css"/>
        <link rel="stylesheet" type="text/css" href="style/css/external.min.css"/>
        <link rel="stylesheet" type="text/css" href="style/css/popup.css"/>
        <script src="style/js/jquery.1.10.1.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="style/js/jquery.lib.min.js"></script>
        <script src="style/js/ajaxfileupload.js" type="text/javascript"></script>
        <script type="text/javascript" src="style/js/additional-methods.js"></script>
        <script type="text/javascript" src="style/js/buttonEvent.js"></script>
        <!--[if lte IE 8]>
        <script type="text/javascript" src="style/js/excanvas.js"></script>
        <![endif]-->
        <script type="text/javascript">
            var youdao_conv_id = 271546;
        </script>
        <script type="text/javascript" src="style/js/conv.js"></script>

        <%--动态背景代码块 start--%>
           <%-- <link rel="stylesheet" href="DynamicBackground/css/style.css" />
            <script type='text/javascript' src='DynamicBackground/js/jquery-1.11.1.min.js'></script>
            <script type='text/javascript' src='DynamicBackground/js/jquery.particleground.min.js'></script>
            <script type='text/javascript' src='DynamicBackground/js/demo.js'></script>--%>
        <%--动态背景代码块 end--%>
	
</head>
<body  style="background-image: url(static/img/bg1.jpg);">

<%@include file="top_logined.jsp"%>

	<header class="aui-header">
		<div class="aui-header-box">
			<h1>
				<a href="login.jsp" class="aui-header-box-logo"></a>
			</h1>
		</div>
	</header>

	<section class="aui-content">
		<div class="aui-content-box clearfix">
			<div class="aui-content-box-fl">
				<div class="aui-form-header">
					<div class="aui-form-header-item on">密码登录</div>
					<div class="aui-form-header-item">验证码登录</div>
					<span class="aui-form-header-san"></span>
				</div>
				<div class="aui-form-content">
					<div class="aui-form-content-item">
						<form action="/comAccount/login" method="post">
							<div class="aui-form-list">
								<input type="text" class="aui-input" name="phone" value="15586395076" placeholder="请输入手机号/邮箱" data-required="required" autocomplete="off">
							</div>
							<div class="aui-form-list">
								<input type="password" class="aui-input" name="password" value="123456" placeholder="请输入密码" data-required="required" autocomplete="off">
							</div>
							<div class="aui-form-pwd clearfix">
								<a href="#">忘记密码？</a>
							</div>

							<div class="aui-form-btn">
								<input type="submit" class="aui-btn" value="登&nbsp;录" >
							</div>
						</form>
					</div>
					<div class="aui-form-content-item">
						<form action="/comAccount/login">
							<div class="aui-form-list">
								<input type="text" class="aui-input" name="" placeholder="请输入手机号" data-required="required" autocomplete="off">
							</div>
							<div class="aui-form-list">
								<input type="text" class="aui-input" name="" placeholder="请证明你不是机器人" data-required="required" autocomplete="off">
								<a href="#" class="aui-child aui-child-img">
									<img src="static/img/yzm.png" alt="">
								</a>
							</div>
							<div class="aui-form-list">
								<input type="text" class="aui-input" name="" placeholder="请输入验证码" data-required="required" autocomplete="off">
								<input type="button" class="aui-child" value="获取验证码" >
							</div>
							<div class="aui-form-pwd clearfix">
								<a href="#">忘记密码？</a>
							</div>
							<div class="aui-form-btn">
								<input type="submit" class="aui-btn" value="登&nbsp;录">
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="aui-content-box-fr">
				<div class="aui-content-box-text">
					<h3>还没有帐号:</h3>
					<a href="register.jsp" class="aui-ll-link">立即注册</a>
					<h3>使用第三方帐号直接登录:</h3>
					<ul class="aui-content-box-text-link clearfix">
						<li><a href="#" class="aui-icon-sina"   title="使用新浪微博帐号登录"></a></li>
						<li><a href="#" class="aui-icon-wechat" title="使用微信帐号登录"></a></li>
						<li><a href="#" class="aui-icon-qq"     title="使用腾讯QQ帐号登录"></a></li>
						<li><a href="#" class="aui-icon-baidu"  title="使用百度帐号登录"></a></li>
					</ul>
				</div>
			</div>
		</div>
	</section>

	<script type="text/javascript" src="static/js/jquery.min.js"></script>
	<script type="text/javascript">



        $(function(){

           			/*tab标签切换*/
            function tabs(tabTit,on,tabCon){
                $(tabCon).each(function(){
                    $(this).children().eq(0).show();

                });
                $(tabTit).each(function(){
                    $(this).children().eq(0).addClass(on);
                });
                $(tabTit).children().click(function(){
                    $(this).addClass(on).siblings().removeClass(on);
                    var index = $(tabTit).children().index(this);
                    $(tabCon).children().eq(index).show().siblings().hide();
                });
            }
            tabs(".aui-form-header","on",".aui-form-content");

        })
	</script>

</body>

</html>
