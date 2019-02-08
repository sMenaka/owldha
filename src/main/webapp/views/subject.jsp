<%--
  Created by IntelliJ IDEA.
  User: shan
  Date: 10/4/2018
  Time: 10:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>home page</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/subgrid.css"/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/subgridhome.css"/>"/>
    <style type="text/css">

    </style>

</head>
<body>

    <div class="menu">

        <ul>
            <li><a href="">HOME</a></li>
            <li><a href="">ABOUT</a></li>
            <li><a href="indexx.html">TEAM</a></li>
            <li><a href="CONTACT.HTML">CONTACT</a></li>
        </ul>

        </div>




    <div class="grid-container">
        <div class="ict">
        </div>
        <div class="ict">
        <c:forEach var="sub" items="${subjects}">

            <h4>  <a href="/Topic?subId=<c:out value="${sub.subjectId}"/>" > <c:out value="${sub.subjectName}"/></a><br><br></h4>

        </c:forEach>
        </div>
    </div>

</body>
</html>