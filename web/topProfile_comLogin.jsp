<%--
  Created by IntelliJ IDEA.
  User: 19035
  Date: 2018/8/2
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--
<base href="${pageContext.request.scheme }://${pageContext.request.serverName}:${pageContext.request.serverPort}/">
--%>
<div id="header">
    <div class="wrapper">
        <a class="logo" href="index.jsp">
            <img width="229" height="43" alt="招聘网-专注互联网招聘" src="style/images/logo.png">
        </a>
        <ul id="navheader" class="reset">
            <li><a href="comIndex.jsp">首页</a></li>
            <li class="current"><a href="/Combasemsg/showAll">公司列表</a></li>
            <li>
                <a rel="nofollow" href="comIndex.jsp">论坛</a>
            </li>
            <li><a rel="nofollow" href="/ComPositionType/showAll">发布职位</a></li><%--/ComPositionType/showAll--%>
            <li><a rel="nofollow" href="/getjianliid/${account.useraccountid}">人才管理</a></li>
        </ul>
        <dl class="collapsible_menu">
            <dt>
                <span><a href="uploadify.jsp"><img src="${account.touxiang}"  style="width: 25px;height: 25px;"/></a></span>&nbsp;&nbsp;
                <span>${account.phone}</span>
                <span class="red dn" id="noticeDot-1"></span>
                <i class="btm"></i>
            </dt>
            <dd class="btm"><a href="resetPwd.jsp">修改密码</a></dd>
            <dd class="btm"><a href="/Combasemsg/searchByAccountid">编辑公司基本信息</a></dd>
            <dd class="btm"><a href="/getjianliid/${account.useraccountid}">人才管理</a></dd>
            <dd class="btm"><a href="#">系统消息</a></dd>
            <%--<dd><a href="accountBind.jsp">帐号设置</a></dd>--%>
            <dd class="logout"><a rel="nofollow" href="login.jsp">退出</a></dd>
        </dl>
    </div>
</div><!-- end #header -->