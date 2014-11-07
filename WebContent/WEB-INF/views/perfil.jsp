<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="head.jsp"></c:import>
<body>
   <c:import url="cabecalho.jsp"></c:import>
    <div>
    <div id="perfil" class="ui primary segment">
    	<img class="circular ui image" src="<c:url value="images/weathered-face.jpg" />" />
   		<h1>Nome do usuário</h1>
    </div>
    <form class="cadastro" action="postLugar" method="post" enctype="application/json">
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
			  <input type="hidden" name="classificacao">
			  <div class="default text">Classificação:</div>
			  <i class="dropdown icon"></i>
			  <div class="menu" >
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