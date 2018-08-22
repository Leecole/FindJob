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
    <title>招聘网|我发布的职位</title>

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

    <style>
        #positionSet tr td{
            padding:5px;
            margin:5px;
        }
    </style>

</head>
<body>
<div id="body">

    <%@include file="topProfile_comLogin.jsp" %>

    <!-- end #header -->

    <%--删除某个已发布的职位，后台操作返回该界面时，如果数据为空，则重新加载数据--%>
    <c:if test="${PageInfo.list eq null}">
        <script>
            window.location.href="/SelectAllPositions/${combasemsg.combasemsgid}";
        </script>
    </c:if>



    <div id="container">
        <div class="sidebar">
            <a class="btn_create" href="/SelectAllPositions/${combasemsg.combasemsgid}" style="background-color: pink">查看已发布职位</a>
            <dl class="company_center_aside">

                <dt>已发布的职位</dt>
                <dd >
                    <a href="/SelectAllPositions/${combasemsg.combasemsgid}">已发布的职位</a>
                </dd>
            </dl>
        </div><!-- end .sidebar -->

        <div class="content">
            <dl class="company_center_content">
                <dt>
                    <h1>
                        <em></em>
                        已发布职位 <span>（共<i style="color:#fff;font-style:normal" id="positionNumber">${PageInfo.total}</i>个）</span>                        </h1>
                </dt>
                <dd>
                    <form id="searchForm">
                        <input type="hidden" value="Publish" name="type">
                        <ul class="reset my_jobs">
                            <c:forEach items="${PageInfo.list}" var="position">
                                <li data-id="149594">
                                    <h3>
                                        <a target="_blank" title="职位名称">${position.positionname}</a>
                                        <span>[${position.address}]</span>
                                    </h3>
                                    <table style="padding:5px;" id="positionSet">
                                        <tr>
                                            <td>招聘人数：${position.needed}</td>
                                            <td>月薪：${position.salary}</td>
                                        </tr>
                                        <tr>
                                            <td>工作经验：${position.experience}</td>
                                            <td>学历：${position.edu}</td>
                                        </tr>
                                        <tr>
                                            <td>职位标签：${position.positionlable}</td>
                                            <td>公司地址: ${position.address}</td>
                                        </tr>
                                        <%--<tr>
                                            <td colspan="2">职位描述：${position.positionmsg}</td>
                                        </tr>--%>
                                    </table>
                                    <div class="c9">发布时间：${position.pubtime}</div>
                                    <div class="links">
                                        <a target="_blank" class="job_edit" href="/UploadPosition/${position.positionid}">修改</a>
                                        <a class="job_del" href="/DeletePositionById/${position.positionid}">删除</a>
                                    </div>
                                </li>
                           </c:forEach>
                        </ul>

             <%----------------------------------分页按钮 start ---------------------------------------%>
                        <table style="height:10px;width: 100%;text-align: center">
                            <tr>
                                <td style="width: 13%">
                                    <a href="${pageContext.request.contextPath}/SelectAllPositions/${combasemsg.combasemsgid}?pn=1">首页</a>
                                </td>
                                <td style="width: 13%">
                                    <c:if test="${PageInfo.hasPreviousPage}">
                                        <a href="${pageContext.request.contextPath}/SelectAllPositions/${combasemsg.combasemsgid}?pn=${PageInfo.pageNum-1}" aria-label="Previous">
                                            <span aria-hidden="true">上一页</span>
                                        </a>
                                    </c:if>
                                </td>
                                <td style="width: 48%">
                                    <div class="col-md-6">
                                        当前第 ${PageInfo.pageNum} 页.共 ${PageInfo.pages} 页
                                    </div>
                                </td>
                                <td style="width: 13%">
                                    <c:if test="${PageInfo.hasNextPage}">
                                        <a href="${pageContext.request.contextPath}/SelectAllPositions/${combasemsg.combasemsgid}?pn=${PageInfo.pageNum+1}"
                                           aria-label="Next">
                                            <span aria-hidden="true">下一页</span>
                                        </a>
                                    </c:if>
                                </td>
                                <td style="width: 13%">
                                    <a href="${pageContext.request.contextPath}/SelectAllPositions/${combasemsg.combasemsgid}?pn=${PageInfo.pages}">尾页</a>
                                </td>
                            </tr>
                        </table>
             <%----------------------------------分页按钮 end---------------------------------------%>
                    </form>
                </dd>
            </dl>
        </div>
        <%--end content--%>


        <script src="style/js/job_list.min.js" type="text/javascript"></script>
        <div class="clear"></div>
        <input type="hidden" value="74fb1ce14ebf4e2495270b0fbad64704" id="resubmitToken">
        <a rel="nofollow" title="回到顶部" id="backtop"></a>
    </div><!-- end #container -->
    <!-- end #container -->
	</div><!-- end #body -->

<script src="style/js/core.min.js" type="text/javascript"></script>
<script src="style/js/popup.min.js" type="text/javascript"></script>
<script src="style/js/tongji.js" type="text/javascript"></script>
<!--  -->
<script src="style/js/analytics01.js" type="text/javascript"></script><script type="text/javascript" src="style/js/h.js"></script>
<script type="text/javascript">
$(function(){
	$('#noticeDot-1').hide();
	$('#noticeTip a.closeNT').click(function(){
		$(this).parent().hide();
	});
});
var index = Math.floor(Math.random() * 2);
var ipArray = new Array('42.62.79.226','42.62.79.227');
var url = "ws://" + ipArray[index] + ":18080/wsServlet?code=314873";
var CallCenter = {
		init:function(url){
			var _websocket = new WebSocket(url);
			_websocket.onopen = function(evt) {
				console.log("Connected to WebSocket server.");
			};
			_websocket.onclose = function(evt) {
				console.log("Disconnected");
			};
			_websocket.onmessage = function(evt) {
				//alert(evt.data);
				var notice = jQuery.parseJSON(evt.data);
				if(notice.status[0] == 0){
					$('#noticeDot-0').hide();
					$('#noticeTip').hide();
					$('#noticeNo').text('').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
					$('#noticeNoPage').text('').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
				}else{
					$('#noticeDot-0').show();
					$('#noticeTip strong').text(notice.status[0]);
					$('#noticeTip').show();
					$('#noticeNo').text('('+notice.status[0]+')').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
					$('#noticeNoPage').text(' ('+notice.status[0]+')').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
				}
				$('#noticeDot-1').hide();
			};
			_websocket.onerror = function(evt) {
				console.log('Error occured: ' + evt);
			};
		}
};
CallCenter.init(url);
</script>

<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body></html>