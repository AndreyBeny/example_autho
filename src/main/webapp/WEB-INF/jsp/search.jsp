<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
                pageEncoding="UTF-8"%>
    <style>
        <%@include file='/resources/css/searchStyle.css' %>
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
                        <a href="/search"><div id="searchMenu">Поиск</div></a>
                        <a href="#"><div id="myGuests">Гости</div></a>
                        <a href="/myMessages"><div id="myMessages">Мои сообщения</div></a>
                </div>
                <form action="search" method="post" id="search">
                        <p>Возраст:</p>
                        <sub>От</sub><input type="text" name="minAge" id="minAge" value="0"><br>
                        <sub>До</sub><input type="text" name="maxAge" id="maxAge" value="100" >
                        <p>Страна:</p>
                        <input type="text" name="country" id="country" value="Страна">
                        <p>Город:</p>
                        <input type="text" name="city" id="city" value="Город"><br>
                        <p>Пол:</p>
                        <select name="gender" id="gender">
                            <option>Любой</option>
                            <option>Мужской</option>
                            <option>Женский</option>
                        </select><br>
                        <input type="hidden" name="${_csrf.parameterName}"
                                                            value="${_csrf.token}" />
                        <button type="submit" id="subButton">Найти</button>
                </form>
        </div>

    </div>

</body>
</html>