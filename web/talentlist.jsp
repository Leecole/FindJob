<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
    <base  href="${pageContext.request.scheme }://${pageContext.request.serverName}:${pageContext.request.serverPort}/">

    <script id="allmobilize" charset="utf-8" src="style/js/allmobilize.min.js"></script>
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="alternate" media="handheld"  />
    <!-- end 云适配 -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>招聘网|前端开发全国-职位搜索</title>
    <meta property="qc:admins" content="23635710066417756375" />
    <meta content="前端开发招聘  全国地区招聘 紫色医疗招聘前端开发,月薪:10k-20k,要求:本科及以上学历,3-5年工作经验。职位诱惑：借移动医疗大势享受坐直升飞机的职场发展 公司规模:15-50人移动互联网 ,健康医疗类公司招聘信息汇总  最新最热门互联网行业招聘信息，尽在拉勾网" name="description">
    <meta content="前端开发招聘,全国地区前端开发招聘,紫色医疗招聘前端开发,移动互联网 类公司招聘信息汇总,健康医疗类公司招聘信息汇总,拉勾招聘,拉勾网,互联网招聘" name="keywords">
    <meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

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
    <!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
    <![endif]-->
    <script type="text/javascript">
        var youdao_conv_id = 271546;
    </script>
    <script type="text/javascript" src="style/js/conv.js"></script>
</head>
<body>
<div id="body">

    <%@include file="topProfile_comLogin.jsp"%>

    <%--&lt;%&ndash;判断是否添加过该求职者&ndash;%&gt;
    <c:if test="${getResult eq failed}">
        <script>
            alert("您已经收藏该求职者");
        </script>
    </c:if>--%>




    <div id="container">

        <div class="sidebar">
            <div id="options" class="greybg">
                <dl >
                    <dt>月薪范围 <em ></em></dt>
                    <dd >
                        <div onclick="window.location='/showalljianli/conditionjianli/2k以下&${startworktime}&${hopedworktype}&${hopedaddress}'" style="background: ${requestScope.hopedsalary eq "2k以下"?"#00b38a":""}">2k以下</div>
                        <div onclick="window.location='/showalljianli/conditionjianli/2k-5k&${startworktime}&${hopedworktype}&${hopedaddress}'" style="background: ${requestScope.hopedsalary eq "2k-5k"?"#00b38a":""}">2k-5k</div>
                        <div onclick="window.location='/showalljianli/conditionjianli/5k-10k&${startworktime}&${hopedworktype}&${hopedaddress}'" style="background: ${requestScope.hopedsalary eq "5k-10k"?"#00b38a":""}">5k-10k</div>
                        <div onclick="window.location='/showalljianli/conditionjianli/10k-15k&${startworktime}&${hopedworktype}&${hopedaddress}'" style="background: ${requestScope.hopedsalary eq "10k-15k"?"#00b38a":""}">10k-15k</div>
                        <div onclick="window.location='/showalljianli/conditionjianli/15k-25k&${startworktime}&${hopedworktype}&${hopedaddress}'" style="background: ${requestScope.hopedsalary eq "15k-25k"?"#00b38a":""}">15k-25k</div>
                        <div onclick="window.location='/showalljianli/conditionjianli/25k-50k&${startworktime}&${hopedworktype}&${hopedaddress}'" style="background: ${requestScope.hopedsalary eq "25k-50k"?"#00b38a":""}">25k-50k</div>
                        <div onclick="window.location='/showalljianli/conditionjianli/50k以上&${startworktime}&${hopedworktype}&${hopedaddress}'" style="background: ${requestScope.hopedsalary eq "50k以上"?"#00b38a":""}">50k以上</div>
                    </dd>
                </dl>
                <dl >
                    <dt>工作经验 <em ></em></dt>
                    <dd >

                        <div onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&应届毕业生&${hopedworktype}&${hopedaddress}'" style="background: ${requestScope.startworktime eq "应届毕业生"?"#00b38a":""}">应届毕业生</div>
                        <div onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&1年&${hopedworktype}&${hopedaddress}'" style="background: ${requestScope.startworktime eq "1年"?"#00b38a":""}">1年</div>
                        <div onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&2年&${hopedworktype}&${hopedaddress}'" style="background: ${requestScope.startworktime eq "2年"?"#00b38a":""}">2年</div>
                        <div onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&3年&${hopedworktype}&${hopedaddress}'" style="background: ${requestScope.startworktime eq "3年"?"#00b38a":""}">3年</div>
                        <div onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&4年&${hopedworktype}&${hopedaddress}'" style="background: ${requestScope.startworktime eq "4年"?"#00b38a":""}">4年</div>
                        <div onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&5年&${hopedworktype}&${hopedaddress}'" style="background: ${requestScope.startworktime eq "5年"?"#00b38a":""}">5年</div>
                        <div onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&6年&${hopedworktype}&${hopedaddress}'" style="background: ${requestScope.startworktime eq "6年"?"#00b38a":""}">6年</div>
                        <div onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&7年&${hopedworktype}&${hopedaddress}'" style="background: ${requestScope.startworktime eq "7年"?"#00b38a":""}">7年</div>
                        <div onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&8年&${hopedworktype}&${hopedaddress}'" style="background: ${requestScope.startworktime eq "8年"?"#00b38a":""}">8年</div>
                        <div onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&9年&${hopedworktype}&${hopedaddress}'" style="background: ${requestScope.startworktime eq "9年"?"#00b38a":""}">9年</div>
                        <div onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&10年&${hopedworktype}&${hopedaddress}'" style="background: ${requestScope.startworktime eq "10年"?"#00b38a":""}">10年</div>
                    </dd>
                </dl>
                <dl >
                    <dt>工作性质 <em ></em></dt>
                    <dd >

                        <div onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&全职&${hopedaddress}'" style="background: ${requestScope.hopedworktype eq "全职"?"#00b38a":""}">全职</div>
                        <div onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&兼职&${hopedaddress}'" style="background: ${requestScope.hopedworktype eq "兼职"?"#00b38a":""}">兼职</div>
                        <div onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&实习&${hopedaddress}'" style="background: ${requestScope.hopedworktype eq "实习"?"#00b38a":""}">实习</div>

                    </dd>
                </dl>
            </div>

            <!-- QQ群 -->
            <div class="qq_group">
                加入<span>前端</span>QQ群
                <div class="f18">跟同行聊聊</div>
                <p>160541839</p>
            </div>

            <!-- 对外合作广告位  -->
            <a href="http://www.w3cplus.com/" target="_blank" class="partnersAd">
                <img src="style/images/w3cplus.png" width="230" height="80" alt="w3cplus" />
            </a>
            <a href="" target="_blank" class="partnersAd">
                <img src="style/images/jquery_school.jpg" width="230" height="80" alt="JQ学校" />
            </a>
            <a href="http://linux.cn/" target="_blank" class="partnersAd">
                <img src="style/images/linuxcn.png" width="230" height="80" alt="Linux中文社区"  />
            </a>
            <a href="http://zt.zhubajie.com/zt/makesite? utm_source=lagou.com&utm_medium=referral&utm_campaign=BD-yl" target="_blank" class="partnersAd">
                <img src="style/images/zhubajie.jpg" width="230" height="80" alt="猪八戒" />
            </a>
            <a href="http://www.imooc.com" target="_blank" class="partnersAd">
                <img src="style/images/muke.jpg" width="230" height="80" alt="幕课网" />
            </a>
            <!-- 	            <a href="http://www.osforce.cn/" target="_blank" class="partnersAd">
     <img src="style/images/osf-lg.jpg" width="230" height="80" alt="开源力量"  />
 </a>
