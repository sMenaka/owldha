<%--
  Created by IntelliJ IDEA.
  User: shan
  Date: 10/3/2018
  Time: 3:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>home page</title>
    <link rel="stylesheet" type="text/css" href=<c:url value="/resources/css/gride-home-index.css"/>/>
    <link rel="stylesheet" type="text/css" href=<c:url value="/resources/css/gride-home.css"/>/>
    <style type="text/css">

    </style>

</head>
<body>

<div class="menu">
    <div class="logo">
        <img src="/resources/img/LOGO4.png">
    </div>
    <ul>
        <li><a href="">HOME</a></li>
        <li><a href="">ABOUT</a></li>
        <li><a href="indexx.html">TEAM</a></li>
        <li><a href="CONTACT.HTML">CONTACT</a></li>
        <li><a href="/login.html">LOGIN</a></li>
        <li><h3>Hi ${user.getFirstName()}<br>
        <a href="/userProfile?userId=${user.getStudentId()}">profile</a></h3></li>
    </ul>

</div>
<div class="grid-container">

    <div class="ict">

        <a href="CONTACT.html"><img src="/resources/img/PHYSCS_BUTTON.png"> </a>
    </div>
    <div class="ict">
        <a href=""><img src="/resources/img/BIO%20_BUTTON.png"></a>
    </div>
    <div class="ict">
        <a href=""><img src="/resources/img/BST_BUTTON.png"></a>
    </div>
    <div class="ict">
        <a href="enginearing.html"><img src="/resources/img/ET_BUTTON.png"></a>
    </div>
    <div class="ict">
        <a href=""><img src="/resources/img/COMMERCE_BUTTON.png"></a>
    </div>
    <div class="ict">
        <a href=""><img src="/resources/img/ART_BUTTON.png"></a>
    </div>
</div>
</body>
</html>
