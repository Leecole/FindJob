<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="${pageContext.request.scheme }://${pageContext.request.serverName}:${pageContext.request.serverPort}/">
    <meta charset="UTF-8">
    <title>招聘网|注册</title>
    <link rel="Shortcut Icon" href="static/img/favicon.ico">
    <link rel="stylesheet" type="text/css" href="static/css/base.css">
    <link rel="stylesheet" type="text/css" href="static/css/home.css">
</head>
<body style="background-image: url(static/img/bg1.jpg);">


<header class="aui-header">
    <div class="aui-header-box">
        <h1>
            <a href="index.jsp" class="aui-header-box-logo"></a>
        </h1>
    </div>
</header>

<section class="aui-content">
    <div class="aui-content-box clearfix">
        <div class="aui-content-box-fl">
            <h2>专注互联网职业机会</h2>

            <div class="aui-form-content">

                <div class="aui-form-content-item" style="display:block">
                    <form action="/comAccount/rigister" method="post">
                        <div class="aui-form-list">
                            <input id="ph" type="text" class="aui-input" name="phone" placeholder="请输入手机号"
                                   data-required="required" autocomplete="off">
                        </div>
                        <div class="aui-form-list">
                            <input type="password" class="aui-input" name="password" placeholder="请输入密码"
                                   data-required="required" autocomplete="off">
                        </div>
                        <div class="aui-form-list">
                            <input type="password" class="aui-input" name="password1" placeholder="请输入与上面相同的密码"
                                   data-required="required" autocomplete="off">
                        </div>
                        <div class="aui-form-list">
                            <input type="text" id="yzm" class="aui-input" name="yzmcode" placeholder="请证明你不是机器人"
                                   data-required="required" autocomplete="off">
                            <img class="aui-child aui-child-img" type="image" src="generatecode" id="codeImage"
                                 onclick="chageCode()" title="图片看不清？点击重新得到验证码" style="cursor:pointer;"/>
                        </div>
                        <div class="aui-form-list">
                            <input type="text" id="dx" class="aui-input" name="dxcode" placeholder="请输入验证码"
                                   data-required="required" autocomplete="off">
                            <input id="dxcode" type="button" class="aui-child" value="获取验证码" onclick="dianji()">
                        </div>
                        <div class="aui-form-btn">
                            <input type="submit" class="aui-btn" value="注&nbsp;册" onclick="return check(this.form)">
                        </div>
                        <div class="aui-form-ty">
                            注册代表你已同意 <a href="#" style="color: #ed4242">「招聘网用户协议」</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="aui-content-box-fr">
            <div class="aui-content-box-text">
                <h3>已有帐号:</h3>
                <a href="login.jsp" class="aui-ll-link">直接登录</a>
                <h3>使用第三方帐号直接登录:</h3>
                <ul class="aui-content-box-text-link clearfix">
                    <li><a href="#" class="aui-icon-sina" title="使用新浪微博帐号登录"></a></li>
                    <li><a href="#" class="aui-icon-wechat" title="使用微信帐号登录"></a></li>
                    <li><a href="#" class="aui-icon-qq" title="使用腾讯QQ帐号登录"></a></li>
                    <li><a href="#" class="aui-icon-baidu" title="使用百度帐号登录"></a></li>
                </ul>
            </div>
        </div>
    </div>
