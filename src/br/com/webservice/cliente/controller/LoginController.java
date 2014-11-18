package br.com.webservice.cliente.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.restfb.DefaultFacebookClient;
import com.restfb.FacebookClient;
import com.restfb.types.User;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;
import com.sun.jersey.api.core.HttpResponseContext;
import com.sun.jersey.api.json.JSONConfiguration;

import br.com.webservice.cliente.bean.Usuario;
import br.com.webservice.cliente.dao.UsuarioDao;

@Controller
public class LoginController {

	@Autowired(required=true)
	private HttpServletRequest request;
	
	@RequestMapping("/login")
	public String login(){
		return "facebook";
	}
	@RequestMapping("efetuaLogin")
	public String efetuaLogin(){
		
		Cookie[] cookies = request.getCookies();
		
		
		for(Cookie cookie : cookies){
//		    if("fbsr_APP_ID".equals(cookie.getName())){
		        loginFacebook(cookie.getValue());
//		    }
		}
		
		return "redirect:login";
		
	}
	
	
	public String loginFacebook(String token){
		
String uri ="https://graph.facebook.com/me?access_token="+token;
	    ClientConfig config = new DefaultClientConfig();
	    config.getFeatures().put(JSONConfiguration.FEATURE_POJO_MAPPING, Boolean.TRUE);     
	    Client client = Client.create(config);
	    WebResource service = client.resource(uri);
	    String json = service.accept("application/json").type("application/json").get(String.class);	 
	    System.out.println(json);
		return null;
	}
}
