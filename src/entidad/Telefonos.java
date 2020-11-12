package entidad;

public class Telefonos {

	private String dni;
	private String telefono;
	private Boolean baja;
	
	public Telefonos() {
		// TODO Auto-generated constructor stub
	}
	
	public Telefonos(String dni, String telefono) {
		super();
		this.dni = dni;
		this.telefono = telefono;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	
	public Boolean getBaja() {
		return baja;
	}

	public void setBaja(Boolean baja) {
		this.baja = baja;
	}

}
