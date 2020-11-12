package entidad;

import java.util.List;
import java.util.Date;

public class Cliente {

	private String username;
	
	private String dni;
	private String cuil;
	private String nombre;
	private String apellido;
	private Integer sexo;
	private Date fecha_nacimiento;
	private String nacionalidad;
	private String provincia;
	private String localidad;
	private String direccion;
	private String correo_electronico;
	private Boolean baja;
	
	// Un cliente puede tener muchos telefonos
	private List<Telefonos> telefonos;
	
	
	public Cliente() {
		// TODO Auto-generated constructor stub
	}


	public Cliente(String dni, String username, String cuil, String nombre, String apellido, Integer sexo,
			Date fecha_nacimiento, String nacionalidad, String provincia, String localidad, String direccion,
			String correo_electronico, Boolean baja/*, List<Telefonos> telefonos*/) {
		super();
		this.dni = dni;
		this.username = username;
		this.cuil = cuil;
		this.nombre = nombre;
		this.apellido = apellido;
		this.sexo = sexo;
		this.fecha_nacimiento = fecha_nacimiento;
		this.nacionalidad = nacionalidad;
		this.provincia = provincia;
		this.localidad = localidad;
		this.direccion = direccion;
		this.correo_electronico = correo_electronico;
		this.baja = baja;
		//this.telefonos = telefonos;
	}


	public List<Telefonos> getTelefonos() {
		return telefonos;
	}


	public void setTelefonos(List<Telefonos> telefonos) {
		this.telefonos = telefonos;
	}


	public String getDni() {
		return dni;
	}


	public void setDni(String dni) {
		this.dni = dni;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getCuil() {
		return cuil;
	}


	public void setCuil(String cuil) {
		this.cuil = cuil;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getApellido() {
		return apellido;
	}


	public void setApellido(String apellido) {
		this.apellido = apellido;
	}


	public Integer getSexo() {
		return sexo;
	}


	public void setSexo(Integer sexo) {
		this.sexo = sexo;
	}


	public Date getFecha_nacimiento() {
		return fecha_nacimiento;
	}


	public void setFecha_nacimiento(Date fecha_nacimiento) {
		this.fecha_nacimiento = fecha_nacimiento;
	}


	public String getNacionalidad() {
		return nacionalidad;
	}


	public void setNacionalidad(String nacionalidad) {
		this.nacionalidad = nacionalidad;
	}


	public String getProvincia() {
		return provincia;
	}


	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}


	public String getLocalidad() {
		return localidad;
	}


	public void setLocalidad(String localidad) {
		this.localidad = localidad;
	}


	public String getDireccion() {
		return direccion;
	}


	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}


	public String getCorreo_electronico() {
		return correo_electronico;
	}


	public void setCorreo_electronico(String correo_electronico) {
		this.correo_electronico = correo_electronico;
	}


	public Boolean getBaja() {
		return baja;
	}


	public void setBaja(Boolean baja) {
		this.baja = baja;
	}
	
}
