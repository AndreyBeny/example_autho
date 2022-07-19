<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
            pageEncoding="UTF-8"%>

    <html>
    <head>


    	<style>
           <%@include file='/resources/css/loginStyle.css' %>
        </style>

    	<title>Название сайта</title>
    </head>
    <body>
    	<div id = "container">
    		<div id="registrationDiv">
    			<a href="registration"><div id="registrationButton">Регистрация</div></a>
    		</div>
    		<div id = "containerDiv">
    			<div id = "divHello">
    				<p id = "pHelloOne">Добро пожаловать на название сайта,</p>
    				<p id = "pHelloTwo">здесь вы можете построить свою любовь без границ,</p>
    				<p id = "pHelloThree" >а так же найти новых друзей в любой точке мира</p>
    			</div>
    			<div id = "divInput">
    				<form action = "/login" method = "post" >
    					<p id = "emailP">Введите логин:</p>
    					<input type="text" name="login" placeholder="login" tabindex="1" id = "emailInput"><br>
    					<p id = "passwordP">Введите ваш пароль:</p>
    					<input type="password" name="password" placeholder="password" tabindex="2" id = "passwordInput"><br>
    					<a href="#">Забыл пароль</a>
    					<input type="hidden" name="${_csrf.parameterName}"
                                        value="${_csrf.token}" />
    					<button type="submit" id = "buttonInput">Войти</button>
    				</form>
    			</div>
    		</div>
    	</div>

    </body>
    </html>