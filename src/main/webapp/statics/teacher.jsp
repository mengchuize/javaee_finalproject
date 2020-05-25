<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/3/13
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>FullScreen Slider</title>
    <meta name="viewport" content="width=device-width">


    <style>.l-page { visibility: hidden; }</style>

    <link rel="preload" as="style" href="${pageContext.request.contextPath}/statics/css/main.min.css" onload="this.onload=null;this.rel='stylesheet'">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>

<div class="l-page" data-page-id="index">

    <div class="l-contents">
        <div class="p-sections-wrap js-fullscreen-wrap">
            <div class="p-section p-section--05 js-fullscreen-section">
                <div class="p-section__in" >

                    <h2 class="p-section__header">作业</h2>
                    <button class="btn btn-success p-section__text" onclick="addh()" style="margin-left: 0">新建作业</button>
                    <table class="table table-condensed p-section__text" style="font-size: 30px">
                               <tr>
                                  <td>名称</td>
                                  <td>发布日期</td>
                                  <td>截止日期</td>
                                   <td>发布教师</td>
                                   <td>提交人数</td>
                                   <td>查看</td>
                               </tr>
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

                           </table>

                </div>
            </div>
            <div class="p-section p-section--03 js-fullscreen-section" >
                <div class="p-section__in">
                    <h2 class="p-section__header">学生</h2>
                    <button class="btn btn-success p-section__text" onclick="adds()" >增加学生</button>
                    <table class="table table-condensed p-section__text" style="font-size: 30px">
                        <tr>
                            <td>姓名</td>
                            <td>用户名</td>
                            <td>密码</td>
                            <td>操作</td>
                        </tr>

                        <c:if test="${!empty students}">
                            <c:forEach var="student" items="${students}">
                                <tr>
                                    <td>${student.sname}</td>
                                    <td>${student.susername}</td>
                                    <td>${student.spassword}</td>
                                    <td><button class="btn btn-danger" onclick="deletes((this).parent('tr').index)">删除</button>></td>
                                </tr>
                            </c:forEach>
                        </c:if>
                    </table>
                </div>
            </div>

        </div>
        <div class="p-pager js-fullscreen-pager">
            <div class="p-pager__in">
                <div class="p-pager__pointer js-fullscreen-pager-pointer js-hover"></div>
                <div class="p-pager__pointer js-fullscreen-pager-pointer js-hover"></div>
                <div class="p-pager__bar"></div>
            </div>
        </div>
        <div class="p-background js-fullscreen-bg"></div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/statics/js/main.min.js" async></script>
<script>
    function addh() {
        window.location.href="${pageContext.request.contextPath}/statics/addhomework.jsp?tname=${tname}";
    }
    function adds() {
        window.location.href="${pageContext.request.contextPath}/statics/addstudent.jsp";
    }
    function deletes(i){

        alert("删除成功！");
    }
</script>

</body>
</html>