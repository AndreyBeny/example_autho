<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
                pageEncoding="UTF-8"%>
                <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <style>
        <%@include file='/resources/css/messageStyle.css' %>
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
            <div id="messagesContainer">
                <div id="correspondence">
                    <c:forEach items="${mes}" var="mess">
                        <c:if test="${mess.fromUser == u }">
                            <div id="blocMessage">
                                <div id="user">${uName}</div>
                                <div id="text">${mess.userMessage}</div>
                                 <form action="message?login=${login}" method="post" id="formDelete">
                                      <div id="time">${mess.time.getHour()}:${mess.time.getMinute()}:
                                      ${mess.time.getSecond()}  ${mess.time.getDayOfMonth()}.
                                      ${mess.time.getMonthValue()}.${mess.time.getYear()}г.</div>
                                      <button type="submit" id="delete">Удалить</button>
                                 </form>
                            </div>
                        </c:if>
                        <c:if test="${mess.fromUser == my }">
                            <div id="blocMessageMy">
                                <div id="user">${myName}</div>
                                <div id="text">${mess.userMessage}</div>
                                <form action="message?login=${login}" method="post" id="formDelete">
                                      <div id="time">${mess.time.getHour()}:${mess.time.getMinute()}:
                                      ${mess.time.getSecond()}  ${mess.time.getDayOfMonth()}.
                                      ${mess.time.getMonthValue()}.${mess.time.getYear()}г.</div>
                                      <button type="submit" id="delete">Удалить</button>
                                </form>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>
                <form action="message?login=${login}" method="post" id="message">
                    <textarea name="message" cols="40" rows="3" id="textInput"></textarea>
                    <input type="hidden" name="${_csrf.parameterName}"
                                                    value="${_csrf.token}" />
                    <button type="submit" id="submitButton">Отправить</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>