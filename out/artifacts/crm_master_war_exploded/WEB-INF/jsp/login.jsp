<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="keys" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/login.css">

    <style type="text/css">
        body{
            background-image: url(img/Mt.jpg);
            background-size:cover;
        }
    </style>


</head>
<body>

<div class="container">
    <h1 style="color:red">${msg}</h1>
    <form id="loginForm" action="doLogin" method="post" class="form-signin" role="form">
        <h2 class="form-signin-heading" style="color: #9acfea"> 用户登录</h2>
        <div class="form-group has-success has-feedback">
            <input type="text" class="form-control" style="border-color: #66afe9;" id="loginacct" name="loginacct" placeholder="请输入登录账号" autofocus>

        </div>

        <div class="form-group has-success has-feedback">
            <input type="password" class="form-control" style="border-color: #66afe9;" id="userpswd" name="userpswd" placeholder="请输入登录密码" style="margin-top:10px;">
        </div>
        <a class="btn btn-lg btn-primary btn-block" onclick="dologin()" > 登录</a>
    </form>
</div>

<script src="jquery/jquery-2.1.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="layer/layer.js"></script>
<script>
    function dologin() {

        // 非空校验
        var loginacct = $("#loginacct").val();
        // 表单元素的value取值不会为null, 取值是空字符串
        if ( loginacct == "" ) {
            //alert("用户登录账号不能为空，请输入");
            layer.msg("用户登录账号不能为空，请输入", {time:2000, icon:5, shift:6}, function(){

            });
            return;
        }

        var userpswd = $("#userpswd").val();
        if ( userpswd == "" ) {
            //alert("用户登录密码不能为空，请输入");
            layer.msg("用户登录密码不能为空，请输入", {time:2000, icon:5, shift:6}, function(){

            });
            return;
        }

        // 提交表单
        //alert("提交表单");
        //$("#loginForm").submit();
        // 使用AJAX提交数据
        var loadingIndex = null;
        $.ajax({
            type : "POST",
            url  : "doAJAXLogin",
            data : {
                "username" : loginacct,
                "passwd"  : userpswd
            },
            beforeSend : function(){
                loadingIndex = layer.msg('处理中', {icon: 16});
            },
            success : function(result) {
                layer.close(loadingIndex);
                if (result.success) {
                    window.location.href = "index";
                } else {
                    layer.msg("用户登录账号或密码不正确，请重新输入", {time:2000, icon:5, shift:6}, function(){

                    });
                }
            }
        });
    }

    window.onload = function() {
        layer.msg(msg, {time:2000, icon:5, shift:6}, function(){
            alert("22");
        });
    }
</script>

</body>
</html>