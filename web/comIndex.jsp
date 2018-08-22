<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns:wb="http://open.weibo.com/wb">
<head>
    <base href="${pageContext.request.scheme }://${pageContext.request.serverName}:${pageContext.request.serverPort}/">
    <script id="allmobilize" charset="utf-8" src="style/js/allmobilize.min.js"></script>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="alternate" media="handheld"/>
    <!-- end 云适配 -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>招聘网|公司主页</title>
    <meta property="qc:admins" content="23635710066417756375"/>
    <meta content="" name="description">
    <meta content="" name="keywords">
    <meta name="baidu-site-verification" content="QIQ6KC1oZ6"/>


    <!-- <div class="web_root"  style="display:none">h</div> -->
    <script type="text/javascript">
        var ctx = "h";
        console.log(1);
    </script>
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
    <script type="text/css" src="static/css/tableCss.css"></script>
    <![endif]-->
    <script type="text/javascript">
        var youdao_conv_id = 271546;
    </script>
    <script type="text/javascript" src="style/js/conv.js"></script>

    <style>
        #tableSet tr td{
            margin: 5px;padding:10px;
        }
    </style>

</head>
<body>


<div id="body">

    <%--header--%>
    <%@include file="topProfile_comLogin.jsp" %>
    <%--header end--%>

        <%--判断打开的公司是否为空--%>
        <c:if test="${combasemsg eq  null}">
            <script language="javascript"type="text/javascript">
                window.location.href="/getComId/${account.useraccountid}";
            </script>
        </c:if>

        <%--判断是否将求职者收藏--%>
        <input type="hidden" id="result" value="${getResult}">
        <script>
            var res=$("#result").val();
            if(res==1){
                alert("收藏成功！！！");
            }
            if(res==-1){
                alert("收藏失败！！！");
            }
        </script>


    <%--判断打开的应聘者是否为空--%>
        <c:if test="${jian eq null}">
            <script language="javascript"type="text/javascript">
                window.location.href="/showjianli";
            </script>
         </c:if>




