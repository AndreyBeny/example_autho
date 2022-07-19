<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <html>
    <head>
    	<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    	<style>
                   <%@include file='/resources/css/registrationStyle.css' %>
                </style>
    	<title>Регистрация пользователя</title>
    </head>
    <body>
    	<div id="container">
    		<div id="registrationDiv">
    			<form action="/registration" method="post">
    				<p id="loginP">
    					Логин:
    					<input type="text" name="login" placeholder="Логин" id="loginInput"/></p>
    				<p id="passwordP">
    					Пароль:
    					<input type="password" name="password" placeholder="Пароль" id="passwordInput"/>
    				</p>
    				<p id="passwordPTwo">
    					Повторите пароль:
    					<input type="password" name="passwordTwo" placeholder="Повторите пароль" id="passwordInputTwo"/>
    				</p>
    				<p id="emailP">
    					Email:
    					<input type="email" name="email" placeholder="email" id="emailInput"/></p>
    				<p id="firstNameP">
    					Введите ваше имя:
    					<input type="text" name="userName" placeholder="Имя"
    					id="firstNameInput">
    				</p>
    				<p id="lastNameP">
    					Введите вашу фамилию:
    					<input type="text" name="lastName" placeholder="Фамилия"
    					id="lastNameInput"/>
    				</p>
    				<p id="phoneP">
    					Номер телефона:
    					<input type="text" name="phone" placeholder="Номер телефона"
    					id="phoneInput"/>
    				</p>
    				<p id="genderP">Ваш пол:
    					<select name="gender" id="genderSelect">
    						<option>Мужской</option>
    						<option>Женский</option>
    					</select>
    				</p>
    				<p id="theDateP">
    					Дата рождения:
    					<input type="date" name="theDate" id="theDateInput"/>
    				</p>
    				<p id="searchP">Ищете:
    					<select name="search" id="searchSelect">
    						<option>Девушку</option>
    						<option>Парня</option>
    						<option>Всех</option>
    					</select>
    				</p>
    				<p id="countryP">
    					Ваша страна:
    					<input type="text" name="country" value="" placeholder="Страна"
    					id="countryInput"/>
    				</p>
    				<p id="cityP">
    					Ваш город:
    					<input type="text" name="city" value="" placeholder="Город"
    					id="cityInput"/>
    				</p>
    				<p id="maritalStatusP">
    					Семейное положение:
    					<select name="maritalStatus" id="maritalStatusSelect">
    						<option>Не замужем</option>
    						<option>Холост</option>
    						<option>Женат</option>
    						<option>Замужем</option>
    						<option>В разводе</option>
    						<option>Гражданский брак</option>
    					</select>
    				</p>
    				<p id="childrenP">
    					Наличие детей:
    					<select name="children" id="childrenSelect">
    						<option>Нет детей</option>
    						<option>Есть дети</option>
    					</select>
    				</p>
    				<input type="hidden" name="${_csrf.parameterName}"
                                    value="${_csrf.token}" />
    				<button type="submit" id="submitButton">Зарегистрироваться</button>
    			</form>
    		</div>
    	</div>
    </body>
    </html>