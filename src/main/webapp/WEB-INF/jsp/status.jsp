<html>
<head>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
                pageEncoding="UTF-8"%>
    <style>
        <%@include file='/resources/css/status.css' %>
    </style>
	<title>User</title>
</head>
<body>
<div id="container">

	<form action="/status" method="post" id="form">
	Введите ваш статус:<br>
		<textarea name="status" cols="40" rows="3" ></textarea><br>
		<input type="hidden" name="${_csrf.parameterName}"
                                            value="${_csrf.token}" />
		<button type="submit" id="submitButton">Добавить</button>
	</form>
</div>

</body>
</html>