package br.com.webservice.cliente.controller;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.webservice.cliente.bean.Lugar;


@Controller
public class SystemController {

	@RequestMapping("/inicio")
	public String execute(){
		return "index";
	}
	
	public static void main(String[] args) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("lugarDB"); 
		EntityManager em = factory.createEntityManager();
		Lugar p = new Lugar();
		p.setLatitude(23344.23);
		p.setLongitude(452.33);
		p.setNome("Segundo lugar");
		em.getTransaction().begin();
		em.persist(p); 
		em.getTransaction().commit(); 
	}
}
