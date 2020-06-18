<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <title></title>
    <meta content="Admin Dashboard" name="description" />
    <meta content="Mannatthemes" name="author" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/statics/assets/images/favicon.ico">

    <!-- jvectormap -->
    <link href="${pageContext.request.contextPath}/statics/assets/plugins/jvectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/statics/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/statics/assets/css/icons.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/statics/assets/css/style.css" rel="stylesheet" type="text/css">
</head>


<body class="fixed-left">

<!-- Loader -->
<div id="preloader"><div id="status"><div class="spinner"></div></div></div>

<!-- Begin page -->
<div id="wrapper">

    <!-- ========== Left Sidebar Start ========== -->
    <div class="left side-menu">
        <button type="button" class="button-menu-mobile button-menu-mobile-topbar open-left waves-effect">
            <i class="ion-close"></i>
        </button>

        <!-- LOGO -->
        <div class="topbar-left">
            <div class="text-center">
                <a href="${pageContext.request.contextPath}/statics/home.jsp" class="logo"><i class="mdi mdi-assistant"></i>作业管理系统</a>
                <!-- <a href="index.html" class="logo"><img src="assets/images/logo.png" height="24" alt="logo"></a> -->
            </div>
        </div>

        <div class="sidebar-inner slimscrollleft">

            <div id="sidebar-menu">
                <ul>

                    <li>
                        <a href="${pageContext.request.contextPath}/statics/home.jsp" class="waves-effect"><i class="mdi mdi-airplay"></i><span>首页</span></a>
                    </li>

                </ul>
            </div>
            <div class="clearfix"></div>
        </div> <!-- end sidebarinner -->
    </div>
    <!-- Left Sidebar End -->

    <!-- Start right Content here -->

    <div class="content-page">
        <!-- Start content -->
        <div class="content">

            <!-- Top Bar Start -->
            <div class="topbar">

                <nav class="navbar-custom">

                    <ul class="list-inline float-right mb-0">

                        <li class="list-inline-item dropdown notification-list">
                            <a class="nav-link dropdown-toggle arrow-none waves-effect nav-user" data-toggle="dropdown" href="#" role="button"
                               aria-haspopup="false" aria-expanded="false">
                                <img src="${pageContext.request.contextPath}/statics/assets/images/users/avatar-1.png" alt="user" class="rounded-circle">
                            </a>
                            <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                                <!-- item-->
                                <div class="dropdown-item noti-title">
                                    <h5>Welcome</h5>
                                </div>
                                <a class="dropdown-item" href="#"><i class="mdi mdi-account-circle m-r-5 text-muted"></i> Profile</a>
                                <a class="dropdown-item" href="#"><i class="mdi mdi-wallet m-r-5 text-muted"></i> My Wallet</a>
                                <a class="dropdown-item" href="#"><span class="badge badge-success float-right">5</span><i class="mdi mdi-settings m-r-5 text-muted"></i> Settings</a>
                                <a class="dropdown-item" href="#"><i class="mdi mdi-lock-open-outline m-r-5 text-muted"></i> Lock screen</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#"><i class="mdi mdi-logout m-r-5 text-muted"></i> Logout</a>
                            </div>
                        </li>

                    </ul>

                    <ul class="list-inline menu-left mb-0">
                        <li class="float-left">
                            <button class="button-menu-mobile open-left waves-light waves-effect">
                                <i class="mdi mdi-menu"></i>
                            </button>
                        </li>
                        <li class="hide-phone app-search">
                            <form role="search" class="">
                                <input type="text" placeholder="Search..." class="form-control">
                                <a href=""><i class="fa fa-search"></i></a>
                            </form>
                        </li>
                    </ul>

                    <div class="clearfix"></div>

                </nav>

            </div>
            <!-- Top Bar End -->

            <div class="page-content-wrapper ">

                <div class="container-fluid">
                    <br/>
                    <div class="row">
                        <div class="col-md-12 col-xl-6">
                            <div class="card m-b-30">
                                <div class="card-body">
                                    <h4 class="mt-0 header-title" style="font-weight: bolder">作业</h4>
                                    <div class="table-responsive-sm mt-2">
                                        <table class="table table-hover">
                                            <thead>
                                            <tr>
                                                <th scope="col" class="border-top-0"><b>作业名称</b></th>
                                                <th scope="col" class="border-top-0"><b>发布日期</b></th>
                                                <th scope="col" class="border-top-0"><b>截止日期</b></th>
                                                <th scope="col" class="border-top-0"><b>发布教师</b></th>
                                                <th scope="col" class="border-top-0"><b>提交人数</b></th>
                                                <th scope="col" class="border-top-0"><b>查看</b></th>
                                            </tr>
                                            </thead>
                                            <tbody>

                                            <c:if test="${!empty homeworks}">
                                                <c:forEach var="homework" items="${homeworks}">
                                                    <tr>
                                                        <td>${homework.hname}</td>
                                                        <td>${homework.hbegintime}</td>
                                                        <td>${homework.hendtime}</td>
                                                        <td>${homework.tname}</td>
                                                        <td>${homework.hsubmitnum}</td>
                                                        <td><a href="${pageContext.request.contextPath}/statics/submited.jsp?hname=${homework.hname}">查看</a>></td>
                                                    </tr>
                                                </c:forEach>
                                            </c:if>
                                            </tbody>
                                        </table>
                                    </div>

                                </div>
                            </div>

                        </div>


                    </div>

                </div><!-- container -->

            </div> <!-- Page content Wrapper -->

        </div> <!-- content -->

    </div>
    <!-- End Right content here -->

