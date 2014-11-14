<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <!DOCTYPE html>
        <html>
        <c:import url="head.jsp"></c:import>

        <body>
        	<c:import url="faceScript.jsp"></c:import>
        
            <%-- <jsp:useBean id="controller" class="br.com.webservice.cliente.controller.SystemController"></jsp:useBean>--%>
                <c:import url="cabecalho.jsp"></c:import>
                <div id="perfil" class="ui primary segment">
                    <img class="circular ui image" src="<c:url value=" images/weathered-face.jpg " />" />
                    <h1>Nome do usuário</h1>
                </div>
                <div id="listLugar" class="ui divided list">
                    <c:forEach var="lugar" items="${lugares}">
                        <div class="item">
                            <i class="map marker icon"></i>
                            <div class="content">
                                <a class="header">${lugar.nome}</a>
                                <div class="description">Classificação:
                                    <c:choose>
                                        <c:when test="${lugar.classificacao == '1'}">Péssimo</c:when>
                                        <c:when test="${lugar.classificacao == '2'}">Ruim</c:when>
                                        <c:when test="${lugar.classificacao == '3'}">Regular</c:when>
                                        <c:when test="${lugar.classificacao == '4'}">Bom</c:when>
                                        <c:when test="${lugar.classificacao == '5'}">Ótimo</c:when>
                                    </c:choose>
                                </div>
                                <div class="description">${lugar.descricao}</div>
                                <input type="hidden" name="id" value="${lugar.id}" />
                            </div>
                            <div class="editButtons">
								<a href="alterarLugar?id=${lugar.id}"><i class="exchange big icon"></i></a>
                                <a href="deleteLugar?id=${lugar.id}"><i class="trash big icon"></i></a>
                            </div>
                        </div>
                    </c:forEach>
                </div>


        </body>

        </html>