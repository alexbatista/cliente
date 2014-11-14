<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="head.jsp"></c:import>
<body>
	<c:import url="faceScript.jsp"></c:import>

		<script
	src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false">
	</script>
	
	<script>
	
	var map;
	
		var myCenter=new google.maps.LatLng(${lugar.latitude}, ${lugar.longitude});
		
	
	function initialize()
	{
	var mapProp = {
	  center:myCenter,
	  zoom:5,
	  mapTypeId:google.maps.MapTypeId.ROADMAP
	  };
	
	  map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
	  placeMarkerLoad(myCenter);
	  google.maps.event.addListener(map, 'click', function(event) {
	    placeMarker(event.latLng);
	  });
	}
	
	function placeMarkerLoad(location){
		 var marker = new google.maps.Marker({
			    position: location,
			    map: map,
			  });
	}
	function placeMarker(location) {
	  var marker = new google.maps.Marker({
	    position: location,
	    map: map,
	  });
	    document.getElementById("latitude").value = location.lat();
	    document.getElementById("longitude").value = location.lng();
	
	  var infowindow = new google.maps.InfoWindow({
// 	    content: 'Latitude: ' + location.lat() + '<br>Longitude: ' + location.lng()
	  });
// 	  infowindow.open(map,marker);
	}
	google.maps.event.addDomListener(window, 'load', initialize);
	
	
	</script>
   <c:import url="cabecalho.jsp"></c:import>
    <div>
    <div id="perfil" class="ui primary segment">
    	<img class="circular ui image" src="<c:url value="images/weathered-face.jpg" />" />
   		<h1>Nome do Usuário</h1>
    </div>
    <form class="cadastro" method="put" action="updateLugar">
    	<div class="ui form">
		  <div class="field">
		    <label>Nome do Local:</label>
		    <input  name="nome" type="text" value="${lugar.nome}">
		  </div>
<!-- 		  <div class="field"> -->
<!-- 		  	<label>Latitude:</label> -->
		  	<input type="hidden" id="latitude" name="latitude" value="${lugar.latitude}" />
<!-- 		  </div> -->
<!-- 		  <div class="field"> -->
<!-- 		  	<label>Longitude:</label> -->
		  	<input type="hidden" id="longitude" name="longitude" value="${lugar.longitude}"/>
<!-- 		  </div> -->
 		  <input type="hidden" name="id" value="${lugar.id}" />
 		  <div class="ui selection dropdown">			  
			  <c:choose>
			  	<c:when test="${lugar.classificacao == '1'}">
	 				<input type="hidden" name="classificacao" value="1" />
				  	<div class="default text">Péssimo</div>
			  	</c:when>
			  	<c:when test="${lugar.classificacao == '2'}">
					<input type="hidden" name="classificacao" value="2" />
				  	<div class="default text">Ruim</div>
				</c:when>
			  	<c:when test="${lugar.classificacao == '3'}">
					<input type="hidden" name="classificacao" value="3" />
				  	<div class="default text">Regular</div>
				</c:when>
			  	<c:when test="${lugar.classificacao == '4'}">
					<input type="hidden" name="classificacao" value="4" />
				  	<div class="default text">Bom</div>
				</c:when>
			  	<c:when test="${lugar.classificacao == '5'}">
					<input type="hidden" name="classificacao" value="5" />
				  	<div class="default text">Ótimo</div>
				</c:when>
			  </c:choose>
			  
			  <i class="dropdown icon"></i>
			  <div class="menu" >
			    <div class="item" data-value="1">Péssimo</div>
			    <div class="item" data-value="2">Ruim</div>
			    <div class="item" data-value="3">Regular</div>
			    <div class="item" data-value="4">Bom</div>
			    <div class="item" data-value="5">Ótimo</div> 
			  </div>
		</div>
		<div class="field">
		    <label>Descrição: </label>
		    <textarea name="descricao">${lugar.descricao}</textarea>
 		  </div>
		</div>
		<div id="googleMap"></div>
		<div class="ui buttons">
		  <a class="ui button" href="lugares">Cancelar</a>
		  <div class="or"></div>
		  <input type="submit" value="Salvar" class="ui positive button" />
		</div>
    </form>
    </div>
</body>
</html>