<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
                pageEncoding="UTF-8"%>
    <style>
        <%@include file='/resources/css/peopleStyle.css' %>
    </style>

    <link rel="stylesheet" href="example.css">
    <title>User</title>
</head>
<body>
    <div id="container">
        <div id="divContainer">
            <div id="menu">
                <a href="/myProfile"><div id="myProfile">Мои профиль</div></a>
                    <a href="#"><div id="myPhoto">Мои фотографии</div></a>
                    <a href="/search"><div id="searchMenu">Поиск</div></a>
                    <a href="#"><div id="myGuests">Гости</div></a>
                    <a href="/myMessages"><div id="myMessages">Мои сообщения</div></a>
            </div>
            <div id="searchDiv">
                <c:forEach items="${users}" var="user">
                    <a href = "userProfile?login=${user.login}"><div id="searchPeople">${user.userName}</div></a>
                </c:forEach>
            </div>
        </div>
    </div>
</body>
</html>