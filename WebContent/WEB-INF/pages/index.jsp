<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
        <!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
        <!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
        <!--[if gt IE 8]><!-->
        <html class="no-js">
        <!--<![endif]-->

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <title>Journey - Explore o mundo</title>
            <meta name="description" content="Esta é a descrição do meu site">
            <meta name="viewport" content="width=device-width, initial-scale=1">

            <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

            <link rel="stylesheet" type="text/css" href="<c:url value="/css/normalize.css" />" />
            <link rel="stylesheet" type="text/css" href="<c:url value="/css/main.css" />" />
            <link rel="stylesheet" type="text/css" href="<c:url value="/css/reset.css" />" />
            <link rel="stylesheet" type="text/css" href="<c:url value="/css/style.css" />" />
            <script src="<c:url value="/js/vendor/modernizr-2.6.2.min.js" />"></script>
        </head>

        <body>
            <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

            <header>
                <img id="logo_small" src="<c:url value="img/journey.png" />" alt="journey" >
                <menu>
                    <ul>
                        <li><a href="">Inicio</a>
                        </li>
                        <li><a href="">Explore</a>
                        </li>
                        <li><a href="">Depoimentos</a>
                        </li>
                    </ul>
                    <form action="#" method="post">
                        <input type="search" placeholder="Digite o local">
                        <input type="submit" value="">
                    </form>
                </menu>
            </header>
            <div id="main">
                <!--        <img id="logo" src="img/journey.png" alt="journey">-->
                <h1>
            Conheça o mundo!
        </h1>
                <p>Multos an incurreret se labore, incididunt sunt fugiat aut quae a quis nam ullamco, nescius sempiternum ita proident non ne ipsum ita multos, sed multos nisi ita aliquip ne a iis quae quid quis de si officia an occaecat. Quis deserunt a appellat, nescius tamen ingeniis arbitror, mentitum ubi commodo an fore o excepteur. Offendit sint velit an dolor. Velit tractavissent arbitror duis vidisse, offendit reprehenderit ut probant si de commodo se doctrina, ex amet voluptate. Quae voluptate ne appellat. O noster mandaremus, nescius irure nulla nam velit.</p>
            </div>
            <footer>
                <span>Todos os direitos reservados - Journey&copy;</span>
                <aside>
                    <ul>
                        <li>
                            <a>
                                <img src="<c:url value="/img/facebook-2-48.png"/>" alt="facebook" title="Acompanhe nossa página">
                            </a>
                        </li>
                        <li>
                            <a>
                                <img src="<c:url value="/img/twitter-48.png"/>" alt="twitter" title="Siga-nos no twitter">
                            </a>
                        </li>
                        <li>
                            <a>
                                <img src="<c:url value="/img/instagram-4-48.png"/>" alt="instagram" title="Siga-nos no instagram">
                            </a>
                        </li>
                    </ul>
                </aside>
            </footer>
            <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
            <script>
                window.jQuery || document.write('<script src="<c:url value="/js/vendor/jquery-1.10.2.min.js" />"><\/script>')
            </script>
            <script src="<c:url value="/js/plugins.js" />"></script>
            <script src="<c:url value="/js/main.js"/>"></script>
        </body>

        </html>

        <!-- <!DOCTYPE html> -->
        <!-- <html> -->
        <!-- <head> -->
        <!-- <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> -->
        <!-- <title>Journey - Explore o mundo!</title> -->
        <!-- </head> -->
        <!-- <body> -->
        <!-- 	<form action="http://localhost:8080/journey/lugar" method="post"> -->
        <!-- 			<label for="nome">Nome: </label> -->
        <!-- 			<input type="text" name="nome" /> -->
        <!-- 			<label for="latitude">Latitude: </label> -->
        <!-- 			<input type="text" name="latitude" /> -->
        <!-- 			<label for="longitude">Longitude: </label> -->
        <!-- 			<input type="text" name="longitude" /> -->
        <!-- 			<input type="submit" value="enviar"> -->
        <!-- 	</form> -->
        <!-- </body> -->
        <!-- </html> -->