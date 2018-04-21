<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>个人设置</title>
    <link rel="stylesheet" href="../css/font-awesome.min.css" />
    <link rel="stylesheet" href="../css/userhome.css" />
    <link rel="stylesheet" href="../css/user.css" />

</head>
<body>
<div class="pre-2" id="big_img">
    <img src="http://findfun.oss-cn-shanghai.aliyuncs.com/images/head_loading.gif" class="jcrop-preview jcrop_preview_s">
</div>
<div id="cover" style="min-height: 639px;">
    <div id="user_area">
        <div id="home_header">
            <a href="/goods/homeGoods">
                <h1 class="logo">校园二手</h1>
            </a>
            <a href="/user/home">
                <div class="home"></div>
            </a>
        </div>
        <div id="user_nav">
            <div class="user_info">
                <div class="head_img">
                    <img src="<%=basePath%>img/photo.jpg">
                </div>
                <div class="big_headimg">
                    <img src="<%=basePath%>img/findfun.png">
                </div>
                <span class="name">${cur_user.username}</span>
                <span class="school">天津师范大学</span>
                <span class="name">闲置数量：${cur_user.goodsNum}</span>
            </div>
            <div class="home_nav">
                <ul>
                    <a href="/user/basic">
                        <li class="set">
                            <div></div>
                            <span>个人设置</span>
                            <strong></strong>
                        </li>
                    </a>
                    <a href="/goods/publishGoods">
                        <li class="store">
                            <div></div>
                            <span>发布物品</span>
                            <strong></strong>
                        </li>
                    </a>
                    <a href="/user/allGoods">
                        <li class="second">
                            <div></div>
                            <span>我的闲置</span>
                            <strong></strong>
                        </li>
                    </a>
                </ul>
            </div>
        </div>
        <div id="user_content">
            <div class="basic">
                <form:form action="/user/updateInfo" method="post" commandName="user" role="form">
                    <h1>完善与修改个人信息</h1><hr />
                    <div class="changeinfo">
                        <span>昵称：</span>
                        <input class="in_info" type="text" name="username" placeholder="请输入昵称" value="${cur_user.username}"/>
                    </div><hr />
                    <div class="changeinfo">
                        <span>开通时间：</span>
                        <input class="in_info" type="text" name="createAt" value="${cur_user.createAt}" readonly="true"/>
                    </div><hr />
                    <div class="changeinfo">
                        <span>手机号码：</span>
                        <input class="in_info" type="text" name="phone" value="${cur_user.phone}" readonly="true"/>
                        <span id="checkphone">已验证</span>
                    </div><hr />
                    <div class="changeinfo">
                        <span>QQ：</span>
                        <input class="in_info" type="text" name="qq" placeholder="请输入QQ" value="${cur_user.qq}"/>
                    </div>
                    <input type="submit" class="setting-save" value="保存修改信息" />
                </form:form>
            </div>

        </div>
    </div>
</div>
</body>
</html>