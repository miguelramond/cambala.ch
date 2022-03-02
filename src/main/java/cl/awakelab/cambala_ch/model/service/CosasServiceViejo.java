/* package cl.awakelab.cambala_ch.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awakelab.cambala_ch.model.entity.Cosas;
import cl.awakelab.cambala_ch.model.repository.ICosasRepository;

@Service
public class CosasServiceViejo {
	
	@Autowired
	ICosasRepository cRepo; 
	
	public CosasServiceViejo() {
		super();
	}
	
	public List<Cosas> getAll() {
		return cRepo.findAll();
	}
	
	public Cosas getOne(double id) {
		return cRepo.findById(id).get();
	}
	
	public void create(Cosas c) {
		cRepo.save(c);
	}
	
	public void update(Cosas c) {
		cRepo.save(c);
	}
	
	public void delete(double id) {
		cRepo.delete(cRepo.getOne(id));
	}

} */
