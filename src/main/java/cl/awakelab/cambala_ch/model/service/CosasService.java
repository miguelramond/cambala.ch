package cl.awakelab.cambala_ch.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awakelab.cambala_ch.model.entity.Cosas;
import cl.awakelab.cambala_ch.model.repository.ICosasRepository;

@Service
public class CosasService {
	
	@Autowired
	ICosasRepository cRepo; 
	
	public CosasService() {
		super();
	}
	
	public List<Cosas> getAll() {
		return cRepo.findAll();
	}
	
	public Cosas getOne(long id) {
		return cRepo.findById(id).get();
	}
	
	public void crear(Cosas c){
		
		cRepo.save(c);
	}
	
	public void update(Cosas c) {
		cRepo.save(c);
	}
	
	public void delete(long id) {
		cRepo.delete(cRepo.getOne(id));
	}
	
	public List<Cosas> getByIdusuario(long idusuario) {
		return cRepo.getByIdusuario(idusuario);
	}
	
}
