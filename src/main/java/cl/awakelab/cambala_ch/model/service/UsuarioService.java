package cl.awakelab.cambala_ch.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awakelab.cambala_ch.model.entity.Usuario;
import cl.awakelab.cambala_ch.model.repository.IUsuarioRepository;

@Service
public class UsuarioService {
	
	@Autowired
	IUsuarioRepository uRepo; 
	
	public UsuarioService() {
		super();
	}
	
	public List<Usuario> getAll() {
		return uRepo.findAll();
	}
	
	public Usuario getOne(long id) {
		return uRepo.findById(id).get();
	}
	
	public void create(Usuario u) {
		uRepo.save(u);
	}
	
	public void update(Usuario u) {
		uRepo.save(u);
	}
	
	public void delete(long id) {
		uRepo.delete(uRepo.getOne(id));
	}
	
	public List<Usuario> getByTipousuario(Integer tipousuario){
		return uRepo.getByTipousuario(tipousuario);
		
	}
	
	public Usuario getByUname(String uname) {
		return uRepo.getByUname(uname);
	}

}
