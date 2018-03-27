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
<script src="${basePath}/assets/js/jquery-1.10.2.js" type="text/javascript"></script>
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
    <div class="wrapper">
        <div class="header auto" style="height: 15%;">
            <div class="col-md-6">
                <div class="col-md-offset-1 col-md-1">
                    <img src="${basePath}/assets/img/timg.jpg" width="70px;" style="margin-top: 30px;">
                </div>
                <div class="col-md-4">
                    <h4 style="color: red;"><b>乐商城</b></h4>
                    <span class="col-md-offset-1">le.net</span>
                </div>
            </div>
        </div>
        <div class="content auto" style="height: 85%;background-image: url('${basePath}/assets/img/login.jpg')">
            <div class="col-md-6 col-md-offset-6">
                <div class="col-md-5 col-md-offset-3" style="background-color: rgba(255, 255, 255, 0.8);margin-top: 100px; padding: 0 40px 0 40px;border-radius: 3%;">
                    <form>
                        <h4 style="color: #3c763d">账户登录</h4>
                        <hr/>
                        <span id="loginmsg" style="color: #d43f3a;display: block;padding-bottom: 20px;"></span>
                        <label class="control-label">用户名</label>
                        <input type="text" class="form-control" name="userNumber">
                        <br/>
                        <label class="control-label">密码</label>
                        <input type="text" class="form-control" name="userPassword">
                        <br/>
                        <br/>
                        <button id="loginBtn" type="button" class="btn btn-success" style="width: 100%;">登录</button>
                        <br/>
                        <br/>
                        <a href="#" class="pull-left">立即注册</a>
                        <a href="#" class="pull-right">忘记密码</a>
                        <br/>
                        <br/>
                    </form>
                </div>
            </div>
        </div>
        <div class="footer auto" style="height: 15%">

        </div>
    </div>
    <script type="text/javascript">
        $(function () {
            $("#loginBtn").click(loginsystem)
        });
        function loginsystem () {
            $($("#loginmsg")[0]).html("")
            let userNumber = $("input[name='userNumber']").val()
            let userPassword = $("input[name='userPassword']").val()
            if (userNumber === '' && userPassword === '') {
                $("#loginmsg").append("请输入用户名或密码")
                return
            }
            if (userNumber === '') {
                $("#loginmsg").append("请输入用户名")
                return
            }
            if (userPassword === '') {
                $("#loginmsg").append("请输入密码")
                return
            }
            let param = {
                userNumber: userNumber,
                userPassword: userPassword
            }
            let url = 'userlogin.do'
            $.post(url, param, function (res) {
                
            })
        }
    </script>
</body>
</html>
