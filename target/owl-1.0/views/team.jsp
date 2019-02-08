<%--
  Created by IntelliJ IDEA.
  User: shan
  Date: 10/3/2018
  Time: 10:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset ="utf-8">
    <title>Team </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href=<c:url value="/resources/css/team.css"/>/>
    <style type="text/css">
        body{
            background: skyblue;
            margin: 0;

        }
        .menu{
            width: 100%;
            background:#E0DAD7;
            overflow: auto;
            border-radius: 5px 5px 0 0;
            opacity: .8;
            position: fixed;


        }
        .menu ul{
            margin: 0;
            padding: 0;
            list-style:none;
            line-height: 60px;

        }

        .menu li{
            float:left;
            margin-left: 130px;

        }
        .logo img{

            width: 12%;
            height:auto;
            float:left;
            border-radius:10%;
            margin-left: 10px;

        }
        .menu ul li a{
            background:#142b47;
            text-decoration: none;
            width:130px;
            display: block;
            text-align: center;
            color: #f2f2f2;
            font-size: 18px;
            font-family:sans-serif;
            letter-spacing: 0.5px;
            padding-left: 0px;
            margin-right: 5px;
            border-radius: 5px;

        }
        .menu li a:hover{
            color: #fff;
            opacity:0.5;
            font-size: 19px;
        }
        /*.button{
            float: right;
            background:orange;
            color: white;
            border-radius: 5px 5px 5px 5px;
            cursor: pointer;
            position: relative;
            padding:7px;
            font-family: sans-serif;
            border: none;
            margin-top: 10px;
            margin-right: 10px;
        }

        .button a{
            text-decoration: none;

        }
        .button :hover{
            color: red;

        }*/
    </style>
</head>
<body>
<center>
    <div class="menu">
        <div class="logo">
            <img src="/resources/img/LOGO4.png">
        </div>
        <ul>
            <li><a href="gride-home.html">HOME</a></li>
            <li><a href="">ABOUT</a></li>
            <li><a href="">TEAM</a></li>
            <li><a href="CONTACT.html">CONTACT</a></li>
            <li><a href="">SIGN IN</a></li>
        </ul>

        </div>

</center>

<div class = "team-section">
    <h1>Our Team</h1>
    <span class="border"></span>
    <div class = "ps">
        <a href="#p1"><img src="/resources/img/p1.jpg" alt=""></a>
        <a href="#p2"><img src="/resources/img/p2.jpg" alt=""></a>
        <a href="#p3"><img src="/resources/img/p3.png" alt=""></a>
        <a href="#p4"><img src="/resources/img/p4.jpg" alt=""></a>
        <a href="#p5"><img src="/resources/img/p5.png" alt=""></a>
        <a href="#p6"><img src="/resources/img/p6.jpeg" alt=""></a>
    </div>


    <div class="section" id ="p1"><br>
        <span class="name">Shan Menaka</span>
        <span class="border"></span>
        <p id="ab">

        <ul><center>
            <li><a href="#"><i class="fa fa-linkedin"></i> </a> </li>
            <li><a href="#"><i class="fa fa-twitter"></i> </a> </li>
            <li><a href="#"><i class="fa fa-facebook" aria hidden="true"></i> </a> </li>
            <li><a href="#"><i class="fa fa-google-plus" aria hidden="true"></i> </a> </li>
        </center></ul>

        </p>

    </div>
    <div class="section" id ="p2">
        <span class="name">Ishara Dilki</span>
        <span class="border"></span>
        <p id="bc">
            This random name generator can suggest names for babies, characters, or anything else that needs naming.
        <ul><center>
            <li><a href="#"><i class="fa fa-linkedin"></i> </a> </li>
            <li><a href="#"><i class="fa fa-twitter"></i> </a> </li>
            <li><a href="#"><i class="fa fa-facebook" aria hidden="true"></i> </a> </li>
            <li><a href="#"><i class="fa fa-google-plus" aria hidden="true"></i> </a> </li>
        </center></ul>

        </p>

    </div>
    <div class="section" id ="p3">
        <span class="name">Yasiru Niroshan</span>
        <span class="border"></span>
        <p id="cd">
            This random name generator can suggest names for babies, characters, or anything else that needs naming.

        <ul><center>
            <li><a href="#"><i class="fa fa-linkedin"></i> </a> </li>
            <li><a href="#"><i class="fa fa-twitter"></i> </a> </li>
            <li><a href="#"><i class="fa fa-facebook" aria hidden="true"></i> </a> </li>
            <li><a href="#"><i class="fa fa-google-plus" aria hidden="true"></i> </a> </li>
        </center></ul>

        </p>

    </div>
    <div class="section" id ="p4">
        <span class="name">Isuri Prabuddini</span>
        <span class="border"></span>
        <p id="de">
            This random name generator can suggest names for babies, characters, or anything else that needs naming.

        <ul><center>
            <li><a href="#"><i class="fa fa-linkedin"></i> </a> </li>
            <li><a href="#"><i class="fa fa-twitter"></i> </a> </li>
            <li><a href="#"><i class="fa fa-facebook" aria hidden="true"></i> </a> </li>
            <li><a href="#"><i class="fa fa-google-plus" aria hidden="true"></i> </a> </li>
        </center></ul>
        </p>
    </div>
    <div class="section" id ="p5">
        <span class="name">Dilaka Budwin</span>
        <span class="border"></span>
        <p id="ef">
            This random name generator can suggest names for babies, characters, or anything else that needs naming.

        <ul><center>
            <li><a href="#"><i class="fa fa-linkedin"></i> </a> </li>
            <li><a href="#"><i class="fa fa-twitter"></i> </a> </li>
            <li><a href="#"><i class="fa fa-facebook" aria hidden="true"></i> </a> </li>
            <li><a href="#"><i class="fa fa-google-plus" aria hidden="true"></i> </a> </li>
        </center></ul>
        </p>
    </div>
    <div class="section" id ="p6">
        <span class="name">Dilshani Pigera</span>
        <span class="border"></span>
        <p id="gh">
            This random name generator can suggest names for babies, characters, or anything else that needs naming.<br>

        <ul><center>
            <li><a href="#"><i class="fa fa-linkedin"></i> </a> </li>
            <li><a href="#"><i class="fa fa-twitter"></i> </a> </li>
            <li><a href="#"><i class="fa fa-facebook" aria hidden="true"></i> </a> </li>
            <li><a href="#"><i class="fa fa-google-plus" aria hidden="true"></i> </a> </li>
        </center></ul>
        </p>
    </div>

