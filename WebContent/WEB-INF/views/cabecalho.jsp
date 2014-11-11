 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

 <header>
	<img id="logo_small" alt="imagem" src="<c:url value="images/journey.png" />" />
        <menu>
            <ul>
                <li><a href="inicio">Inicio</a>
                </li>
                <li><a href="lugares">Explore</a>
                </li>
                <li><a href="cadastrar">Cadastrar Lugar</a>
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