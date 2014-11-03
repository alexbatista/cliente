package br.com.webservice.cliente.controller;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.GenericType;
import com.sun.jersey.api.client.WebResource;

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
	@RequestMapping("/resource")
	public void Resources(){
		
		Client client = Client.create();
		WebResource wr = client.resource("http://localhost:8080/journey/lugar");
		List<Lugar> lugares = wr.get(new GenericType<List<Lugar>>(){});
		System.out.println(lugares);
	
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
		
		Client client = Client.create();
		WebResource wr = client.resource("http://localhost:8080/journey/lugar");
		List<Lugar> lugares = wr.get(new GenericType<List<Lugar>>(){});
		System.out.println(lugares);
		
	}
}
