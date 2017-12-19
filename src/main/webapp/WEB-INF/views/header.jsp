<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="/static/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="/static/css/bootstrap-theme.min.css" rel="stylesheet"/>
    <link href="/static/css/jquery-ui.min.css" rel="stylesheet"/>
    <link href="/static/css/jquery-ui.structure.min.css" rel="stylesheet"/>
    <link href="/static/css/jquery-ui.theme.min.css" rel = "stylesheet"/>

    <title>${PAGE_TITLE}</title>

    <script src="/static/js/jquery-2.1.4.js"></script>
    <script src="/static/js/bootstrap.min.js"></script>
    <script src="/static/js/jquery-ui.min.js"></script>
    <script src="/static/js/jquery.validate.min.js"></script>
    <script src="/static/js/additional-methods.min.js"></script>
    <script src="/static/js/modal.js"></script>

    <c:choose>
        <c:when test="${PAGE_TITLE eq 'Login'}">
            <!--
            This style is only loaded for Main Login Page
            -->
            <style>
                @CHARSET "UTF-8";
                * {
                    -webkit-box-sizing: border-box;
                    -moz-box-sizing: border-box;
                    box-sizing: border-box;
                    outline: none;
                }

                .form-control {
                    position: relative;
                    font-size: 16px;
                    height: auto;
                    padding: 10px;
                }

                body {
                    background: url(/static/images/background-login.jpg) no-repeat center center fixed;
                    -webkit-background-size: cover;
                    -moz-background-size: cover;
                    -o-background-size: cover;
                    background-size: cover;
                }

                .login-form {
                    margin-top: 60px;
                }

                form[role=login] {
                    color: #5d5d5d;
                    background: #f2f2f2;
                    padding: 26px;
                    border-radius: 10px;
                    -moz-border-radius: 10px;
                    -webkit-border-radius: 10px;
                }

                form[role=login] img {
                    display: block;
                    margin: 0 auto;
                    margin-bottom: 35px;
                }

                form[role=login] input,
                form[role=login] button {
                    font-size: 18px;
                    margin: 16px 0;
                }

                form[role=login] > div {
                    text-align: center;
                }
            </style>
        </c:when>
        <c:otherwise>
            <link href="/static/css/navigation-menu.css" rel="stylesheet"/>
            <script src="/static/js/navigation-menu.js"></script>
        </c:otherwise>
    </c:choose>;

</head>
<body>
<c:if test="${PAGE_TITLE != 'Login'}">
<div class="row">
    <div class="col-sm-4"></div>
    <img src="/static/images/sdata.png" alt="" class="img-responsive col-sm-4" style="padding-bottom: 15px"/>
    <div class="col-sm-4"></div>
</div>
<div id='cssmenu'>
    <ul>
        <li class='active'><a href='/dashboard/'>Employee List</a></li>
        <li><a href='/dashboard/addemployee/'>Add Employee</a></li>
        <li><a href='/dashboard/paysalary/'>Pay Salary</a></li>
        <li><a href='/dashboard/changepassword/'>Change Password</a></li>
        <li><a href='/dashboard/logout/'>Logout</a></li>
    </ul>
</div>

</c:if>
