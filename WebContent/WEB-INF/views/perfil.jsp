<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:import url="head.jsp"></c:import>
<body>
	<script
	src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false">
	</script>
	
	<script>
	var map;
	var myCenter=new google.maps.LatLng(51.508742,-0.120850);
	
	function initialize()
	{
	var mapProp = {
	  center:myCenter,
	  zoom:5,
	  mapTypeId:google.maps.MapTypeId.ROADMAP
	  };
	
	  map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
	
	  google.maps.event.addListener(map, 'click', function(event) {
	    placeMarker(event.latLng);
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
   		<h1>Nome do usuário</h1>
    </div>
    <form class="cadastro" action="postLugar" method="post" enctype="application/json">
    	<div class="ui form">
		  <div class="field">
		    <label>Nome do Local:</label>
		    <input  name="nome" type="text">
		  </div>
<!-- 		  <div class="field"> -->
<!-- 		  	<label>Latitude:</label> -->
		  	<input type="hidden" id="latitude" name="latitude" />
<!-- 		  </div> -->
<!-- 		  <div class="field"> -->
<!-- 		  	<label>Longitude:</label> -->
		  	<input type="hidden" id="longitude" name="longitude" />
<!-- 		  </div> -->
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
		 <div class="field">
		    <label>Descrição: </label>
		    <textarea name="descricao"></textarea>
 		  </div>
		<div id="googleMap"></div>
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