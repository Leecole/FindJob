<%--
  Created by IntelliJ IDEA.
  User: 19035
  Date: 2018/8/2
  Time: 17:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="header">
    <div class="wrapper">
        <a class="logo" href="h/">
            <img width="229" height="43" alt="拉勾招聘-专注互联网招聘" src="style/images/logo.png">
        </a>
        <ul id="navheader" class="reset">
            <li><a href="index.jsp">首页</a></li>
            <li><a href="companylist.jsp">公司</a></li>
            <li><a rel="nofollow" href="jianli.jsp">我的简历</a></li>
        </ul>
        <dl class="collapsible_menu">
            <dt>
                <span><img src="${account.touxiang}" style="width: 25px;height: 25px;"/></span>&nbsp;
                <span>${account.phone}</span>
                <span class="red dn" id="noticeDot-0"></span>
                <i></i>
            </dt>
            <dd><a rel="nofollow" href="jianli.jsp">我的简历</a></dd>
            <dd><a href="collections.jsp">我收藏的职位</a></dd>
            <dd class="btm"><a href="subscribe.jsp">我的订阅</a></dd>
            <dd><a href="create.jsp">我要招人</a></dd>
            <dd><a href="accountBind.jsp">帐号设置</a></dd>
            <dd class="logout"><a rel="nofollow" href="login.jsp">退出</a></dd>
        </dl>
        <div class="dn" id="noticeTip">
            <span class="bot"></span>
            <span class="top"></span>
            <a target="_blank" href="delivery.jsp"><strong>0</strong>条新投递反馈</a>
            <a class="closeNT" href="javascript:;"></a>
        </div>
    </div>
</div><!-- end #header -->
