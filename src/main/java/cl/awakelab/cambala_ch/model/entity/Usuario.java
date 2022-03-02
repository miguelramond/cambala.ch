package cl.awakelab.cambala_ch.model.entity;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="usuario")
public class Usuario {
	
	@Id
	@Column(name="idusuario")
	private long idusuario;
	private String uname;
	private String psw;
	private String email;
	private String tlf;
	private String run;
	private String direccion;
	private String comuna;
	
	/* Uso de etiqueta @Temporal para convertir registro almacenado 
	en DB como DATETIME a String para muestra en vista */
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date fechacreacion;
	
	private int tipousuario;
	
	
	public Usuario(long idusuario, String uname, String psw, String email, String tlf, String run, String direccion,
			String comuna, Date fechacreacion, int tipousuario) {
		super();
		this.idusuario = idusuario;
		this.uname = uname;
		this.psw = psw;
		this.email = email;
		this.tlf = tlf;
		this.run = run;
		this.direccion = direccion;
		this.comuna = comuna;
		this.fechacreacion = fechacreacion;
		this.tipousuario = tipousuario;
	}

	public Usuario() {
		super();
	}

	public long getIdusuario() {
		return idusuario;
	}

	public void setIdusuario(long idusuario) {
		this.idusuario = idusuario;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPsw() {
		return psw;
	}

	public void setPsw(String psw) {
		this.psw = psw;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTlf() {
		return tlf;
	}

	public void setTlf(String tlf) {
		this.tlf = tlf;
	}

	public String getRun() {
		return run;
	}

	public void setRun(String run) {
		this.run = run;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getComuna() {
		return comuna;
	}

	public void setComuna(String comuna) {
		this.comuna = comuna;
	}

	public Date getFechacreacion() {
		return fechacreacion;
	}

	public void setFechacreacion(Date fechacreacion) {
		this.fechacreacion = fechacreacion;
	}

	public int getTipousuario() {
		return tipousuario;
	}

	public void setTipousuario(int tipousuario) {
		this.tipousuario = tipousuario;
	}

	@Override
	public String toString() {
		return "Usuario [idusuario=" + idusuario + ", uname=" + uname + ", psw=" + psw + ", email=" + email + ", tlf="
				+ tlf + ", run=" + run + ", direccion=" + direccion + ", comuna=" + comuna + ", fechacreacion="
				+ fechacreacion + ", tipousuario=" + tipousuario + "]";
	}	
	
}
