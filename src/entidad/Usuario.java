package entidad;

public class Usuario {
	// DB
	private String username;
	private String dni_cliente;
	private String password;
	private Integer tipo;
	private Boolean baja;
	//
	private Boolean valido;
	
	public Usuario() {
		// TODO Auto-generated constructor stub
	}

	public Usuario(String username, String dni_cliente, String password, Integer tipo, Boolean baja) {
		super();
		this.username = username;
		this.dni_cliente = dni_cliente;
		this.password = password;
		this.tipo = tipo;
		this.baja = baja;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getDni_cliente() {
		return dni_cliente;
	}

	public void setDni_cliente(String dni_cliente) {
		this.dni_cliente = dni_cliente;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getTipo() {
		return tipo;
	}

	public void setTipo(Integer tipo) {
		this.tipo = tipo;
	}

	public Boolean getBaja() {
		return baja;
	}

	public void setBaja(Boolean baja) {
		this.baja = baja;
	}

	public Boolean getValido() {
		return valido;
	}
	
	public void setValido(Boolean valido) {
		this.valido = valido;
	}
	
}
