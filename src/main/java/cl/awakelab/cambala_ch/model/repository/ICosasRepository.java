package cl.awakelab.cambala_ch.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.awakelab.cambala_ch.model.entity.Cosas;

public interface ICosasRepository extends JpaRepository<Cosas, Long> {

}
