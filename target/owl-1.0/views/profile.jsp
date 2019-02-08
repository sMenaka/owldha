<%--
  Created by IntelliJ IDEA.
  User: shan
  Date: 10/3/2018
  Time: 10:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>User  Profile</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/grid.css"/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>"/>

</head>
<body>


</div>
<div class="grid-container">

    <div class="grid-container">
        <div class="item1"><img src="/resources/img/user.jpg" alt="Avatar" style="width:240px">
            <h5 style="font-family: Times New Roman;color:darkblue;">${user.lastName} ${user.firstName}</h5>

            <button>My Profile</button>
            <button>Account Setting</button>
            <button>Notifications</button>
            <button>Security</button>
        </div>
        <div class="item2">
            <h4 style="font-family: Times New Roman; color: darkblue;">My Profile</h4>
            <form>
                <p style="text-align: left; font-size: 17px; text-align: left;margin-left: 260px;font-family: Times New Roman;">First Name</p>
                <input type="text" placeholder="First name" name="fname" readonly value="${user.firstName}">

                <p style="text-align: left; font-size: 17px; text-align: left;margin-left: 260px;font-family: Times New Roman;">Last Name</p>
                <input type="text" placeholder="Last Name" name="name" readonly value="${user.lastName}">

                <p style="text-align: left; font-size: 17px; text-align: left;margin-left: 260px;font-family: Times New Roman;">Email</p>
                <input type="text" placeholder="Email" name="email" readonly value="${user.getEmail()}" }>

                <p style="text-align: left; font-size: 17px; text-align: left;margin-left: 260px;"font-family: Times New Roman;>School</p>
                <input type="text" placeholder="School" name="school" readonly>
                <p style="text-align: left; font-size: 15px; text-align: left;margin-left: 260px;font-family: Times New Roman;">My Progress</p>


                <div id="myProgress">
                    <div id="myBar">10%</div>
                </div>
            </form>

        </div>

    </div>



</div>
</body>
</html>