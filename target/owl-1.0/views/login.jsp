
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/common.css" />"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/login.css" />"/>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id"
          content="1089194758234-9edqacagu7diper89q8nfineljvoj20i.apps.googleusercontent.com">

    <title>owlda.edu</title>
</head>
<body>

<div class="bg">
    <div class="grid-container">

        <div class="item_corner"></div>

        <div class="item_center"></div>


        <div class="item_corner"></div>

        <div class="item_corner"></div>

        <div class="item_center">
<form action="/toLogin"  method="post">
                <a class="container">
                    <div class="headding">
                        <div class="itemfh">
                            Join with us
                        </div>
                    </div>

                    <input type="Email" placeholder="Enter your Email" name="userName" required><br><br>


                    <input type="password" placeholder="Enter Password" name="psw" required><br><br>


                    <button type="submit">Login</button>
                    <a href="/signUp">create an Account</a>
                    <div class="g-signin2" data-onsuccess="onSignIn">

                    </div>
                </div>

                <div class="container1" >

                    <button type="button" class="cancelbtn">Cancel</button>

                </div>
            </form>

        </div>

        <div class="item_corner"></div>

        <div class="itemfh"></div>


    </div>
</div>
<script>
    function onSignIn(googleUser) {
        var profile = googleUser.getBasicProfile();
        console.log('ID: ' + profile.getId());
        console.log('Name: ' + profile.getName());
        console.log('Image URL: ' + profile.getImageUrl());
        console.log('Email: ' + profile.getEmail());
        console.log('id_token: ' + googleUser.getAuthResponse().id_token);

        //do not post above info to the server because that is not safe.
        //just send the id_token

        var redirectUrl = '/Login';
        //using jquery to post data dynamically
        var form = $('<form action="' + redirectUrl + '" method="post">' +
            '<input type="text" name="id_token" value="' +
            googleUser.getAuthResponse().id_token + '" />' +
            '</form>');
        $('body').append(form);
        form.submit();
    }

</script>
</body>
</html>

