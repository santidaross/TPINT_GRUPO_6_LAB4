package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.Date;
import entidad.Cliente;
//import entidad.Telefonos;
//import entidad.Usuario;
//import dao.Conexion;
public class ClienteDao {
	// SQL
	private static final String declaracionSQL_alta = 
			"INSERT INTO cliente " + 
				"(dni, username, cuil, nombre, apellido, sexo, fecha_nacimiento, nacionalidad, provincia, " + 
					"localidad, direccion, correo_electronico, baja) " + 
			"VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
	private static final  String declaracionSQL_baja = 
			"UPDATE cliente SET baja = ? " + 
			"WHERE dni = ?";
	private static final  String declaracionSQL_modificacion = 
			"UPDATE cliente SET " + 
				"dni = ?, username = ?, cuil = ?, nombre = ?, apellido = ?, sexo = ?, fecha_nacimiento = ?, nacionalidad = ?, provincia = ?, " + 
					"localidad = ?, direccion = ?, correo_electronico = ?, baja = ? " + 
			"WHERE dni = ?";
	private static final  String declaracionSQL_listarTodos = 
			"SELECT * FROM cliente";
	private static final  String declaracionSQL_listarUnico = 
			"SELECT * FROM cliente WHERE dni = ?";
		
	public ClienteDao() {}
	
	public void agregarCliente(Cliente cliente) {
		System.out.println(declaracionSQL_alta);
		
		// TRY con recursos para cerrar la conexion automáticamente
		try{
			Connection cn = Conexion.getConexion().getSQLConexion(); 
			PreparedStatement ps = cn.prepareStatement(declaracionSQL_alta);
			
			ps.setString(1, cliente.getDni());
			ps.setString(2, cliente.getUsername());
			ps.setString(3, cliente.getCuil());
			ps.setString(4, cliente.getNombre());
			ps.setString(5, cliente.getApellido());
			ps.setInt(6, cliente.getSexo());
			ps.setDate(7, /*cliente.getFecha_nacimiento()*/Date.valueOf("2020-10-15"));
			ps.setString(8, cliente.getNacionalidad());
			ps.setString(9, cliente.getProvincia());
			ps.setString(10, cliente.getLocalidad());
			ps.setString(11, cliente.getDireccion());
			ps.setString(12, cliente.getCorreo_electronico());
			ps.setBoolean(13, cliente.getBaja());
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public Boolean bajaCliente(Boolean baja, String dni) {
		boolean columnasModificadas = false;
		try{
			Connection cn = Conexion.getConexion().getSQLConexion();
			PreparedStatement ps = cn.prepareStatement(declaracionSQL_baja);
					
			ps.setBoolean(1, baja);
			ps.setString(2, dni);
			
			columnasModificadas = ps.executeUpdate() > 0;
		}catch (SQLException e) {
			// TODO: handle exception
		}
		return columnasModificadas;
	}
	
	public Boolean modificarCliente(String dni, Cliente cliente) {
		boolean columnasModificadas = false;
		try{
			Connection cn = Conexion.getConexion().getSQLConexion();
			PreparedStatement ps = cn.prepareStatement(declaracionSQL_modificacion);

			ps.setString(1, cliente.getDni());
			ps.setString(2, cliente.getUsername());
			ps.setString(3, cliente.getCuil());
			ps.setString(4, cliente.getNombre());
			ps.setString(5, cliente.getApellido());
			ps.setInt(6, cliente.getSexo());
			ps.setDate(7, Date.valueOf(cliente.getFecha_nacimiento().toString()));
			ps.setString(8, cliente.getNacionalidad());
			ps.setString(9, cliente.getProvincia());
			ps.setString(10, cliente.getLocalidad());
			ps.setString(11, cliente.getDireccion());
			ps.setString(12, cliente.getCorreo_electronico());
			ps.setBoolean(13, cliente.getBaja());
			ps.setString(14, dni);
			
			columnasModificadas = ps.executeUpdate() > 0;
		}catch (SQLException e) {
			// TODO: handle exception
		}
		return columnasModificadas;
	}
	
	public Cliente listarCliente(String dni) {
		Cliente cliente = null;
		try {
			Connection cn = Conexion.getConexion().getSQLConexion();
			PreparedStatement ps = cn.prepareStatement(declaracionSQL_listarUnico);
			
			ps.setString(1, dni);
			System.out.println(ps);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {		
				//String dni = rs.getString("dni");
				String username = rs.getString("username");
				String cuil = rs.getString("cuil");
				String nombre = rs.getString("nombre");
				String apellido = rs.getString("apellido");
				Integer sexo = rs.getInt("sexo");
				Date fecha_nacimiento = rs.getDate("fecha_nacimiento");
				String nacionalidad = rs.getString("nacionalidad");
				String provincia = rs.getString("provincia");
				String localidad = rs.getString("localidad");
				String direccion = rs.getString("direccion");
				String correo_electronico = rs.getString("correo_electronico");
				Boolean baja = rs.getBoolean("baja");
				
				cliente = new Cliente(dni, username, cuil, nombre, apellido, sexo, fecha_nacimiento, nacionalidad, provincia, localidad, direccion, correo_electronico, baja);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return cliente;
	}

	public List<Cliente> listarClientes(){
		List <Cliente> clientes = new ArrayList<>();
		try{
			Connection cn = Conexion.getConexion().getSQLConexion();
			PreparedStatement ps = cn.prepareStatement(declaracionSQL_listarTodos);
			System.out.println(ps);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {		
				String dni = rs.getString("dni");
				String username = rs.getString("username");
				String cuil = rs.getString("cuil");
				String nombre = rs.getString("nombre");
				String apellido = rs.getString("apellido");
				Integer sexo = rs.getInt("sexo");
				Date fecha_nacimiento = rs.getDate("fecha_nacimiento");
				String nacionalidad = rs.getString("nacionalidad");
				String provincia = rs.getString("provincia");
				String localidad = rs.getString("localidad");
				String direccion = rs.getString("direccion");
				String correo_electronico = rs.getString("correo_electronico");
				Boolean baja = rs.getBoolean("baja");
				
				clientes.add(new Cliente(dni, username, cuil, nombre, apellido, sexo, fecha_nacimiento, nacionalidad, provincia, localidad, direccion, correo_electronico, baja));
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return clientes;
	}

	
}
