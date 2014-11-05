<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="<c:url value="css/reset.css" />" />
<link rel="stylesheet" type="text/css" href="<c:url value="css/semantic.min.css" />" />
<link rel="stylesheet" type="text/css" href="<c:url value="css/general.css" />" />

<title>Journey - Explore o mundo</title>
</head>
<body>
    <header>
	<img id="logo_small" alt="imagem" src="<c:url value="images/journey.png" />" />
        <menu>
            <ul>
                <li><a href="">Inicio</a>
                </li>
                <li><a href="">Explore</a>
                </li>
                <li><a href="">Depoimentos</a>
                </li>
            </ul>
            <form action="#" method="get">
                <div class="ui icon input">
	  				<input type="text" placeholder="Pesquisar">
	  				<i class="inverted search icon"></i>
				</div>
            </form>
        </menu>
    </header>
    <div id="perfil" class="ui primary segment">
    	<img class="circular ui image" src="<c:url value="images/weathered-face.jpg" />" />
   		<h1>Nome do usuário</h1>
    </div>
</body>
</html>