<%--主体部分--%>
    <div id="container">

        <div id="sidebar">
            <div>
                <div style="width:229px;height:250px;background-color: white"><img src="${combasemsg.businesslicense}" style="width:229px;height:250px ;border-radius:20px 0px 0px 0px;"></div>
         </div>
            <table id="tableSet" style="margin-top: 10px;padding:5px; align: center;color: hotpink;">
                <tr>
                    <td>公司名：${combasemsg.comname}</td>
                </tr>
                <tr>
                    <td>法人姓名：${combasemsg.faren}</td>
                </tr>
                <tr>
                    <td>联系电话：${combasemsg.phone}</td>
                </tr>
                <tr>
                    <td>注册时间：${combasemsg.registertime}</td>
                </tr>
                <tr>
                    <td>公司产业：${combasemsg.industry}</td>
                </tr>
                <tr>
                    <td>公司地址：${combasemsg.address}</td>
                </tr>
                <tr>
                    <td>公司规模：${combasemsg.comsize}人</td>
                </tr>
                <tr>
                    <td>公司类型：已通过验证</td>
                </tr>
                <tr>
                    <td>公司简介：${combasemsg.des}</td>
                </tr>
                <tr><td>Share To--->>>
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
					</td></tr>
            </table>
        </div>

        <div class="content" style="float:right">
            <div id="search_box">
                <form id="searchForm" name="searchForm" action="list.jsp" method="get">
                    <ul id="searchType">
                        <li data-searchtype="1" class="type_selected">人才</li>

                    </ul>
                    <div class="searchtype_arrow"></div>
                    <input type="text" id="search_input" name="kd" tabindex="1" value="" placeholder="请输入人才特征，如：程序员"/>
                    <input type="hidden" name="spc" id="spcInput" value=""/>
                    <input type="hidden" name="pl" id="plInput" value=""/>
                    <input type="hidden" name="gj" id="gjInput" value=""/>
                    <input type="hidden" name="xl" id="xlInput" value=""/>
                    <input type="hidden" name="yx" id="yxInput" value=""/>
                    <input type="hidden" name="gx" id="gxInput" value=""/>
                    <input type="hidden" name="st" id="stInput" value=""/>
                    <input type="hidden" name="labelWords" id="labelWords" value=""/>
                    <input type="hidden" name="lc" id="lc" value=""/>
                    <input type="hidden" name="workAddress" id="workAddress" value=""/>
                    <input type="hidden" name="city" id="cityInput" value=""/>
                    <input type="submit" id="search_button" value="搜索" onmouseover="over()" onmouseout="out()"/>

                </form>
            </div>
            <style>
                .ui-autocomplete {
                    width: 488px;
                    background: #fafafa !important;
                    position: relative;
                    z-index: 10;
                    border: 2px solid #91cebe;
                }

                .ui-autocomplete-category {
                    font-size: 16px;
                    color: #999;
                    width: 50px;
                    position: absolute;
                    z-index: 11;
                    right: 0px; /*top: 6px; */
                    text-align: center;
                    border-top: 1px dashed #e5e5e5;
                    padding: 5px 0;
                }
                .ui-menu-item {
                    *width: 439px;
                    vertical-align: middle;
                    position: relative;
                    margin: 0px;
                    margin-right: 50px !important;
                    background: #fff;
                    border-right: 1px dashed #ededed;
                }

                .ui-menu-item a {
                    display: block;
                    overflow: hidden;
                }
            </style>
            <script type="text/javascript" src="style/js/search.min.js"></script>
            <dl class="hotSearch">
                <dt>热门搜索：</dt>
                <dd><a href="list.jspJava?labelWords=label&city=">Java开发程序员</a></dd>
                <dd><a href="list.jspPHP?labelWords=label&city=">DBA</a></dd>
                <dd><a href="list.jspAndroid?labelWords=label&city=">Android</a></dd>
                <dd><a href="list.jspiOS?labelWords=label&city=">iOS</a></dd>
                <dd><a href="list.jsp前端?labelWords=label&city=">前端</a></dd>
                <dd><a href="list.jsp产品经理?labelWords=label&city=">大堂经理</a></dd>
                <dd><a href="list.jspUI?labelWords=label&city=">项目经理</a></dd>
                <dd><a href="list.jsp运营?labelWords=label&city=">软件测试员</a></dd>
                <dd><a href="list.jspBD?labelWords=label&city=">销售</a></dd>

            </dl>
            <div id="home_banner">
                <ul class="banner_bg">
                    <li class="banner_bg_1 current">
                        <a href="h/subject/s_buyfundation.jsp?utm_source=DH__lagou&utm_medium=banner&utm_campaign=haomai"
                           target="_blank"><img src="banner/banner1.jpg" width="612"
                                                height="300" alt=""/></a>
                    </li>
                    <li class="banner_bg_2">
                        <a href="h/subject/s_worldcup.jsp?utm_source=DH__lagou&utm_medium=home&utm_campaign=wc"
                           target="_blank"><img src="banner/banner2.jpg" width="612"
                                                height="300" alt="世界杯放假看球，老板我也要！"/></a>
                    </li>
                    <li class="banner_bg_3">
                        <a href="h/subject/s_xiamen.jsp?utm_source=DH__lagou&utm_medium=home&utm_campaign=xiamen"
                           target="_blank"><img src="banner/banner3.jpg" width="612"
                                                height="300" alt="出北京记——第一站厦门"/></a>
                    </li>
                    <li class="banner_bg_4">
                        <a href="h/subject/s_xiamen.jsp?utm_source=DH__lagou&utm_medium=home&utm_campaign=xiamen"
                           target="_blank"><img src="banner/banner4.jpg" width="612"
                                                height="300" alt="涣发大号"/></a>
                    </li>
                </ul>
                <div class="banner_control">
                    <em></em>
                    <ul class="thumbs">
                        <li class="thumbs_1 current">
                            <i></i>
                            <img src="banner/banner1.jpg" width="113" height="50"/>
                        </li>
                        <li class="thumbs_2">
                            <i></i>
                            <img src="banner/banner2.jpg" width="113" height="50"/>
                        </li>
                        <li class="thumbs_3">
                            <i></i>
                            <img src="banner/banner3.jpg" width="113" height="50"/>
                        </li>
                        <li class="thumbs_4">
                            <i></i>
                            <img src="banner/banner4.jpg" width="113" height="50"/>
                        </li>
                    </ul>
                </div>
            </div><!--/#main_banner-->

       <%--     <ul id="da-thumbs" class="da-thumbs"></ul>--%>

            <ul class="reset hotabbing">
                <li class="current">应聘者简历推荐</li>

            </ul>


            <%--这里显示所有的简历--%>
            <div id="hotList">
                <ul class="hot_pos reset">
                    <c:forEach var="jianli" items="${jian}">

                        <li class="odd clearfix">
                            <div class="hot_pos_l">
                                <div class="mb10">
                                    <a href="/jianli/${jianli.name}"  target="_blank">${jianli.name}</a>
                                    &nbsp;
                                    <span class="c9">[${jianli.hopedaddress}]</span>
                                </div>
                                <span><em class="c7">月薪：</em>${jianli.hopedsalary}</span>
                                <span><em class="c7">经验：</em>${jianli.startworktime}</span>
                                <br />
                                <span><em class="c7">工作状态：</em>${jianli.workstatus}</span>
                                <br />
                            </div>
                            <div class="hot_pos_r">
                                <span><em class="c7">应聘职位： </em>${jianli.hopedzhiwei}</span>
                                <%--收藏--%>
                                    <span><a href="/collect/${jianli.jianliid}&${combasemsg.combasemsgid}" id="set" style="color:#ff69b4; text-align: right;">收藏简历</a></span>
                                <%----%><br/>
                                <span><em class="c7">电话： </em>${jianli.phone}</span><br/>
                                <span><em class="c7">邮件：</em> ${jianli.email}</span><br />
                                <ul class="companyTags reset">
                                </ul>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
                <a href="/showalljianli" class="btn fr" target="_blank">查看更多</a>
            </div>


            <%--给收藏链接添加点击事件，用于实现点击后超链接变为不可用状态--%>

            <script type="text/javascript">
              $(document).ready(function(){
                  $("#set").click(function(){
                      $(this).attr("disable",true);
                      $(this).css("color",gray);
                  })
              })
            </script>

            <div class="clear"></div>
        </div>
        <input type="hidden" value="" name="userid" id="userid"/>
        <!-- <div id="qrSide"><a></a></div> -->
        <!--  -->

        <!-- <div id="loginToolBar">
            <div>
                <em></em>
                <img src="style/images/footbar_logo.png" width="138" height="45" />
                <span class="companycount"></span>
                <span class="positioncount"></span>
                <a href="#loginPop" class="bar_login inline" title="登录"><i></i></a>
                <div class="right">
                    <a href="register.jsp?from=index_footerbar" onclick="_hmt.push(['_trackEvent', 'button', 'click', 'register'])" class="bar_register" id="bar_register" target="_blank"><i></i></a>
                </div>
                <input type="hidden" id="cc" value="16002" />
                <input type="hidden" id="cp" value="96531" />
            </div>
        </div>
         -->

        <!------------------------------------- end ----------------------------------------->
        <script type="text/javascript" src="style/js/Chart.min.js"></script>
        <script type="text/javascript" src="style/js/home.min.js"></script>
        <script type="text/javascript" src="style/js/count.js"></script>
        <div class="clear"></div>
        <input type="hidden" id="resubmitToken" value=""/>
        <a id="backtop" title="回到顶部" rel="nofollow"></a>
    </div><!-- end #container -->
</div><!-- end #body -->
<script type="text/javascript" src="style/js/core.min.js"></script>
<script type="text/javascript" src="style/js/popup.min.js"></script>

<!-- <script src="style/js/wb.js" type="text/javascript" charset="utf-8"></script>
 -->

</body>
</html>