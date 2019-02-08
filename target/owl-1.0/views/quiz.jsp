<%--
  Created by IntelliJ IDEA.
  User: shan
  Date: 10/3/2018
  Time: 10:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/quiz.css"/>"/>
</head>
<body>
<form action="/quize" method="post">
<div id="quizContainer" class="container">
    <div class="title">A/L Model Quiz</div><br>
    <input type="hidden" value="${quizNo+1}" name="quizId"/>
    <input type="hidden" value="${quiz.examId}" name="examId"/>
    <input type="hidden" value="${userid}" name="userId"/>
    <div id="question" class="question">${quiz.qizeContent}</div>
    <label class="option"><input name="option" type="radio" value="${a1.answerId}" /><span is="opt1">${a1.answer}</span></label>
    <label class="option"><input name="option" type="radio" value="${a2.answerId}" /><span is="opt2">${a2.answer}</span></label>
    <label class="option"><input name="option" type="radio" value="${a3.answerId}" /><span is="opt3">${a3.answer}</span></label>
    <label class="option"><input name="option" type="radio" value="${a4.answerId}" /><span is="opt4">${a4.answer}</span></label>
    <label class="option"><input name="option" type="radio" value="${a4.answerId}" /><span is="opt4">${a5.answer}</span></label>
    <button type="submit" class="next-btn">Next Question</button>
</div>
</form>>
<div id="result" class="container result" style="display:none;"></div>
</body>
</html>