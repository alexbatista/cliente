package br.com.webservice.cliente.controller;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.GenericType;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;

import br.com.webservice.cliente.bean.Lugar;


@Controller
public class SystemController {

	@RequestMapping("/inicio")
	public String execute(){
		return "index";
	}
	
	@RequestMapping("/registrar")
	public String registrar(){
		return "lugares";
	}
	
	@RequestMapping("perfil")
	public String getPerfil(){
		return "perfil";
	}
	
	@RequestMapping("/resource")
	public String Resources(){
		
		 String uri = "http://localhost:8080/journey/lugar";
		    ClientConfig config = new DefaultClientConfig();
		    Client client = Client.create(config);
		    WebResource service = client.resource(uri);
		    String json = service.accept("application/json").get(String.class);
		    System.out.println("Output as json: " + json);
	
		    return "index";
	}
	public static void main(String[] args) {
		/*EntityManagerFactory factory = Persistence.createEntityManagerFactory("lugarDB"); 
		EntityManager em = factory.createEntityManager();
		Lugar p = new Lugar();
		p.setLatitude(23344.23);
		p.setLongitude(452.33);
		p.setNome("Segundo lugar");
		em.getTransaction().begin();
		em.persist(p); 
		em.getTransaction().commit(); */
		
		 String uri = "http://localhost:8080/journey/lugar";
		 ClientConfig config = new DefaultClientConfig();
		 Client client = Client.create(config);
		 WebResource service = client.resource(uri);
		 String json = service.accept("application/json").get(String.class);
		 System.out.println("Output as json: " + json);
		    
		
	}
}