</div>
<!-- END wrapper -->


<!-- jQuery  -->
<script src="${pageContext.request.contextPath}/statics/assets/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/assets/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/assets/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/assets/js/modernizr.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/assets/js/detect.js"></script>
<script src="${pageContext.request.contextPath}/statics/assets/js/fastclick.js"></script>
<script src="${pageContext.request.contextPath}/statics/assets/js/jquery.slimscroll.js"></script>
<script src="${pageContext.request.contextPath}/statics/assets/js/jquery.blockUI.js"></script>
<script src="${pageContext.request.contextPath}/statics/assets/js/waves.js"></script>
<script src="${pageContext.request.contextPath}/statics/assets/js/jquery.nicescroll.js"></script>
<script src="${pageContext.request.contextPath}/statics/assets/js/jquery.scrollTo.min.js"></script>

<!--Morris Chart-->
<script src="${pageContext.request.contextPath}/statics/assets/plugins/flot-chart/jquery.flot.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/assets/plugins/flot-chart/jquery.flot.time.js"></script>
<script src="${pageContext.request.contextPath}/statics/assets/plugins/flot-chart/curvedLines.js"></script>
<script src="${pageContext.request.contextPath}/statics/assets/plugins/flot-chart/jquery.flot.pie.js"></script>
<script src="${pageContext.request.contextPath}/statics/assets/plugins/morris/morris.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/assets/plugins/raphael/raphael-min.js"></script>
<script src="${pageContext.request.contextPath}/statics/assets/plugins/jquery-sparkline/jquery.sparkline.min.js"></script>

<script src="${pageContext.request.contextPath}/statics/assets/plugins/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/assets/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>


<script src="${pageContext.request.contextPath}/statics/assets/pages/crypto-dash.init.js"></script>

<!-- App js -->
<script src="${pageContext.request.contextPath}/statics/assets/js/app.js"></script>
<script>

    $(document).ready(function() {
        $("#boxscroll").niceScroll({cursorborder:"",cursorcolor:"#cecece",boxzoom:true});
        $("#boxscroll2").niceScroll({cursorborder:"",cursorcolor:"#cecece",boxzoom:true});
    });

</script>

</body>
</html>