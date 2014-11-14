	<script>

	  window.fbAsyncInit = function() {
	    FB.init({
	      appId      : '891070540925932',
	      xfbml      : true,
	      version    : 'v2.2'
	    });
	    
	    FB.Event.subscribe('auth.authResponseChange', function(response) {
            //Se o usuário estiver logado no facebook e já deu as permissões para seu aplicativo o status será connected
            if (response.status === 'connected') {
                // Executa a função usuarioConectado().
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
          // Com a função FB.api, é possível fazer chamadas para o Graph API.
          // Usando o parâmetro /me , você pode solicitar informações do usuário conectado.
          FB.api('/me', function(response) {
              // Usando jQuery, será exibido no paragrafo com id info as informações abaixo, capturdas com o FB.api.
             /* $('#info').html(
                  'Nome: '+response.name + 
                  '<br>username: '+response.username + 
                  '<br>Link perfil: '+response.link + 
                  '<br>Email: '+response.email +
                  '<br>Sexo: '+response.gender +
                  '<br>ID: '+response.id 
              );*/
              $("#info").text("Olá, "+response.name);
              $("#perfil h1").text(response.name);
              $('#loginSup').css('display','none');
              $('#perfil').html('<img class=\"circular ui image\" src="https://graph.facebook.com/'+response.id+'/picture" alt="'+response.name+'" />');
              var inst = $.remodal.lookup[$('[data-remodal-id=modal]').data('remodal')];
              inst.close();
          });
      }

	</script>