package servlets;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClienteDao;
import entidad.Cliente;

/**
 * Servlet implementation class Admin_CuentasServlet
 */
@WebServlet({"/admin/clientes/"
	,"/admin/clientes/alta"
	,"/admin/clientes/agregar"
	,"/admin/clientes/baja"
	,"/admin/clientes/modificar"
	,"/admin/clientes/listar"})
public class Admin_ClientesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ClienteDao clienteDao = new ClienteDao();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_ClientesServlet() {
        //super();
    }

    /**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String accion = request.getServletPath();
		try {
			switch (accion) {
			case "/admin/clientes/alta":
				mostrarFormulario_Alta(request, response);
				break;
			case "/admin/clientes/agregar":
				agregarCliente(request,response);
				break;
				
			case "/admin/clientes/modificar":
				// Muestro el formulario con los datos del cliente a modificar.
				mostrarFormulario_Modificar(request,response);
				break;
			case "/admin/clientes/eliminar":
	
				break;

				
			default:
				//   /admin/clientes/listar
				listarClientes(request,response);
				break;
			}
		} catch(SQLException e) {
			 throw new ServletException(e);
		}
		
	}
	
	private void mostrarFormulario_Alta(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/clientes/alta.jsp");
        dispatcher.forward(request, response);
	}
	
	private void agregarCliente(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		
		String dni = request.getParameter("dni");
		String username = request.getParameter("username");
		String cuil = request.getParameter("cuil");
		String nombre = request.getParameter("nombre");
		String apellido= request.getParameter("apellido");
		String sexo = request.getParameter("Sexo");
		Date fecha_nacimiento = Date.valueOf(request.getParameter("fecha_nacimiento"));
		String nacionalidad = request.getParameter("nacionalidad");
		String provincia = request.getParameter("provincia");
		String localidad = request.getParameter("localidad");
		String direccion = request.getParameter("direccion");
		String correo_electronico = request.getParameter("correo_electronico");
		Boolean checkbox_baja = false;
		if(request.getParameter("checkbox_baja") != null) {
			checkbox_baja = true;
		}
		Integer _sexo;
		switch (sexo) {
		case "Hombre":
			_sexo = 1;
			break;
		case "Mujer":
			_sexo= 2;
			break;
		default:
			_sexo = 3;
			break;
		}
		Cliente cliente = new Cliente(dni, username, cuil, nombre, apellido, _sexo, fecha_nacimiento, nacionalidad, provincia, localidad, direccion, correo_electronico, checkbox_baja);
		clienteDao.agregarCliente(cliente);
		response.sendRedirect("/admin/clientes/lista");
	}
	
	
	private void listarClientes(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<Cliente> listaClientes = clienteDao.listarClientes();
		request.setAttribute("listaClientes", listaClientes);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/clientes/index.jsp");
		dispatcher.forward(request, response);
	}
	
	private void mostrarFormulario_Modificar(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, ServletException, IOException {
		String dni = request.getParameter("dni");
		Cliente clienteExistente = clienteDao.listarCliente(dni);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/clientes/modificar.jsp");
        request.setAttribute("cliente", clienteExistente);
        dispatcher.forward(request, response);
	}
		

}
