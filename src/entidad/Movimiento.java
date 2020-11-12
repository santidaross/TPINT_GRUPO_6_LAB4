package entidad;

import java.math.BigDecimal;
import java.util.Date;

public class Movimiento {

	private Integer id;
	private String dni_cliente;
	private Date fecha;
	private String detalle;
	private BigDecimal importe;
	private BigDecimal saldo;
	private Integer tipo;
	
	public Movimiento() {
		// TODO Auto-generated constructor stub
	}

	public Movimiento(Integer id, String dni_cliente, Date fecha, String detalle, BigDecimal importe, BigDecimal saldo,
			Integer tipo) {
		super();
		this.id = id;
		this.dni_cliente = dni_cliente;
		this.fecha = fecha;
		this.detalle = detalle;
		this.importe = importe;
		this.saldo = saldo;
		this.tipo = tipo;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDni_cliente() {
		return dni_cliente;
	}

	public void setDni_cliente(String dni_cliente) {
		this.dni_cliente = dni_cliente;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public String getDetalle() {
		return detalle;
	}

	public void setDetalle(String detalle) {
		this.detalle = detalle;
	}

	public BigDecimal getImporte() {
		return importe;
	}

	public void setImporte(BigDecimal importe) {
		this.importe = importe;
	}

	public BigDecimal getSaldo() {
		return saldo;
	}

	public void setSaldo(BigDecimal saldo) {
		this.saldo = saldo;
	}

	public Integer getTipo() {
		return tipo;
	}

	public void setTipo(Integer tipo) {
		this.tipo = tipo;
	}

}
