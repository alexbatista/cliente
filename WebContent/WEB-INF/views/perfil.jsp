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
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.js"></script>
    <script src="<c:url value="javascript/semantic.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="javascript/homepage.js" />" ></script>

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
    <div>
    <div id="perfil" class="ui primary segment">
    	<img class="circular ui image" src="<c:url value="images/weathered-face.jpg" />" />
   		<h1>Nome do usuário</h1>
    </div>
    <form class="cadastro" action="resource" method="post" enctype="application/json">
    	<div class="ui form">
		  <div class="field">
		    <label>Nome do Local:</label>
		    <input  name="nome" type="text">
		  </div>
		   <div class="field">
		    <label>Descrição: </label>
		    <textarea name="descricao"></textarea>
 		  </div>
 		  <div class="ui selection dropdown">
			  <input type="hidden" name="gender">
			  <div class="default text">Gender</div>
			  <i class="dropdown icon"></i>
			  <div class="menu">
			  	<div class="item active" data-value="0">-----</div>
			    <div class="item" data-value="1">Péssimo</div>
			    <div class="item" data-value="2">Ruim</div>
			    <div class="item" data-value="3">Regular</div>
			    <div class="item" data-value="4">Bom</div>
			    <div class="item" data-value="5">Ótimo</div> 
			  </div>
		</div>
		</div>
		<div class="ui buttons">
		  <input type="reset" value="cancelar" class="ui button" />
		  <div class="or"></div>
		  <input type="submit" value="Salvar" class="ui positive button" />
		</div>
    </form>
    </div>
</body>
</html>