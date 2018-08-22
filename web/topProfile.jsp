<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 19035
  Date: 2018/8/2
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--start  header --%>
    <div id="header">
        <div class="wrapper">
            <a href="index.jsp" class="logo">
                <img src="style/images/logo.png" width="229" height="43" alt="拉勾招聘-专注互联网招聘" />
            </a>
            <ul id="navheader" class="reset">
                <li><a href="index.jsp">首页</a></li>
                <li class="current"><a href="companylist.jsp">岗位管理</a></li>
                <li>
                    <a rel="nofollow" href="#">论坛</a>
                </li>
                <li><a rel="nofollow" href="create.jsp">发布职位</a></li>
            </ul>
            <ul class="loginTop">

                <c:if test="${account ne null}">
                    <span><img src="${account.touxiang}" style="width: 25px;height: 25px;"/></span>&nbsp;
                    <li><a href="#" rel="nofollow">${account.phone}  </a></li>

                </c:if>
            </ul>
        </div>
    </div>
<!-- end #header -->
