<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/19/019
  Time: 22:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
<meta name="viewport" content="width=device-width" />


<!-- Bootstrap core CSS     -->
<link href="${basePath}/assets/css/bootstrap.min.css" rel="stylesheet" />

<!-- Animation library for notifications   -->
<link href="${basePath}/assets/css/animate.min.css" rel="stylesheet"/>

<!--  Light Bootstrap Table core CSS    -->
<link href="${basePath}/assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>


<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="${basePath}/assets/css/demo.css" rel="stylesheet" />

<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
</head>
<body>
    <div class="" style="width: 100%; height: 15%;">
        <div class="col-md-3 col-md-offset-2">
            <br/>
            <div class="col-md-2" style="padding-top: 10px;">
                <img src="${basePath}/assets/img/timg.jpg" width="70">
            </div>
            <div class="col-md-6">
                <h3 style="color: red;"><b>乐商城</b></h3>
                <span>&nbsp;&nbsp;&nbsp;leshop.net</span>
            </div>
        </div>
        <div class="col-md-6" style="padding-top: 70px;">
            <p class="text-center" style="color: #333;">乐购物陪伴你的健康</p>
        </div>
    </div>
    <div class="" style="width: 100%; height: 70%;background-image: url('${basePath}/assets/img/login.jpg')";>
        <div class="col-md-12">
            <div class="col-md-6 col-md-offset-6" style="padding-top: 100px;">
                <div class="col-md-6 col-md-offset-3" style="border-radius: 6px;border: 1px solid #eee; padding: 10px 50px 30px 50px;background-color: #fff;">
                    <form>
                        <h4 style="color: #3c763d">&nbsp;&nbsp;账户登录</h4>
                        <hr/>
                        <label class="control-label">用户名</label>
                        <input type="text" class="form-control">
                        <br/>
                        <label class="control-label">密码</label>
                        <input type="text" class="form-control">
                        <br/>
                        <br/>
                        <button type="button" class="btn btn-success" style="width: 100%;">登录</button>
                        <br/>
                        <br/>
                        <a href="#" class="pull-left">立即注册</a>
                        <a href="#" class="pull-right">忘记密码</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="" style="width: 100%; height: 15%;">
        <div class="col-md-8 col-md-offset-2">
            <%@ include file="foot.jsp"%>
        </div>
    </div>
</body>
</html>
