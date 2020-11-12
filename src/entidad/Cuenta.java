package entidad;

import java.math.BigDecimal;
import java.sql.Date;

public class Cuenta {

	private String dni_cuenta;
	private String cbu;
	private Date fecha_creacion;
	private Integer tipo;
	private String numero;
	private BigDecimal saldo;
	private Boolean baja;
	
	public Cuenta() {
		// TODO Auto-generated constructor stub
	}

	public String getDni_cuenta() {
		return dni_cuenta;
	}

	public void setDni_cuenta(String dni_cuenta) {
		this.dni_cuenta = dni_cuenta;
	}

	public String getCbu() {
		return cbu;
	}

	public void setCbu(String cbu) {
		this.cbu = cbu;
	}

	public Date getFecha_creacion() {
		return fecha_creacion;
	}

	public void setFecha_creacion(Date fecha_creacion) {
		this.fecha_creacion = fecha_creacion;
	}

	public Integer getTipo() {
		return tipo;
	}

	public void setTipo(Integer tipo) {
		this.tipo = tipo;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public BigDecimal getSaldo() {
		return saldo;
	}

	public void setSaldo(BigDecimal saldo) {
		this.saldo = saldo;
	}

	public Boolean getBaja() {
		return baja;
	}

	public void setBaja(Boolean baja) {
		this.baja = baja;
	}

}
