package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UsuarioDao;
import entidad.Usuario;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(description = "Servlet para el login de usuarios", urlPatterns = { "/login" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UsuarioDao usuarioDao;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		try {
			//HttpSession session = request.getSession(false);
			//session.getAttribute("sesionUsuario") != null;
			//if(false) {
				//Usuario sesionExistente = (Usuario) session.getAttribute("sesionUsuario");
				//switch (sesionExistente.getTipo()) {
					//case 0:
						//request.setAttribute("sesionUsuario_Username", sesionUsuario.getUsername());
						//request.setAttribute("sesionUsuario_Tipo", sesionUsuario.getTipo());
			            //request.getRequestDispatcher("cliente/index.jsp").forward(request, response);
						//response.sendRedirect("/cliente/index.jsp");
						//break;
					//case 1:
						//response.sendRedirect("/admin/index.jsp");
						//break;
					//default:
						//break;
				//}
			//} else {
				String username = request.getParameter("username"); 
				String password = request.getParameter("password");
				boolean checkbox_recordar = false;
			
				if(request.getParameter("checkbox_recordarusuario") != null) {
					checkbox_recordar = true;
				}		
				
				if(username != null && username != "" && password != null && password != "") {
					Usuario usuario = new Usuario();
					usuarioDao = new UsuarioDao();
					usuario.setUsername(request.getParameter("username"));
					usuario.setPassword(request.getParameter("password"));
					usuario = usuarioDao.login(usuario);
					if (usuario.getValido()) {
						usuario.setPassword(null);
						if (usuario.getBaja()) {
							request.setAttribute("mensaje", "El usuario se encuentra dado de baja.");
				            request.getRequestDispatcher("index.jsp").forward(request, response);
						} else {
							request.getSession().setAttribute("sesionUsuario", usuario);
							request.getSession().setAttribute("UsuarioLogeado", "true");
							//request.getSession().setAttribute("beanUsuario", usuario);
							//request.getSession().setAttribute("sesionUsuario_Username", usuario.getUsername());
							//request.getSession().setAttribute("sesionUsuario_Tipo", usuario.getTipo());
							if (checkbox_recordar) {
								Cookie cookie = new Cookie("usuario_recordado",usuario.getUsername());
								cookie.setPath("/");
								cookie.setMaxAge(60*60*24*7); // 7 dias en segundos
								response.addCookie(cookie);
							} else {
								Cookie cookie = new Cookie("usuario_recordado",null);
								cookie.setPath("/");
								cookie.setMaxAge(0);
								response.addCookie(cookie);
							}
							switch (usuario.getTipo()) {
								case 0:
									request.getRequestDispatcher("cliente/index.jsp").forward(request, response);
									//response.sendRedirect("index.jsp");
									break;
								case 1:
									request.getRequestDispatcher("admin/index.jsp").forward(request, response);
									break;
			
								default:
									break;
							}
							
						}
					} else {
			            request.setAttribute("mensaje", "Usuario o contraseña incorrecta.");
			            request.getRequestDispatcher("index.jsp").forward(request, response);
					}
				} else {
					request.setAttribute("mensaje", "Ingrese un usuario y contraseña.");
		            request.getRequestDispatcher("index.jsp").forward(request, response);
				}
				
				
			//}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
