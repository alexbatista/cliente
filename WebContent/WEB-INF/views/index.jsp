<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Standard Meta -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

    <!-- Site Properities -->
    <title>Journey - Explore o Mundo</title>

    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700|Open+Sans:300italic,400,300,700' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" type="text/css" href="<c:url value="css/semantic.min.css"/>" >
    <link rel="stylesheet" type="text/css" href="<c:url value="css/homepage.css" />" >
	<link rel="stylesheet" type="text/css" href="<c:url value="css/jquery.remodal.css" />" >
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.js"></script>
    <script src="<c:url value="javascript/semantic.min.js"/>"></script>
    <script src="<c:url value="javascript/homepage.js" />" ></script>
    <script src="<c:url value="javascript/parallax.js" />" ></script>
	<script src="<c:url value="javascript/jquery.remodal.js" />" ></script>
</head>
<body id="home" class="remodal-bg">
    <div class="ui  page grid masthead segment bgParallax" data-speed="3">
        <div class="column">
            <div class=" secondary pointing ui menu">
                <div class="right menu">
                    <div class="ui top right pointing mobile dropdown link item">
                        Menu
                        <i class="dropdown icon"></i>
                        <div class="menu">
                            <a href="lugares" class="item">Lugares</a>
                        </div>
                    </div>
                    <div class="ui dropdown link item">
                        Explorar
                        <i class="dropdown icon"></i>
                        <div class="menu">
                            <a href="lugares" class="item">Lugares</a>
                        </div>
                    </div>
                    <a class="item">Comunidade</a>
                    <a class="item" href="#modal">Login</a>                    
                </div>
            </div>
            <img src="<c:url value="images/journey.png"/>" class="image">
            <div class="ui hidden transition information">
                <h1 class="ui inverted header">
            Planeje sua viagem!
        </h1>
                <p>Com o Journey você pode ir além.</p>
                <div class="large basic  animated fade ui button">
                    <div class="visible content">Junte-se a nós!</div>
                    <div class="hidden content">Registre-se agora</div>
                </div>
            </div>
        </div>
    </div>
    <div class="ui page grid overview segment">
        <div class="ui two wide column"></div>
        <div class="twelve wide column">
            <div class="ui three column center aligned stackable divided grid">
                <div class="column">
                    <div class="ui icon header">
                        <i class="circular calendar link icon"></i>
                        Planeje
                    </div>
                    <p>Com o journey você pode realizar aquelas férias tão sonhadas</p>
                    <p><a class="ui teal right labeled icon button" href="#">Saiba mais <i class="right long arrow icon"></i></a>
                    </p>
                </div>
                <div class="column">
                    <div class="ui icon header">
                        <i class="circular shield link icon"></i>
                        Segurança
                    </div>
                    <p>Aqui você pode escolher os lugares mais bem votados</p>
                    <p><a class="ui teal right labeled icon button" href="#">Ver lugares <i class="right long arrow icon"></i></a>
                    </p>
                </div>
                <div class="column">
                    <div class="ui icon header">
                        <i class="circular map marker link icon"></i>
                        Contribua
                    </div>
                    <p>Dê seu feedback sobre sua viagem</p>
                    <p><a class="ui teal right labeled icon button" href="#">Contribua <i class="right long arrow icon"></i></a>
                    </p>
                </div>
            </div>
        </div>
    </div>

    <div class="ui inverted page grid stackable relaxed feature segment">
        <div class="row">
            <div class="column">
                <h1 class="center aligned ui header">
         Planeje sua viagem da forma mais segura!
        </h1>
            </div>
        </div>
        <div class="row">
            <div class="ten wide column">
                <h2 class="ui header">Somos uma comunidade</h2>
                <p>Dolore nam cernantur. Te quis sint dolore vidisse non esse id iudicem. Multos hic nostrud ad fugiat a velit litteris te quibusdam ea anim consequat arbitror, eu ex quorum dolore tamen. Admodum duis ingeniis appellat, enim an ita quem pariatur, non sint exercitation, cupidatat illustriora iis quamquam nam admodum aut nulla arbitror, si te minim nostrud ubi minim id probant, sint offendit hic exercitation. Ubi ne irure fabulas, ea fugiat graviterque. Consequat et cillum, eram ut commodo o cillum qui cillum in quamquam, sint mandaremus quo dolor elit..</p>
                <p>This and other tips can be found in our newsletter, amazing right?</p>
                <div class="ui basic inverted animated button button">
                    <div class="visible content">Saiba mais</div>
                    <div class="hidden content"><i class="right arrow icon"></i>
                    </div>
                </div>
                <div class="ui inverted section divider"></div>
                <h3 class="ui header">Últimas atualizações</h3>
                <div class="ui inverted animated selection list">
                    <div class="item">
                        Maceió - Excelente Lugar
                        <div class="right floated">Jan 20, 2023</div>
                    </div>
                    <div class="item">
                        Lugar1 - alguma coisa sobre o lugar
                        <div class="right floated">Jan 1, 2023</div>
                    </div>
                    <div class="item">
                        Lugar2 - alguma coisa sobre o lugar
                        <div class="right floated">Dec 20, 2022</div>
                    </div>
                </div>
            </div>
            <div class="six wide column">
                <div class="ui secondary form segment">
                    <h3 class="ui header">Receba novidades sobre os lugares</h3>
                    <p>Mantenha-se sempre atualizado, inscreva-se!</p>
                    <div class="field">
                        <div class="ui left icon action input">
                            <i class="user icon"></i>
                            <input name="email" type="text" placeholder="seuemail@email.com">
                            <div class="ui teal submit button">Registrar-se</div>
                        </div>
                    </div>
                    <div class="ui error message"></div>
                </div>
            </div>
        </div>
    </div>

    <div class="ui page grid stackable segment">
        <div class="row">
            <div class="column">
                <h1 class="center aligned ui header">
         Veja quem já planejou com a gente!
        </h1>
                <div class="ui horizontal divider"><i class="heart icon"></i>
                </div>
            </div>
        </div>
        <div class="center four column aligned row">
            <div class="column">
                <div class="ui text shape">
                    <div class="sides">
                        <div class="active side">
                            <i class="huge circular github icon"></i>
                        </div>
                        <div class="side">
                            <i class="huge circular facebook icon"></i>
                        </div>
                        <div class="side">
                            <i class="huge circular maxcdn icon"></i>
                        </div>
                        <div class="side">
                            <i class="huge circular pinterest icon"></i>
                        </div>
                        <div class="side">
                            <i class="huge circular weibo icon"></i>
                        </div>
                        <div class="side">
                            <i class="huge circular flickr icon"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="column">
                <div class="ui text shape">
                    <div class="sides">
                        <div class="side">
                            <i class="huge circular github icon"></i>
                        </div>
                        <div class="side">
                            <i class="huge circular facebook icon"></i>
                        </div>
                        <div class="active side">
                            <i class="huge circular maxcdn icon"></i>
                        </div>
                        <div class="side">
                            <i class="huge circular pinterest icon"></i>
                        </div>
                        <div class="side">
                            <i class="huge circular weibo icon"></i>
                        </div>
                        <div class="side">
                            <i class="huge circular flickr icon"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="column">
                <div class="ui text shape">
                    <div class="sides">
                        <div class="side">
                            <i class="huge circular github icon"></i>
                        </div>
                        <div class="side">
                            <i class="huge circular facebook icon"></i>
                        </div>
                        <div class="side">
                            <i class="huge circular maxcdn icon"></i>
                        </div>
                        <div class="side">
                            <i class="huge circular pinterest icon"></i>
                        </div>
                        <div class="active side">
                            <i class="huge circular weibo icon"></i>
                        </div>
                        <div class="side">
                            <i class="huge circular flickr icon"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="column">
                <div class="ui text shape">
                    <div class="sides">
                        <div class="side">
                            <i class="huge circular github icon"></i>
                        </div>
                        <div class="side">
                            <i class="huge circular facebook icon"></i>
                        </div>
                        <div class="side">
                            <i class="huge circular maxcdn icon"></i>
                        </div>
                        <div class="side">
                            <i class="huge circular pinterest icon"></i>
                        </div>
                        <div class="side">
                            <i class="huge circular weibo icon"></i>
                        </div>
                        <div class="active side">
                            <i class="huge circular flickr icon"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="ui inverted teal page grid segment">
        <div class="ten wide column">
            <div class="ui three column stackable grid">
                <div class="column">
                    <div class="ui header">Explorar</div>
                    <div class="ui inverted link list">
                        <a href="lugares" class="item">Lugares</a>
                    </div>
                </div>
                <div class="column">
                    <div class="ui header">Community</div>
                    <div class="ui inverted link list">
                        <a class="item">BBS</a>
                        <a class="item">Careers</a>
                        <a class="item">Privacy Policy</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="six wide right floated aligned column">
            <h3 class="ui header">Universidade Federal de Alagoas</h3>
            <addr>
                Instituto de Computação
            </addr>
            <p>(82) 0000-0000</p>
        </div>
    </div>
<!--     Modal -->
    <div class="remodal" data-remodal-id="modal">
    <h1>Login</h1>
	    <div class="ui facebook button">
		  <i class="facebook icon"></i>
		  Facebook
		</div>
    <p>Logue com o facebook ou com seu email</p>
    <br>
    <a class="remodal-cancel" href="#">Cancel</a>
    <a class="remodal-confirm" href="#">OK</a>
</div>
</body>

</html>
