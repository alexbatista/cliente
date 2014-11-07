<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<c:import url="head.jsp"></c:import>
<body>
	<jsp:useBean id="controller" class="br.com.webservice.cliente.controller.SystemController"></jsp:useBean>
   <c:import url="cabecalho.jsp"></c:import>
	
	 <div id="listLugar" class="ui divided list">
		<c:forEach var="lugar" items="${controller.lugares}">
		  <div class="item">
		    <i class="map marker icon"></i>
		    <div class="content">
		      <a class="header">${lugar.nome}</a>
		      <div class="description">${lugar.latitude}</div>
		      <div class="description">${lugar.longitude}</div>
		      <input type="hidden" name="id" value="${lugar.id}" />
		    </div>
		    <div class="editButtons">
			    <button><i class="trash big icon"></i></button>
			    <button><i class="exchange big icon"></i></button>
		    </div>
		  </div>
		</c:forEach>
	 </div>
		
	
</body>
</html>