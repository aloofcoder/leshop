<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/18/018
  Time: 22:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="header">
                    <h4 class="title">Striped Table with Hover</h4>
                    <p class="category">Here is a subtitle for this table</p>
                </div>
                <div class="content table-responsive table-full-width">
                    <table class="table table-hover table-striped">
                        <thead>
                        <th>ID</th>
                        <th>用户编号</th>
                        <th>用户名</th>
                        <th>电话</th>
                        <th>昵称</th>
                        <th>操作</th>
                        </thead>
                        <tbody id="tbody">
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function () {
        $.post("getuserlist.do", {}, function (res) {
            let tr = ""
            for (let i of res) {
                tr += "<tr><td>" + i.id + "</td>" +
                    "<td>" + i.userNumber + "</td>" +
                    "<td>" + i.userName + "</td>" +
                    "<td>" + i.userPhone + "</td>" +
                    "<td>" + i.nickName + "</td>" +
                    "<td><a href='#'>删除</a></td></tr>"
            }
            $("#tbody").append($(tr))
        })
    })
</script>