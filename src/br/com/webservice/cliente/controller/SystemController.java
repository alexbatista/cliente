package br.com.webservice.cliente.controller;


import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;
import com.sun.jersey.api.json.JSONConfiguration;

import br.com.webservice.cliente.bean.Lugar;


@Controller
public class SystemController {

	@RequestMapping("/inicio")
	public String execute(){
		return "index";
	}
		
	@RequestMapping("/cadastrar")
	public String getPerfil(){
		return "perfil";
	}
	
	
	@RequestMapping("postLugar")
	public String postLugar(Lugar lugar) throws JSONException{
		
			JSONObject obj = new JSONObject();
			obj.put("id", lugar.getId());
			obj.put("nome", lugar.getNome());
			obj.put("latitude",lugar.getLatitude());
			obj.put("longitude", lugar.getLongitude());
			obj.put("descricao",lugar.getDescricao());
			obj.put("classificacao", lugar.getClassificacao());
			
			 String uri = "http://localhost:8080/journey/lugar";
			    ClientConfig config = new DefaultClientConfig();
			    config.getFeatures().put(JSONConfiguration.FEATURE_POJO_MAPPING, Boolean.TRUE);     
			    Client client = Client.create(config);
			    WebResource service = client.resource(uri);
			    ClientResponse response = service.accept("application/json").type("application/json").post(ClientResponse.class, obj.toString());	 
            if (response.getStatus() != 200) {
               return "perfil";
            }
		    return "redirect:cadastrar";
	}
	
	@RequestMapping("alterarLugar")
	public String alterarLugar(int id, Model model){
		Lugar place = new Lugar();
		place.setId(id);
		Lugar lugar = getLugar(place);
		
		model.addAttribute("lugar", lugar);
		return "alterar";
	}
	
	@RequestMapping("updateLugar")
	public String updateLugar(Lugar lugar) throws JSONException{
		
		JSONObject obj = new JSONObject();
		obj.put("id", lugar.getId());
		obj.put("nome", lugar.getNome());
		obj.put("latitude",lugar.getLatitude());
		obj.put("longitude", lugar.getLongitude());
		obj.put("descricao",lugar.getDescricao());
		obj.put("classificacao", lugar.getClassificacao());
		
		 String uri = "http://localhost:8080/journey/lugar/";
		    ClientConfig config = new DefaultClientConfig();
		    config.getFeatures().put(JSONConfiguration.FEATURE_POJO_MAPPING, Boolean.TRUE);     
		    Client client = Client.create(config);
		    WebResource service = client.resource(uri);
		    ClientResponse response = service.accept("application/json").type("application/json").put(ClientResponse.class, obj.toString());	 
        if (response.getStatus() != 200) {
           return "perfil";
        }
	    return "redirect:lugares";
	}
	
	@RequestMapping("deleteLugar")
	public String deleteLugar(Lugar lugar){
		
			String uri = "http://localhost:8080/journey/lugar/"+lugar.getId();
		    ClientConfig config = new DefaultClientConfig();
		    config.getFeatures().put(JSONConfiguration.FEATURE_POJO_MAPPING, Boolean.TRUE);     
		    Client client = Client.create(config);
		    WebResource service = client.resource(uri);
		    ClientResponse response = service.accept("application/json").type("application/json").delete(ClientResponse.class);	 
	    if (response.getStatus() != 200) {
	       return "inicio";
	    }
	    return "forward:lugares";//redirect:lugares também funfa, redirect no lado cliente e forward no servidor
	}
	
	public Lugar getLugar(Lugar lu){
		Lugar lugar = new Lugar();
		
		String uri = "http://localhost:8080/journey/lugar/"+lu.getId();
	    ClientConfig config = new DefaultClientConfig();
	    config.getFeatures().put(JSONConfiguration.FEATURE_POJO_MAPPING, Boolean.TRUE);     
	    Client client = Client.create(config);
	    WebResource service = client.resource(uri);
	    String json = service.accept("application/json").type("application/json").get(String.class);	 
	    
	    
		try {
			JSONObject obj = new JSONObject(json);
			 lugar.setId(obj.getInt("id"));
			 lugar.setNome(obj.getString("nome"));
			 lugar.setLongitude(obj.getDouble("longitude"));
			 lugar.setLatitude(obj.getDouble("latitude"));
			 
			 if(obj.getInt("classificacao") != 0)
			 lugar.setClassificacao(obj.getInt("classificacao"));
			 
			 if(obj.getString("descricao") != null)
			 lugar.setDescricao(obj.getString("descricao"));
			 
		} catch (JSONException e) {
			e.printStackTrace();
		}
	   
		return lugar;
	}
	
	@RequestMapping("lugares")
	public String getLugares(Model model){
		String uri = "http://localhost:8080/journey/lugar";
		 ClientConfig config = new DefaultClientConfig();
		 Client client = Client.create(config);
		 WebResource service = client.resource(uri);
		 String json = service.accept("application/json").get(String.class);
		 List<Lugar> lugares = new ArrayList<Lugar>();
	
		try {
			
			JSONArray array = new JSONArray(json);
			
			for(int i = 0; i < array.length(); i++){
			JSONObject obj = array.getJSONObject(i);
			Lugar lugar = new Lugar();
			lugar.setId(obj.getInt("id"));
			lugar.setNome(obj.getString("nome"));
			lugar.setLongitude(obj.getDouble("longitude"));
			lugar.setLatitude(obj.getDouble("latitude"));
			
			 if(obj.getInt("classificacao") != 0)
			lugar.setClassificacao(obj.getInt("classificacao"));
			
			 if(obj.getString("descricao") != null)
			lugar.setDescricao(obj.getString("descricao"));
			 
			lugares.add(lugar);
			}
			
		} catch (JSONException e) {
			e.printStackTrace();
		}
		model.addAttribute("lugares", lugares);
		
		return "lugares";
			
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
		
	/*	String uri = "http://localhost:8080/journey/lugar";
		 ClientConfig config = new DefaultClientConfig();
		 Client client = Client.create(config);
		 WebResource service = client.resource(uri);
		 String json = service.accept("application/json").get(String.class);
		 System.out.println("Output as json: " + json);*/
		

		    
		
	}
}
