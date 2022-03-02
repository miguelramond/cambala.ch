package cl.awakelab.cambala_ch.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="cosas")
public class Cosas {
	
	@Id
	@Column(name="idcosa")
	private long idcosa;
	private String nombre;
	private String descripcion;
	private long idusuario;
	private String region;
	private String comuna;
	private String file_name;
	private byte[] file_data;

	public Cosas(long idcosa, String nombre, String descripcion, long idusuario, String region, String comuna,
			String file_name, byte[] file_data) {
		super();
		this.idcosa = idcosa;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.idusuario = idusuario;
		this.region = region;
		this.comuna = comuna;
		this.file_name = file_name;
		this.file_data = file_data;
	}

	public Cosas() {
		super();
	}

	@Override
	public String toString() {
		return "Cosas [idcosa=" + idcosa + ", nombre=" + nombre + ", descripcion=" + descripcion + ", idusuario="
				+ idusuario + ", region=" + region + ", comuna=" + comuna + "]";
	}
	
	public long getIdcosa() {
		return idcosa;
	}

	public void setIdcosa(long idcosa) {
		this.idcosa = idcosa;
	}

	@Column(name="nombre")
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	@Column(name="descripcion")
	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	@Column(name="idusuario")
	public long getIdusuario() {
		return idusuario;
	}

	public void setIdusuario(long idusuario) {
		this.idusuario = idusuario;
	}

	@Column(name="region")
	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	@Column(name="comuna")
	public String getComuna() {
		return comuna;
	}

	public void setComuna(String comuna) {
		this.comuna = comuna;
	}
	
	@Column(name="file_name")
	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	
	@Column(name="file_data")
	public byte[] getFile_data() {
		return file_data;
	}

	public void setFile_data(byte[] file_data) {
		this.file_data = file_data;
	}
	
}
