<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns:wb="http://open.weibo.com/wb"><head>
	<base  href="${pageContext.request.scheme }://${pageContext.request.serverName}:${pageContext.request.serverPort}/">
    <meta charset="UTF-8">
	<%--<script async="" src="style/js/analytics.js"></script>--%>
    <%--<script type="text/javascript" async="" src="style/js/conversion.js">--%>

    </script><script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script>
    <style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link  media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>招聘网|发布职位-招聘服务</title>

<%--这里放星星的css.和js--%>
    <link rel="stylesheet" href="starts/css/css.css">
    <script src="starts/js/jq.js"></script>
<%--end--%>

    <!-- <div class="web_root"  style="display:none">http://www.lagou.com</div> -->
<script type="text/javascript">
</script><link rel="Shortcut Icon" href="static/img/favicon.ico">
<link href="style/css/style.css" type="text/css" rel="stylesheet">
<link href="style/css/external.min.css" type="text/css" rel="stylesheet">
<link href="style/css/popup.css" type="text/css" rel="stylesheet">
<%--<script type="text/javascript" src="style/js/jquery.1.10.1.min.js"></script>--%>
<script src="style/js/jquery.lib.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/ajaxfileupload.js"></script>
<script src="style/js/additional-methods.js" type="text/javascript"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
var youdao_conv_id = 271546; 
</script>
 <%--   <script src="style/js/conv.js" type="text/javascript"></script>--%>
    <script src="style/js/ajaxCross.json" charset="UTF-8"></script>

</head>
<body>

