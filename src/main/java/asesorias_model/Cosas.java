package asesorias_model;

public class Cosas {
	
	private int id;
	private String nombre;
	private String desc;
	private int usuario;
	
	public Cosas(int id, String nombre, String desc, int usuario) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.desc = desc;
		this.usuario = usuario;
	}

	public Cosas() {
		super();
	}

	@Override
	public String toString() {
		return "Cosas [id=" + id + ", nombre=" + nombre + ", desc=" + desc + ", usuario=" + usuario + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public int getUsuario() {
		return usuario;
	}

	public void setUsuario(int usuario) {
		this.usuario = usuario;
	}

}
