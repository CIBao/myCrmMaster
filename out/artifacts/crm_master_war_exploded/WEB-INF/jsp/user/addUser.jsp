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
                    <li><a href="${pageContext.request.contextPath}/user/list" class="active"><i
                            class="fa fa-backward fa-fw"></i> 返回主页</a></li>
                </ul>
            </div>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side --> </nav>

    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">增加用户</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->

                <div class="modal-content" style="width: 60%">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel">新增客户信息</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="add_customer_form">
                            <input type="hidden" id="edit_cust_id" name="cust_id"/>

                            <div class="form-group">
                                <label for="edit_customerFrom" style="float:left;padding:7px 15px 0 27px;">部门选择</label>
                                <div class="col-sm-10">
                                    <select	class="form-control" id="edit_customerFrom" placeholder="客户来源" name="department">
                                        <option value="">--请选择--</option>
                                        <c:forEach items="${dname}" var="item">
                                            <option value="${item}">${item}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="edit_userName" class="col-sm-2 control-label">用户名</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="edit_userName" placeholder="客户名称" name="username">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="edit_staffNumber" class="col-sm-2 control-label">用户编号</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="edit_staffNumber" placeholder="" name="staffNumber">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="edit_workName" class=" col-sm-2 control-label">岗位名称</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="edit_workName" placeholder="" name="workName">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="edit_workNumber" class=" col-sm-2 control-label">工作电话</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="edit_workNumber" placeholder="" name="workNumber">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="edit_phoneNumber" class=" col-sm-2 control-label">手机号码</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="edit_phoneNumber" placeholder="" name="phoneNumber">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="edit_email" class=" col-sm-2 control-label">邮箱</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="edit_email" placeholder="" name="email">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="edit_qq" class=" col-sm-2 control-label">QQ</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="edit_qq" placeholder="" name="qq">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="edit_jobRank" style="float:left;padding:7px 15px 0 27px;">职位级别</label>
                                <div class="col-sm-10">
                                    <select	class="form-control" id="edit_jobRank" placeholder="" name="jobRank">
                                        <option value="">--请选择--</option>
                                        <option value="总经理">总经理</option>
                                        <option value="副总经理">副总经理</option>
                                        <option value="总监">总监</option>
                                        <option value="副总监">副总监</option>
                                        <option value="经理">经理</option>
                                        <option value="主管">主管</option>
                                        <option value="组长">组长</option>
                                        <option value="组员">组员</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="edit_jobCategory" style="float:left;padding:7px 15px 0 27px;">职位类别</label>
                                <div class="col-sm-10">
                                    <select	class="form-control" id="edit_jobCategory" placeholder="" name="jobCategory">
                                        <option value="">--请选择--</option>
                                        <option value="总经理">总经理</option>
                                        <option value="副经理">副经理</option>
                                        <option value="销售经理">销售经理</option>
                                        <option value="技术经理">技术经理</option>
                                        <option value="人事经理">人事经理</option>
                                        <option value="人事主管">人事主管</option>
                                        <option value="测试员">测试员</option>
                                        <option value="设计人员">设计人员</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="edit_staffState" style="float:left;padding:7px 15px 0 27px;">员工状态</label>
                                <div class="col-sm-10">
                                    <select	class="form-control" id="edit_staffState" placeholder="" name="staffState">
                                        <option value="1">正常</option>
                                        <option value="0">异常</option>
                                    </select>
                                </div>
                            </div>


                            <div class="form-group">
                                <label for="edit_jobState" style="float:left;padding:7px 15px 0 27px;">工作状态</label>
                                <div class="col-sm-10">
                                    <select	class="form-control" id="edit_jobState" placeholder="" name="jobState">
                                        <option value="1">在职</option>
                                        <option value="0">离职</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="edit_permission" style="float:left;padding:7px 15px 0 27px;">权限角色</label>
                                <div class="col-sm-10">
                                    <select	class="form-control" id="edit_permission" placeholder="" name="permission">
                                        <option value="">--请选择--</option>
                                        <c:forEach items="${pname}" var="item">
                                            <option value="${item}">${item}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>


                            <div class="form-group">
                                <label for="edit_comment" class=" col-sm-2 control-label">备注</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="edit_comment" placeholder="" name="comment">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="edit_sex" class=" col-sm-2 control-label">性别</label>
                                <div class="col-sm-10">
                                    <select	class="form-control" id="edit_sex" placeholder="" name="sex">
                                        <option value="">--请选择--</option>
                                        <option value="男">男</option>
                                        <option value="女">女</option>
                                    </select>
                                </div>
                            </div>

                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" onclick="createCustomer()">保存</button>
                    </div>
                </div>

    </div>
    <!-- /#page-wrapper -->

</div>




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

<script type="text/javascript">

    function createCustomer() {

        $.post("<%=basePath%>user/add",$("#add_customer_form").serialize(),function(data){
            alert("新增客户成功！");
            window.location.href="${pageContext.request.contextPath }/user/list";
        });
    }


</script>

</body>

</html>
