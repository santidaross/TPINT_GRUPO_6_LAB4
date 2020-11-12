package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import entidad.Usuario;

public class UsuarioDao {
	
	public UsuarioDao() {
		// TODO Auto-generated constructor stub
	}
	public Usuario login(Usuario usuario) {
		Usuario resultado = new Usuario();
		Connection cn = null;
		PreparedStatement st = null;
		try
		{
			cn = Conexion.getConexion().getSQLConexion();
			st = cn.prepareStatement("SELECT * FROM usuario WHERE username = ? AND password = ? ");
			st.setString(1, usuario.getUsername());
			st.setString(2, usuario.getPassword());
			
			System.out.println(st);
            ResultSet rs = st.executeQuery();
            if(rs.next()) {
            	resultado.setValido(true);
            	resultado.setUsername(rs.getString("username"));
                resultado.setPassword(rs.getString("password"));
                resultado.setTipo(rs.getInt("tipo"));
                resultado.setBaja(rs.getBoolean("baja"));
            } else {
            	resultado.setValido(false);
            }
            
		} catch (Exception e) {
			// TODO: handle exception
		}
		return resultado;
	}
}
