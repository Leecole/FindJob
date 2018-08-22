<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <base href="${pageContext.request.scheme }://${pageContext.request.serverName}:${pageContext.request.serverPort}/">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content=""><meta name="author" content="">
    <title>招聘网|companys </title>
    <link rel="Shortcut Icon" href="static/img/favicon.ico">
    <link rel="favicon" href="assets/images/favicon.png">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen">
    <link rel="stylesheet" type="text/css" href="assets/css/isotope.css" media="screen" />
    <link rel="stylesheet" href="assets/js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="assets/css/style.css">

    <!--imgstyle设计logo的css样式-->
    <style>
        .imgstyle{
            position:absolute;
            left:100px;
            top:15px;
            height:90px;
            width:20px;
            opacity:0.7;
            background-color: red;
        }

        .fancybox{
            width:400px;
            height：:300px;
        }
    </style>

</head>

<body>
<!-- Fixed navbar -->
<div class="navbar navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <!-- 这是头部的设计 -->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            <a class="navbar-brand" href="comIndex.jsp">
                <img src="static/img/logo.png" class="imgstyle">
            </a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav pull-right mainNav">
            <li><a href="showAllCompany.jsp" style="position:relative;top:0px; left:-50px;font-size: 18px;">CompanysList</a></li>
                <li style="position:relative;top:10px; left:5px; color: #B8B8B8;font-size: 18px"> ${account.phone}</li>
                <li><img src="${account.touxiang}" style="width:40px; height:40px;position:relative;top:0px; left:20px; border-radius: 25px 25px 25px 25px"></li>

        </ul>
        </div>
        <!--/.nav-collapse -->
    </div>
</div>
<!-- /.navbar -->
<header id="head" class="secondary">
    <div class="container">
        <div class="row">
            <div class="col-sm-8">
                <h1>All Companys Gallary</h1>
            </div>
        </div>
    </div>
</header>

<!-- container 这是展示所有的公司列表-->
<section class="container">
    <div class="row">
        <div class="col-md-12">
            <section id="portfolio" class="page-section section appear clearfix">
                <br />
                <br />
                <div class="row">
                    <nav id="filter" class="col-md-12 text-center">

                    </nav>
                    <div class="col-md-12">
                        <div class="row">

                           <div class="portfolio-items isotopeWrapper clearfix" id="3">

                               <%--用于查询所有的公司信息--%>
                              <c:forEach var="com" items="${combasemsgs}">
                                 <article class="col-sm-4 isotopeItem webdesign">
                                             <div class="portfolio-item">
                                                <img src="${com.businesslicense}" alt="" style="width: 100%;height:300px"/>
                                                <div class="portfolio-desc align-center">
                                                    <div class="folio-info">
                                                        <a href="" class="fancybox">
                                                            <h5>${com.comname}</h5>
                                                            <i class="fa fa-link fa-2x"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                     <span style="color:darkorange;text-align: right;font-size: 16px">${com.address}&nbsp;&nbsp;</span>
                                     <span style="color:orange;text-align: left;font-size: 20px">${com.comname}&nbsp;&nbsp;</span>
                                     <span style="color:darkorange;text-align: right;font-size: 16px">${com.industry}</span>

                                 <%--  </c:forEach>--%>
                                    </article>
                              </c:forEach>
                            </div>

                        </div>


                    </div>
                </div>

            </section>
        </div>
    </div>

</section>

<!-- /container -->
<!-- 这是js块 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.cslider.js"></script>
<script src="assets/js/jquery.isotope.min.js"></script>
<script src="assets/js/fancybox/jquery.fancybox.pack.js" type="text/javascript"></script>
<script src="assets/js/custom.js"></script>
</body>
</html>
