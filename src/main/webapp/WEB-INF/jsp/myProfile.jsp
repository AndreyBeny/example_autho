<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
            pageEncoding="UTF-8"%>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
	        <style>
               <%@include file='/resources/css/myProfileStyle.css' %>
            </style>



	<title>Профиль пользователя</title>
</head>
<body>
	<div id="container">
		<div id="headerDiv">
			<div id="headerPhoto"></div>
			<div id="headerCenter">
				<div id="headerName">${userName} ${lastName}</div>
				<div id="headerStatus">
					<div id="statusLabel">${status}</div>
					<br>
					 <c:if test="${status == s}">
					<a href="/status" id="statusA">Установить статус</a>
					</c:if>
					<c:if test="${status != s }">
					<a href="/status" id="statusA">Изменить статус</a>
					</c:if>
				</div>
			</div>
			<div id="buttonContainer">
				<form action="/logout" method="post" >
				<input type="hidden" name="${_csrf.parameterName}"
                                                        value="${_csrf.token}" />
                       <input type="submit" value="Выход" id="buttonExit"/>
                </form>
			</div>
		</div>
		<div id="center">
			<div id="menuCenter">
				<a href="/myProfile"><div id="myProfile">Мой профиль</div></a>
				<a href="#"><div id="myPhoto">Мои фотографии</div></a>
				<a href="/search"><div id="search">Поиск</div></a>
				<a href="#"><div id="guests">Гости</div></a>
				<a href="/myMessages"><div id="messages">Сообщения</div></a>
				<form action="/delete" method="get">
				    <button id="delete" type="submit">Удалиться</button>
				</form>
			</div>
			<div id="infoCenter">
				<div id="buttons">
					<div id="basicButton">Основное</div>
					<div id="interestsButton">Интересы</div>
					<div id="typeButton">Типаж</div>
					<div id="findInfoButton">Кого ищу</div>
					<div id="photoButton">Фото</div>
				</div>
				<div id="basicInfo">
					<p id="firstNameP">
						Имя:
						<label id="firstNameLabel">${userName}</label>
					</p>
					<p id="ageP">
						Возраст:
						<label id="ageLabel">${age}</label>
					</p>
					<p id="countryP">
						Страна:
						<label id="countryLabel">${country}</label>
					</p>
					<p id="cityP">
						Город:
						<label id="cityLabel">${city}</label>
					</p>
					<p id="maritalStatusP">
						Семейное положение:
						<label id="maritalStatusLabel">${maritalStatus}</label>
					</p>
					<p id="homeP">
						Проживание:
						<label id="homeLabel">${home}</label>
					</p>
					<p id="carP">
						Наличие авто:
						<label id="carLabel">${car}</label>
					</p>
					<p id="childrenP">
						Наличие детей:
						<label id="childrenLabel">${children}</label>
					</p>
					<div id="buttonChangeBasic">Заполнить</div>
				</div>
				<div id="interestsInfo">
					<p id="interestsUserP">
						Интересы пользователя:
					</p>
					<div id="interestsUserDiv"></div>
					<div id="buttonChangeInterests">Заполнить</div>
				</div>
				<div id="typeInfo">
					<p id="colorHair">
						Цвет волос:
						<label id="colorHairLabel">цвет волос пользователя</label>
					</p>
					<p id="colorEyes">
						Цвет глаз:
						<label id="colorEyesLabel">цвет глаз пользователя</label>
					</p>
					<p id="growth">
						Рост:
						<label id="growthLabel">рост пользователя</label>
					</p>
					<p id="theWeight">
						Вес:
						<label id="theWeightLabel">вес пользователя</label>
					</p>
					<p id="bodyType">
						Телосложение:
						<label id="bodyTypeLabel">телосложение пользователя</label>
					</p>
					<p id="orientation">
						Ориентация:
						<label id="orientationLabel">ориентация пользователя</label>
					</p>
					<div id="buttonChangeType">Заполнить</div>
				</div>
				<div id="findInfo">
					<p id="find">
						Ищу:
						<label id="findLabel">кого ищет пользователь</label>
					</p>
					<p id="age">
						Возраст:
						<label id="ageLabel">возрат кого ищет пользователь</label>
					</p>
					<p id="growthFindP">
						Рост:
						<label id="growthFindLabel">рост кого ищет пользователь</label>
					</p>
					<p id="theWeightFindP">
						Вес:
						<label id="theWeightFindLabel">вес кого ищет пользователь</label>
					</p>
					<p id="colorHairFindP">
						Цвет волос:
						<label id="colorHairFindLabel">цвет волоского ищет пользователь
						</label>
					</p>
					<p id="childrenFindP">
						Наличие детей:
						<label id="childrenFindLabel">наличие детей</label>
					</p>
					<p id="carFindP">
						Наличие авто:
						<label id="carFindLabel">наличие авто</label>
					</p>
					<p id="countryFindP">
						Страна:
						<label id="countryFindLabel">страна</label>
					</p>
					<p id="cityFindP">
						Город:
						<label id="cityFindLabel">город</label>
					</p>
					<div id="buttonChangeFind">Заполнить</div>
				</div>
				<div id="photoInfo">
					<div id="rowOne">
						<div id="photoDiv" id="photoOne"></div>
						<div id="photoDiv" id="photoTwo"></div>
						<div id="photoDiv" id="photoThree"></div>
					</div>
					<div id="rowTwo">
						<div id="photoDiv" id="photoFour"></div>
						<div id="photoDiv" id="photoFive"></div>
						<div id="photoDiv" id="photoSix"></div>
					</div>

				</div>
				<div id="basicForma">основная форма</div>
				<div id="interestsForma">форма интересов</div>
				<div id="typeForma">форма типожа</div>
				<div id="findForma">форма поиска</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
        <%@include file='/resources/js/scriptMyProfile.js'%>
    </script>
</body>
</html>