<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
                pageEncoding="UTF-8"%>
                <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <style>
        <%@include file='/resources/css/myMessagesStyle.css' %>
    </style>
    <link rel="stylesheet" href="example.css">

    <link rel="stylesheet" href="example.css">
    <title>User</title>
</head>
<body>
    <div id="container">
        <div id="divContainer">
            <div id="menu">
                <a href="/myProfile"><div id="myProfile">Мои профиль</div></a>
                <a href="#"><div id="myPhoto">Мои фотографии</div></a>
                <a href="/search"><div id="search">Поиск</div></a>
                <a href="#"><div id="myGuests">Гости</div></a>
                <a href="/myMessages"><div id="myMessages">Мои сообщения</div></a>
            </div>
            <div id="correspondence">
            <c:forEach items="${message}" var="messages">
                <c:if test="${myLogin == messages.fromUser} ">
                    <a href = "message?login=${messages.toUser}"><div id="blocMessage">

                        ${messages.toUser}

                    </div></a>
                </c:if>

                <c:if test="${myLogin != messages.fromUser}">
                    <a href = "message?login=${messages.fromUser}"><div id="blocMessage">

                        ${messages.fromUser}

                    </div></a>
                </c:if>
            </c:forEach>
            </div>
        </div>
    </div>
</body>
</html>