<div id="body">
    <%--header--%>
        <%@include file="topProfile_comLogin.jsp" %>
     <%--header end--%>


        <%--删除某个应聘者，后台跳转过来时，如果应聘者集合为空，则重新加载所有应聘者--%>
        <c:if test="${pageInfo.list eq null}">
            <script>
                window.location.href="/getjianliid/${combasemsg.combasemsgid}";
            </script>
        </c:if>



    <div id="container">
        <div class="sidebar">
            <a class="btn_create" href="create.jsp" style="background-color: pink">发布新职位</a>
            <dl class="company_center_aside">

                <dt>我收藏的简历</dt>
                <dd >
                    <a href="/getjianliid/${account.useraccountid}">我收藏的简历</a>
                </dd>
                <dt>我收到的简历</dt>
                <dd>
                    <a href="/obtainjianli/0&${account.useraccountid}">待定简历</a>
                </dd>
                <dd>
                    <a href="/obtainjianli/1&${account.useraccountid}">已读简历</a>
                </dd>
                <dd>
                    <a href="/obtainjianli/-1&${account.useraccountid}">不合适简历</a>
                </dd>
            </dl>
        </div><!-- end .sidebar -->



        <div class="content">
            <%----------------------------------我收到的简历------------------------------%>
            <c:if test="${obtainpageInfo ne null}">
                <dl class="company_center_content">
                    <dt>
                        <h1>
                            <em></em>
                            有效简历 <span>（共<i style="color:#fff;font-style:normal" id="positionNumber1">${obtainpageInfo.total}</i>个）</span>                        </h1>
                    </dt>
                    <dd>
                        <form id="searchForm1">
                            <input type="hidden" value="Publish" name="type">
                            <ul class="reset my_jobs">
                                <c:forEach var="xxx" items="${obtainpageInfo.list}">
                                    <li data-id="149594">
                                        <h3>
                                            <a target="_blank" title="随便写" href="#">${xxx.jianli.hopedzhiwei}</a>
                                            <span>[${xxx.jianli.hopedaddress}]</span>
                                        </h3>
                                        <span class="receivedResumeNo">${xxx.jianli.name}<br>${xxx.jianli.phone}</span>

                                        <div>${xxx.jianli.hopedworktype}/ ${xxx.jianli.hopedsalary} / ${xxx.jianli.startworktime} </div>
                                        <div class="c9">发布时间：${xxx.sendtime}</div>
                                        <div class="links">
                                                <%--<a target="_blank" class="job_edit" href="/daiding/2&${xxx.jianli.jianliid}" >待定</a>--%>
                                            <a class="job_offline" href="#">通知面试</a>
                                            <a class="job_del" href="/deletBy/${xxx.jianli.jianliid}" class="set">删除</a>
                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>
                            <table style="height:10px;width: 100%;text-align: center">
                                <tr>
                                    <td style="width: 13%">
                                        <a href="${pageContext.request.contextPath}/obtainjianli/${isread}&${combasemsgid}?pn=1">首页</a>
                                    </td>
                                    <td style="width: 13%">
                                        <c:if test="${pageInfo.hasPreviousPage}">
                                            <a href="${pageContext.request.contextPath}/obtainjianli/${isread}&${combasemsgid}?pn=${obtainpageInfo.pageNum-1}" aria-label="Previous">
                                                <span aria-hidden="true">上一页</span>
                                            </a>
                                        </c:if>
                                    </td>
                                    <td style="width: 48%">
                                        <div class="col-md-6">
                                            当前第 ${obtainpageInfo.pageNum} 页.共 ${obtainpageInfo.pages} 页
                                        </div>
                                    </td>
                                    <td style="width: 13%">
                                        <c:if test="${obtainpageInfo.hasNextPage}">
                                            <a href="${pageContext.request.contextPath}/obtainjianli/${isread}&${combasemsgid}?pn=${obtainpageInfo.pageNum+1}"
                                               aria-label="Next">
                                                <span aria-hidden="true">下一页</span>
                                            </a>
                                        </c:if>
                                    </td>
                                    <td style="width: 13%">
                                        <a href="${pageContext.request.contextPath}/getjianliid/${combasemsgid}?pn=${pageInfo.pages}">尾页</a>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </dd>

                </dl>
            </c:if>
            <%---------------------------------------------------------------------------%>


            <%----------------------------------我收藏的简历------------------------------%>
            <c:if test="${pageInfo ne null}">
                <dl class="company_center_content">
                    <dt>
                        <h1>
                            <em></em>
                            有效简历 <span>（共<i style="color:#fff;font-style:normal" id="positionNumber">${pageInfo.total}</i>个）</span>                        </h1>
                    </dt>
                    <dd>
                        <form id="searchForm">
                            <ul class="reset my_jobs">
                                <c:forEach items="${pageInfo.list}" var="wxl">
                                    <li data-id="149594">
                                        <h3>
                                            <a target="_blank" title="随便写" href="http://www.lagou.com/jobs/149594.html">${wxl.jianli.hopedzhiwei}</a>
                                            <span>[${wxl.jianli.hopedaddress}]</span>
                                        </h3>
                                        <span class="receivedResumeNo">${wxl.jianli.name}<br>${wxl.jianli.phone}</span>

                                        <div>${wxl.jianli.hopedworktype}/ ${wxl.jianli.hopedsalary} / ${wxl.jianli.startworktime} </div>

                                        <div class="c9">发布时间：${wxl.jointime}</div>
                                        <div class="links">
                                            <a target="_blank" class="job_edit" href="/obtainjianli/0&${account.useraccountid}" >待定</a>
                                                <%--<a class="job_offline" href="#">通知面试</a>--%>
                                            <a class="job_del" href="/deletBy/${wxl.jianli.jianliid}" class="set">删除</a>
                                        </div>

                                            <%-------------------这里放星星等级-----------------%>
                                        <script>
                                            array.push(${wxl.jianli.jianliid});
                                        </script>
                                        <table style="height:20px;padding: 0px; margin: 0px;width:664px">
                                            <tr>
                                                <td>
                                                        <script type="text/javascript">
                                                                    (function(){
                                                                        var p = {
                                                                            url:'http://localhost:8080/findjob/comIndex.jsp', /*获取URL，可加上来自分享到QQ标识，方便统计*/
                                                                            desc:'来自招聘网的分享|网站', /*分享理由(风格应模拟用户对话),支持多分享语随机展现（使用|分隔）*/
                                                                            title:'Makeup_Forever', /*分享标题(可选)*/
                                                                            summary:'', /*分享摘要(可选)*/
                                                                            pics:'${requestScope.productInfo.picture}', /*分享图片(可选)*/
                                                                            flash: '', /*视频地址(可选)*/
                                                                            site:'QQ分享', /*分享来源(可选) 如：QQ分享*/
                                                                            style:'201',
                                                                            width:32,
                                                                            height:32
                                                                        };
                                                                        var s = [];
                                                                        for(var i in p){
                                                                            s.push(i + '=' + encodeURIComponent(p[i]||''));//将文本字符串编码为一个统一资源标识符 (URI) 的一个有效组件
                                                                        }
                                                                        //分享给QQ好友API接口
                                                                        document.write(['<a class="qcShareQQDiv" href="http://connect.qq.com/widget/shareqq/comIndex.jsp?',s.join('&'),'" target="_blank">分享到QQ</a>'].join(''));
                                                                        //http://connect.qq.com/widget/shareqq/index.html?url=你的分享网址&sharesource=qzone&title=你的分享标题&pics=你的分享图片地址&summary=你的分享描述&desc=你的分享简述
                                                                    })();
                                                            </script>
						<script src="http://connect.qq.com/widget/loader/loader.js" widget="shareqq" charset="utf-8"></script>

                                                </td>
                                                <td style="height: 20px;">
                                                    <div id="starRating">
                                                        <p class="photo"  id="photo" style="transform:scale(0.7);margin-left:200px;">
                                                            <span><a class="high"   href="/updateTalentmanagerByLevel/1&${wxl.jianli.jianliid}" value="1" onclick="check(this)"></a><a class="nohigh"></a></span>
                                                            <span><a class="high" href="/updateTalentmanagerByLevel/2&${wxl.jianli.jianliid}" value="2" onclick="check(this)"></a><a class="nohigh"></a></span>
                                                            <span><a class="high"   href="/updateTalentmanagerByLevel/3&${wxl.jianli.jianliid}" value="3" onclick="check(this)"></a><a class="nohigh"></a></span>
                                                            <span><a class="high"   href="/updateTalentmanagerByLevel/4&${wxl.jianli.jianliid}" value="4" onclick="check(this)"></a><a class="nohigh"></a></span>
                                                            <span><a class="high"  href="/updateTalentmanagerByLevel/5&${wxl.jianli.jianliid}" value="5" onclick="check(this)"></a><a class="nohigh"></a></span>
                                                        </p>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                  <%------------------------end------------------------%>

                                    </li>

                                </c:forEach>
                            </ul>
                            <input type="hidden" value="Publish" name="type">
                            <table style="height:10px;width: 100%;text-align: center">
                                <tr>
                                    <td style="width: 13%">
                                        <a href="${pageContext.request.contextPath}/getjianliid/${combasemsgid}?pn=1">首页</a>
                                    </td>
                                    <td style="width: 13%">
                                        <c:if test="${pageInfo.hasPreviousPage}">
                                            <a href="${pageContext.request.contextPath}/getjianliid/${combasemsgid}?pn=${pageInfo.pageNum-1}" aria-label="Previous">
                                                <span aria-hidden="true">上一页</span>
                                            </a>
                                        </c:if>
                                    </td>
                                    <td style="width: 48%">
                                        <div class="col-md-6">
                                            当前第 ${pageInfo.pageNum} 页.共 ${pageInfo.pages} 页
                                        </div>
                                    </td>
                                    <td style="width: 13%">
                                        <c:if test="${pageInfo.hasNextPage}">
                                            <a href="${pageContext.request.contextPath}/getjianliid/${combasemsgid}?pn=${pageInfo.pageNum+1}"
                                               aria-label="Next">
                                                <span aria-hidden="true">下一页</span>
                                            </a>
                                        </c:if>
                                    </td>
                                    <td style="width: 13%">
                                        <a href="${pageContext.request.contextPath}/getjianliid/${combasemsgid}?pn=${pageInfo.pages}">尾页</a>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </dd>

                </dl>
            </c:if>
        </div>
        <%--end content--%>


        <script src="style/js/job_list.min.js" type="text/javascript"></script>
        <div class="clear"></div>
        <input type="hidden" value="74fb1ce14ebf4e2495270b0fbad64704" id="resubmitToken">
        <a rel="nofollow" title="回到顶部" id="backtop"></a>
    </div><!-- end #container -->
	</div><!-- end #body -->