-->
        </div>

        <div class="content">
            <div id="search_box">
                <form id="searchForm" name="searchForm" action="list.jsp" method="get">
                    <ul id="searchType">
                        <li data-searchtype="1" class="type_selected">人才</li>
                    </ul>
                    <div class="searchtype_arrow"></div>
                    <input type="text" id="search_input" name = "kd"  tabindex="1" value="前端开发"  placeholder="请输入职位名称，如：产品经理"  />

                    <input type="hidden" name="workAddress" id="workAddress" value=""/>
                    <input type="hidden" name="city" id="cityInput" value="全国"/>
                    <%--<input type="submit" id="search_button" value="搜索" />--%>
                </form>
            </div>
            <style>
                .ui-autocomplete{width:488px;background:#fafafa !important;position: relative;z-index:10;border: 2px solid #91cebe;}
                .ui-autocomplete-category{font-size:16px;color:#999;width:50px;position: absolute;z-index:11; right: 0px;/*top: 6px; */text-align:center;border-top: 1px dashed #e5e5e5;padding:5px 0;}
                .ui-menu-item{ *width:439px;vertical-align: middle;position: relative;margin: 0px;margin-right: 50px !important;background:#fff;border-right: 1px dashed #ededed;}
                .ui-menu-item a{display:block;overflow:hidden;}
            </style>
            <script type="text/javascript" src="style/js/search.min.js"></script>

            <div class="breakline"></div>
            <dl class="workplace" id="workplaceSelect">
                <dt class="fl">工作地点：</dt>
                <dd >
                    <a href="/showalljianli/conditionjianli/&&&" >显示所有</a>
                    |
                </dd>
                <dd >
                    <a href="/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&" >全国</a>
                    |
                </dd>
                <dd >
                    <a href="/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&北京" class="${requestScope.hopedaddress eq "北京"?"current":""}">北京</a>
                    |
                </dd>
                <dd >
                    <a href="/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&上海" class="${requestScope.hopedaddress eq "上海"?"current":""}">上海</a>
                    |
                </dd>
                <dd >
                    <a href="/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&广州" class="${requestScope.hopedaddress eq "广州"?"current":""}">广州</a>
                    |
                </dd>
                <dd >
                    <a href="/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&深圳" class="${requestScope.hopedaddress eq "深圳"?"current":""}">深圳</a>
                    |
                </dd>
                <dd >
                    <a href="/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&成都" class="${requestScope.hopedaddress eq "成都"?"current":""}">成都</a>
                    |
                </dd>
                <dd >
                    <a href="/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&杭州" class="${requestScope.hopedaddress eq "杭州"?"current":""}">杭州</a>
                    |
                </dd>
                <dd >
                    <a href="/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&武汉" class="${requestScope.hopedaddress eq "武汉"?"current":""}">武汉</a>
                    |
                </dd>
                <dd >
                    <a href="/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&南京" class="${requestScope.hopedaddress eq "南京"?"current":""}">南京</a>
                    |
                </dd>
                <dd  class="more" >
                    <a href="javascript:;" >其他</a>
                    <div class="triangle citymore_arrow"></div>
                </dd>
                <dd id="box_expectCity" class="searchlist_expectCity dn">
                    <span class="bot"></span>
                    <span class="top"></span>
                    <dl>
                        <dt>ABCDEF</dt>
                        <dd>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&北京'">北京</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&长春'">长春</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&成都'">成都</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&重庆'">重庆</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&长沙'">长沙</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&常州'">常州</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&东莞'">东莞</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&大连'">大连</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&佛山'">佛山</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&福州'">福州</span>

                        </dd>
                    </dl>
                    <dl>
                        <dt>GHIJ</dt>
                        <dd>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&贵阳'">贵阳</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&广州'">广州</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&哈尔滨'">哈尔滨</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&合肥'">合肥</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&海口'">海口</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&杭州'">杭州</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&惠州'">惠州</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&金华'">金华</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&济南'">济南</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&嘉兴'">嘉兴</span>


                        </dd>
                    </dl>
                    <dl>
                        <dt>KLMN</dt>
                        <dd>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&昆明'">昆明</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&廊坊'">廊坊</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&宁波'">宁波</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&南昌'">南昌</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&南京'">南京</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&南宁'">南宁</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&南通'">南通</span>

                        </dd>
                    </dl>
                    <dl>
                        <dt>OPQR</dt>
                        <dd>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&青岛'">青岛</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&泉州'">泉州</span>

                        </dd>
                    </dl>
                    <dl>
                        <dt>STUV</dt>
                        <dd>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&上海'">广州</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&石家庄'">石家庄</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&绍兴'">绍兴</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&沈阳'">沈阳</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&深圳'">深圳</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&苏州'">苏州</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&天津'">天津</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&太原'">太原</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&台州'">台州</span>

                        </dd>
                    </dl>
                    <dl>
                        <dt>WXYZ</dt>
                        <dd>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&武汉'">武汉</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&无锡'">无锡</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&温州'">温州</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&西安'">西安</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&厦门'">厦门</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&烟台'">烟台</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&珠海'">珠海</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&中山'">中山</span>
                            <span onclick="window.location='/showalljianli/conditionjianli/${hopedsalary}&${startworktime}&${hopedworktype}&郑州'">郑州</span>

                        </dd>
                    </dl>
                </dd>
            </dl>



            <c:if test="${conditionjianli ne null}">
                <ul class="hot_pos reset">
                    <c:forEach var="jianli" items="${conditionjianli}">
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
                                <span><a href="/collect/${jianli.jianliid}&${combasemsg.combasemsgid}" style="color:#ff69b4; text-align: right;">收藏简历</a></span><br/>
                                <span><em class="c7">电话： </em>${jianli.phone}</span><br/>
                                <span><em class="c7">邮件：</em> ${jianli.email}</span><br />
                                <ul class="companyTags reset">
                             </ul>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </c:if>


            <c:if test="${alljianli ne null}">
                <ul class="hot_pos reset">
                    <c:forEach var="jianli" items="${alljianli}">

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
                                <span><a href="/collect/${jianli.jianliid}&${combasemsg.combasemsgid}" style="color:#ff69b4; text-align: right;">收藏简历</a></span><br/>
                                    <%----%>
                                <span><em class="c7">电话： </em>${jianli.phone}</span><br/>
                                <span><em class="c7">邮件：</em> ${jianli.email}</span><br />
                                <ul class="companyTags reset">
                                </ul>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </c:if>

            <div class="Pagination"></div>
        </div>

        <script>
            $(function(){
                /***************************
                 * 分页
                 */
                $('.Pagination').pager({
                    currPage: 1,
                    pageNOName: "pn",
                    form: "searchForm",
                    pageCount: 30,
                    pageSize:  5
                });

                // $(".workplace dd").not('.more').children('a').click(function(){
                //     $('#lc').val(1);
                //     editForm("cityInput" , $(this).html());
                // });
                //
                // $("#box_expectCity dd span").click(function(){
                //     $('#lc').val(1);
                //     editForm("cityInput" , $(this).html());
                // });

                // $('#options dd div').click(function(){
                //     var firstName = $(this).parents('dl').children('dt').text();
                //     var fn = $.trim(firstName);
                //     if (fn=="月薪范围"){
                //         editForm("yxInput" , $(this).html());
                //     }
                //     else if(fn=="工作经验"){
                //         editForm("gjInput" , $(this).html());
                //     }
                //     else if(fn=="最低学历"){
                //         editForm("xlInput" , $(this).html());
                //     }
                //     else if(fn=="工作性质"){
                //         editForm("gxInput" , $(this).html());
                //     }
                //     else if(fn=="发布时间"){
                //         editForm("stInput" , $(this).html());
                //     }
                // });

                $('#selected ul').delegate('li span.select_remove','click',function(event){
                    var firstName = $(this).parent('li').find('strong').text();
                    var fn = $.trim(firstName);
                    if (fn=="月薪范围")
                        editForm("yxInput" , "");
                    else if(fn=="工作经验")
                        editForm("gjInput" , "");
                    else if(fn=="最低学历")
                        editForm("xlInput" , "");
                    else if(fn=="工作性质")
                        editForm("gxInput" , "");
                    else if(fn=="发布时间")
                        editForm("stInput" , "");
                });

                /* search结果飘绿	*/
                (function($) {
                    var searchVal = $('#search_input').val();
                    var reg = /\s/g;
                    searchVal = searchVal.replace(reg, "").split("");

                    var resultL = '';
                    var resultR = '';
                    $('.hot_pos li').each(function(){
                        resultL = $('.hot_pos_l a',this).text().split("");
                        $.each(resultL,function(i,v){
                            if($.inArray(v.toLowerCase(),searchVal) != -1 || $.inArray(v.toUpperCase(),searchVal) != -1){
                                resultL[i] = '<span>'+ v +'</span>';
                            }
                        });
                        $('.hot_pos_l a',this).html(resultL.join(''));

                        resultR = $('.hot_pos_r .mb10 a',this).text().split("");
                        $.each(resultR,function(i,v){
                            if($.inArray(v.toLowerCase(),searchVal) != -1 || $.inArray(v.toUpperCase(),searchVal) != -1){
                                resultR[i] = '<span>'+ v +'</span>';
                            }
                        });
                        $('.hot_pos_r .mb10 a',this).html(resultR.join(''));
                    });

                })(jQuery);

                //didi tip
                if($.cookie('didiTip') != 1 && false){
                    $('#tip_didi').show();
                }
                $('#tip_didi a').click(function(){
                    $(this).parent().remove();
                    $.cookie('didiTip',1,{ expires: 30, path: '/'});
                });

            });

            function editForm(inputId,inputValue){
                $("#"+inputId).val(inputValue);
                var keyword = $.trim($('#search_input').val());
                var reg =  /[`~!@\$%\^\&\*\(\)_<>\?:"\{\},\\\/;'\[\]]/ig;
                var re = /#/g;
                var r = /\./g;
                var kw = keyword.replace(reg," ");

                if(kw == ''){
                    $('#searchForm').attr('action','list.html所有职位').submit();
                }else{
                    kw = kw.replace(re,'井');
                    kw = kw.replace(r,'。');
                    $('#searchForm').attr('action','list.html'+kw).submit();
                }
                //$("#searchForm").submit();
            }
        </script>


        <div class="clear"></div>
        <input type="hidden" id="resubmitToken" value="" />
        <a id="backtop" title="回到顶部" rel="nofollow"></a>
    </div><!-- end #container -->
</div><!-- end #body -->
<div id="footer">
    <div class="wrapper">
        <a href="h/about.html" target="_blank" rel="nofollow">联系我们</a>
        <a href="h/af/zhaopin.html" target="_blank">互联网公司导航</a>
        <a href="http://e.weibo.com/lagou720" target="_blank" rel="nofollow">拉勾微博</a>
        <a class="footer_qr" href="javascript:void(0)" rel="nofollow">拉勾微信<i></i></a>
        <div class="copyright">&copy;2013-2014 Lagou <a target="_blank" href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action">京ICP备14023790号-2</a></div>
    </div>
</div>

<script type="text/javascript" src="style/js/core.min.js"></script>
<script type="text/javascript" src="style/js/popup.min.js"></script>

<!--  -->

</body>
</html>