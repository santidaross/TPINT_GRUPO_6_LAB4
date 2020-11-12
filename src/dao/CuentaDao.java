package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import entidad.Cuenta;

public class CuentaDao {

	private String declaracionSQL_alta = "";
	private String declaracionSQL_baja = "";
	private String declaracionSQL_modificacion = "UPDATE Cuenta SET fecha_creacion = ? , tipo = ? , numero = ? , saldo = ? , baja = ? WHERE Dni = ? ";
	private String declaracionSQL_listarTodo = "SELECT * FROM Cuenta";
	private String declaracionSQL_listarUnico = "Select * FROM Cuenta WHERE dni_cliente = ? AND cbu = ";
	
	
	
	public int obtenerTodo() {
		int resultado=0;
		Connection cn = null;
		Statement st = null;
		ResultSet rs = null;
		try
		{
			cn = Conexion.getConexion().getSQLConexion();
			//conn = DriverManager.getConnection(host + dbName, user, pass);
			st = cn.createStatement();
			
			rs = st.executeQuery("SELECT MAX(idSeguro) FROM seguros");
			
			while(rs.next()){
				
				resultado=rs.getInt(1);
			}
			
			//cn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		} finally {
			if(cn != null) {
				try {
					Conexion.getConexion().cerrarConexion();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if(st != null) {
				try {
					st.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
		}
		return resultado;
	}
	
	/*
	 * public int obtenerUnico(Cuenta cuenta) {
	 * 
	 * }
	 */
}