<script src="style/js/core.min.js" type="text/javascript"></script>

<div id="cboxOverlay" style="display: none;"></div>
<div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;">
	<div id="cboxWrapper">
		<div>
			<div id="cboxTopLeft" style="float: left;"></div>
			<div id="cboxTopCenter" style="float: left;"></div>
			<div id="cboxTopRight" style="float: left;"></div>
		</div>
		<div style="clear: left;">
			<div id="cboxMiddleLeft" style="float: left;"></div>
			<div id="cboxContent" style="float: left;">
				<div id="cboxTitle" style="float: left;"></div>
				<div id="cboxCurrent" style="float: left;"></div>
				<button type="button" id="cboxPrevious"></button>
				<button type="button" id="cboxNext"></button>
				<button id="cboxSlideshow"></button>
				<div id="cboxLoadingOverlay" style="float: left;"></div>
				<div id="cboxLoadingGraphic" style="float: left;"></div>
			</div>
			<div id="cboxMiddleRight" style="float: left;"></div>
		</div>
		<div style="clear: left;">
			<div id="cboxBottomLeft" style="float: left;"></div>
			<div id="cboxBottomCenter" style="float: left;"></div>
			<div id="cboxBottomRight" style="float: left;"></div>
		</div>
	</div>
	<div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div>
</div>


<%--星星取值--%>
<script>
    $(function () {
        //评分
        var starRating = 0;
        $('.photo span').on('mouseenter',function () {
            var index = $(this).index()+1;
            $(this).prevAll().find('.high').css('z-index',1)
            $(this).find('.high').css('z-index',1)
            $(this).nextAll().find('.high').css('z-index',0)
            $('.starNum').html((index*2).toFixed(1)/2)
        })
        $('.photo').on('mouseleave',function () {
            $(this).find('.high').css('z-index',0)
            var count = starRating / 2
            if(count == 5) {
                $('.photo span').find('.high').css('z-index',1);
            } else {
                $('.photo span').eq(count).prevAll().find('.high').css('z-index',1);
            }
            $('.starNum').html(starRating.toFixed(1)/2)
        })
        $('.photo span').on('click',function () {
            var index = $(this).index()+1;
            $(this).prevAll().find('.high').css('z-index',1)
            $(this).find('.high').css('z-index',1)
            starRating = index*2;
            $('.starNum').html(starRating.toFixed(1)/2);
            alert('评分：'+("成功将该应聘者设置为"+starRating.toFixed(1)/2)+"等级")
        })
        //取消评分
        $('.cancleStar').on('click',function () {
            starRating = 0;
            $('.photo span').find('.high').css('z-index',0);
            $('.starNum').html(starRating.toFixed(1)/2);
        })
        //确定评分
        $('.sureStar').on('click',function () {
            if(starRating===0) {
                alert('最低一颗星！');
            } else {
                alert('取值：'+(starRating.toFixed(1)/2))
            }
        })
    })
</script>

 </body>
</html>