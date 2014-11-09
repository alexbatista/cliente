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
    <form class="cadastro" method="put" action="updateLugar">
    	<div class="ui form">
		  <div class="field">
		    <label>Nome do Local:</label>
		    <input  name="nome" type="text" value="${lugar.nome}">
		  </div>
		  <div class="field">
		  	<label>Latitude:</label>
		  	<input type="text" name="latitude" value="${lugar.latitude}" />
		  </div>
		  <div class="field">
		  	<label>Longitude:</label>
		  	<input type="text" name="longitude" value="${lugar.longitude}"/>
		  </div>
 		  <input type="hidden" name="id" value="${lugar.id}" />
 		  <div class="ui selection dropdown">
			  <input type="hidden" name="classificacao">
			  <div class="default text">
			  <c:choose>
			  	<c:when test="${lugar.classificacao == '1'}">Péssimo</c:when>
			  	<c:when test="${lugar.classificacao == '2'}">Ruim</c:when>
			  	<c:when test="${lugar.classificacao == '3'}">Regular</c:when>
			  	<c:when test="${lugar.classificacao == '4'}">Bom</c:when>
			  	<c:when test="${lugar.classificacao == '5'}">Ótimo</c:when>
			  </c:choose>
			  </div>
			  <i class="dropdown icon"></i>
			  <div class="menu" >
			    <div class="item" <c:if test="${lugar.classificacao == '1'}">active</c:if> data-value="1">Péssimo</div>
			    <div class="item <c:if test="${lugar.classificacao == '2' }">active</c:if>" data-value="2">Ruim</div>
			    <div class="item <c:if test="${lugar.classificacao == '3' }">active</c:if>" data-value="3">Regular</div>
			    <div class="item <c:if test="${lugar.classificacao == '4' }">active</c:if>" data-value="4">Bom</div>
			    <div class="item <c:if test="${lugar.classificacao == '5' }">active</c:if>" data-value="5">Ótimo</div> 
			  </div>
		</div>
		<div class="field">
		    <label>Descrição: </label>
		    <textarea name="descricao">${lugar.descricao}</textarea>
 		  </div>
		</div>
		<div class="ui buttons">
		  <a class="ui button" href="lugares">Cancelar</a>
		  <div class="or"></div>
		  <input type="submit" value="Salvar" class="ui positive button" />
		</div>
    </form>
    </div>
</body>
</html>