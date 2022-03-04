package cl.awakelab.cambala_ch.model.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import cl.awakelab.cambala_ch.model.entity.Cosas;

public interface ICosasRepository extends JpaRepository<Cosas, Long> {
	
	// Query personalizado que toma imagen de DB, usado en controlador /foto/{id}
	@Query(value="SELECT file_data FROM cosas WHERE idcosa = :idcosa", nativeQuery=true)
    public byte[] getFile_DataByIdcosa(@Param("idcosa") long idcosa);
	
	/* Query prueba con anotacion @Query para usar SQL nativo
	@Query(value="SELECT file_name FROM cosas WHERE idcosa = :idcosa", nativeQuery=true)
    public String getFile_NameByIdcosa(@Param("idcosa") long idcosa); */
	
	// public byte[] getFile_DataByIdcosa(long idcosa);
	
	List<Cosas> getByIdusuario(long idusuario);

}
