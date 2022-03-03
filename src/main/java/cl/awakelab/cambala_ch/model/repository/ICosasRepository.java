package cl.awakelab.cambala_ch.model.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mysql.cj.jdbc.Blob;

import cl.awakelab.cambala_ch.model.entity.Cosas;

public interface ICosasRepository extends JpaRepository<Cosas, Long> {
	
	public Blob getFile_DataByIdcosa(long idcosa);
	
	List<Cosas> getByIdusuario(long idusuario);

}
