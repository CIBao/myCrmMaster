<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ccc" uri="http://ccc.cn/common/" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>客户列表-BootCRM</title>

    <!-- Bootstrap Core CSS -->
    <link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet"
          type="text/css">
    <link href="<%=basePath%>css/boot-crm.css" rel="stylesheet"
          type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<div id="wrapper">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation"
         style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span> <span
                    class="icon-bar"></span> <span class="icon-bar"></span> <span
                    class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/index">CRM客户管理系统 v1.0</a>
        </div>
        <!-- /.navbar-header -->

        <ul class="nav navbar-top-links navbar-right">

            <li class="dropdown"><a class="dropdown-toggle"
                                    data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
                <i class="fa fa-caret-down"></i>
            </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i> 你好, ${username}</a></li>

                    <li class="divider"></li>
                    <li><a href="${pageContext.request.contextPath}/logout"><i class="fa fa-sign-out fa-fw"></i>
                        退出登录</a></li>
                </ul> </li>

        </ul>
        <!-- /.navbar-top-links -->

        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="sidebar-search">
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="查询内容...">
                            <span class="input-group-btn">
								<button class="btn btn-default" type="button">
									<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
								</button>
							</span>
                        </div> <!-- /input-group -->
                    </li>
                    <li><a href="${pageContext.request.contextPath}/index" class="active"><i
                            class="fa fa-home fa-fw"></i> 首页</a></li>
                    <c:choose>
                        <c:when test="${userPermission.state && userPermission.custManage}">
                            <li><a href="${pageContext.request.contextPath}/custmanager" class="active"><i
                                    class="fa fa-star fa-fw"></i> 客户管理</a></li>
                        </c:when>
                        <c:otherwise>
                            <li class="disabled"><a href="#" class="active"><i
                                    class="fa fa-star fa-fw"></i> 客户管理</a></li>
                        </c:otherwise>
                    </c:choose>

                    <c:choose>
                        <c:when test="${userPermission.state && userPermission.custInfo}">
                            <li><a href="${pageContext.request.contextPath}/custinfo" class="active" ><i
                                    class="fa fa-star fa-fw"></i> 客户跟进</a></li>
                        </c:when>
                        <c:otherwise>
                            <li class="disabled"><a href="#" class="active" ><i
                                    class="fa fa-star fa-fw"></i> 客户跟进</a></li>
                        </c:otherwise>
                    </c:choose>

                    <c:choose>
                        <c:when test="${userPermission.state && userPermission.userManage}">
                            <li><a href="${pageContext.request.contextPath}/user/list" class="active"><i
                                    class="fa fa-edit fa-fw"></i> 用户管理</a></li>
                        </c:when>
                        <c:otherwise>
                            <li class="disabled"><a href="#" class="active"><i
                                    class="fa fa-edit fa-fw"></i> 用户管理</a></li>
                        </c:otherwise>
                    </c:choose>

                    <c:choose>
                        <c:when test="${userPermission.state && userPermission.permissionManage}">
                            <li><a href="${pageContext.request.contextPath}/permission/permission" class="active"><i
                                    class="fa fa-edit fa-fw"></i> 权限管理</a></li>
                        </c:when>
                        <c:otherwise>
                            <li class="disabled"><a href="#" class="active"><i
                                    class="fa fa-edit fa-fw"></i> 权限管理</a></li>
                        </c:otherwise>
                    </c:choose>

                    <c:choose>
                        <c:when test="${userPermission.state && userPermission.departmentManage}">
                            <li><a href="${pageContext.request.contextPath}/department/department" class="active"><i
                                    class="fa fa-edit fa-fw"></i> 部门管理</a></li>
                        </c:when>
                        <c:otherwise>
                            <li class="disabled"><a href="#" class="active"><i
                                    class="fa fa-edit fa-fw"></i> 部门管理</a></li>
                        </c:otherwise>
                    </c:choose>

                    <c:choose>
                        <c:when test="${userPermission.state && userPermission.log}">
                            <li><a href="${pageContext.request.contextPath}/log/log" class="active"><i
                                    class="fa fa-reorder fa-fw"></i> 操作日志</a></li>
                        </c:when>
                        <c:otherwise>
                            <li class="disabled"><a href="#" class="active"><i
                                    class="fa fa-reorder fa-fw"></i> 操作日志</a></li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </div>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side --> </nav>

    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">客户跟进</h1>
            </div>
        </div>

        <div class="row">

            <h2 class="page-information" style="color: gray">    施工中。。。</h2>
        </div>
    </div>
    <!-- /#page-wrapper -->

    <!-- jQuery -->
    <script src="<%=basePath%>js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<%=basePath%>js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="<%=basePath%>js/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
    <script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="<%=basePath%>js/sb-admin-2.js"></script>


</body>

</html>
