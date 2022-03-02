package cl.awakelab.cambala_ch.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cl.awakelab.cambala_ch.model.entity.Usuario;
import cl.awakelab.cambala_ch.model.entity.Cosas;
import cl.awakelab.cambala_ch.model.service.UsuarioService;
import cl.awakelab.cambala_ch.model.service.CosasService;

@RestController
public class RestCambala_chController {
	
	@Autowired
	private UsuarioService us;
	
	@RequestMapping(value="/api/usuario", headers = "Accept=application/json") 
	public List<Usuario> getUsuario(){
		
		return us.getAll();		
	}
	
	@RequestMapping(value="/api/usuario/{id}", headers = "Accept=application/json")
	public Usuario getUsuario(@PathVariable("id") int id) {
		return us.getOne(id);
	}
	
	@RequestMapping(value="/api/usuario/usr", headers = "Accept=application/json") 
	public List<Usuario> getUsers(){
		
		return us.getByTipousuario(2);
	}
	
	@RequestMapping(value="/api/usuario/admin", headers = "Accept=application/json") 
	public List<Usuario> getAdmins(){
		
		return us.getByTipousuario(1);
	}
	
	@Autowired
	private CosasService cs;
	
	@RequestMapping(value="/api/cosas", headers = "Accept=application/json") 
	public List<Cosas> getCosas(){
		
		return cs.getAll();		
	}
	
	@RequestMapping(value="/api/cosas/{id}", headers = "Accept=application/json")
	public Cosas getCosas(@PathVariable("id") int id) {
		return cs.getOne(id);
	}
}