</section>
</body>
<script type="text/javascript" src="static/js/jquery.min.js"></script>
<script type="text/javascript">
    /*点击重新加载验证码*/
    function chageCode() {
        $('#codeImage').attr('src', 'generatecode?abc=' + Math.random());//链接后添加Math.random，确保每次产生新的验证码，避免缓存问题。
    }

    /*进行表单前台验证*/
    function check(form) {
        $(".aui-form-content-item").find(".checkmsg").empty();
        /*验证手机号是否合法*/
        var mPattern = /^1[34578]\d{9}$/;
        var result = mPattern.test(form.phone.value)
        if (result == false) {
            $(".aui-form-list:eq(0)").find("span").empty();
            $(".aui-form-list:eq(0)").append("<span class='checkmsg' style='color: red'>* 手机号不合法</span>")
            return false;
        }
        /*进行手机号是否被注册的验证*/
        if (!checkphone()) {
            return false;
        }
        /*验证密码是否合理*/
        var pPattern = /(?!^\\d+$)(?!^[a-zA-Z]+$)(?!^[_#@]+$).{8,}/;
        var result1 = pPattern.test(form.password.value)
        if (result1 == false) {
            $(".aui-form-list:eq(1)").find("span").empty();
            $(".aui-form-list:eq(1)").append("<span class='checkmsg'style='color: red'>* 密码必须八位以上且不能纯数字</span>")
            return false;
        }
        /*确认两次的密码输入一致*/
        if (form.password.value != form.password1.value) {
            $(".aui-form-list:eq(2)").find("span").empty();
            $(".aui-form-list:eq(2)").append("<span class='checkmsg'style='color: red'>* 两次密码不一致</span>")
            return false;
        }
        /*进行验证码的验证*/
        if (!checkyzm()) {
            return false;
        }
        /*进行手机验证码的验证*/
        if (!checkdxcode()) {
            return false;
        }

        return true;
    }

    /*通过失去焦点事件进行验证码校验*/
    /*$("#yzm").blur(function () {*/
    var yzmresult = false;

    function checkyzm() {
        $.ajax({
            url: "checkyzm?yzmcode=" + $("#yzm").val(),
            type: "GET",
            dataType: "json",
            async: false,
            success: function (result) {
                var check = false;
                if (result.result == "fail") {
                    $(".aui-form-list:eq(3)").find("span").empty();
                    $(".aui-form-list:eq(3)").append("<span class='checkmsg'style='color: red'>* 验证码不正确</span>");
                } else {
                    $(".aui-form-list:eq(3)").find("span").empty();
                    yzmresult = true;
                }
            }
        });
        return yzmresult;
    }

    /*})*/
    var dxresult = false;

    function checkdxcode() {
        $.ajax({
            url: "checkdx?dxcode=" + $("#dx").val(),
            type: "GET",
            dataType: "json",
            async: false,
            success: function (result) {
                if (result.result == "fail") {
                    $(".aui-form-list:eq(4)").find("span").empty();
                    $(".aui-form-list:eq(4)").append("<span class='checkmsg'style='color: red'>* 短信验证码不正确</span>");
                } else {
                    $(".aui-form-list:eq(4)").find("span").empty();
                    dxresult = true;
                }
            }
        });
        return dxresult;
    }
    var checkresult = false;

    function checkphone() {
        $.ajax({
            url: "checkphone?phone=" + $("#ph").val(),
            type: "GET",
            dataType: "json",
            async: false,
            success: function (result) {
                if (result.result == "fail") {
                    $(".aui-form-list:eq(0)").find("span").empty();
                    $(".aui-form-list:eq(0)").append("<span class='checkmsg'style='color: red'>* 该手机号已被注册</span>");
                } else {
                    $(".aui-form-list:eq(0)").find("span").empty();
                    checkresult = true;
                }
            }
        });
        return checkresult;
    }
</script>

<%--倒计时获取短信验证码--%>
<script>
    var i = 59;
    var timer;
    var anniu = document.getElementById("dxcode");

    function jishi() {
        anniu.value = i + "秒后重发"
        i--
        anniu.disabled = true;
        if (i < 0) {
            anniu.value = "获取验证码";
            anniu.disabled = false;
            clearInterval(timer);
            i = 59;//这里要还原i的值，不然下次不能倒计时
        }
    }

    function dianji() {
        $.ajax({
            url: "generatedxcode?phone=" + $("#ph").val(),
            type: "Get",
        });
        timer = setInterval("jishi()", 1000)
    }
</script>
</html>