package cl.awakelab.cambala_ch.model.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.awakelab.cambala_ch.model.entity.Usuario;

public interface IUsuarioRepository extends JpaRepository<Usuario, Long> {
	
	List<Usuario> getByTipousuario(Integer tipousuario);
	
	Usuario getByUname(String uname);

}
