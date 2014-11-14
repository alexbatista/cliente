	<script>

	  window.fbAsyncInit = function() {
	    FB.init({
	      appId      : '891070540925932',
	      xfbml      : true,
	      version    : 'v2.2'
	    });
	    
	    FB.Event.subscribe('auth.authResponseChange', function(response) {
            //Se o usu�rio estiver logado no facebook e j� deu as permiss�es para seu aplicativo o status ser� connected
            if (response.status === 'connected') {
                // Executa a fun��o usuarioConectado().
                usuarioConectado();
            } 
        });
	  };
	
	  (function(d, s, id){
	     var js, fjs = d.getElementsByTagName(s)[0];
	     if (d.getElementById(id)) {return;}
	     js = d.createElement(s); js.id = id;
	     js.src = "//connect.facebook.net/en_US/sdk.js";
	     fjs.parentNode.insertBefore(js, fjs);
	   }(document, 'script', 'facebook-jssdk'));
	  
	  function usuarioConectado() {
          // Com a fun��o FB.api, � poss�vel fazer chamadas para o Graph API.
          // Usando o par�metro /me , voc� pode solicitar informa��es do usu�rio conectado.
          FB.api('/me', function(response) {
              // Usando jQuery, ser� exibido no paragrafo com id info as informa��es abaixo, capturdas com o FB.api.
             /* $('#info').html(
                  'Nome: '+response.name + 
                  '<br>username: '+response.username + 
                  '<br>Link perfil: '+response.link + 
                  '<br>Email: '+response.email +
                  '<br>Sexo: '+response.gender +
                  '<br>ID: '+response.id 
              );*/
              $("#info").text("Ol�, "+response.name);
              $("#perfil h1").text(response.name);
              $('#loginSup').css('display','none');
              $('#perfil').html('<img class=\"circular ui image\" src="https://graph.facebook.com/'+response.id+'/picture" alt="'+response.name+'" />');
              var inst = $.remodal.lookup[$('[data-remodal-id=modal]').data('remodal')];
              inst.close();
          });
      }

	</script>