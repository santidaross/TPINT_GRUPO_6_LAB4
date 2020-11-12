<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/pure/pure-min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/custom.css" />
<meta charset="ISO-8859-1">
<title>Iniciar sesión</title>
</head>
<body>
<%-- <jsp:useBean id="sesionUsuario" scope="session" class="entidad.Usuario" /> --%>
	<div class="contenedor">
		<%-- 
		<jsp:include page="/menu.jsp"></jsp:include> 
		--%>
		<div class="main">
			<div class="header">
				<h1>Bienvenido</h1>
				<h2>Inicie sesión para continuar</h2>
			</div>
		<div class="contenido">
			<form action="${pageContext.request.contextPath}/login" method="post" class="pure-form pure-form-aligned">
				<fieldset>
					<div class="pure-control-group">
						<label for="aligned-name">Usuario</label> <input type="text"
							id="username" name="username" placeholder="Usuario" value="<c:catch var="user">${cookie.usuario_recordado.value}</c:catch><c:if test="${user!=null}">''</c:if>"/>
					</div>
					<div class="pure-control-group">
						<label for="aligned-password">Contraseña</label> <input
							type="password" id="password" name="password" placeholder="Contraseña" />
					</div>
					<div class="pure-controls">
						<label for="aligned-cb" class="pure-checkbox"> <input
							type="checkbox" id="checkbox_recordarusuario" name="checkbox_recordarusuario" value="checkbox_recordarusuario" /> Recordar usuario
						</label>
						<button type="submit" class="pure-button pure-button-primary">Iniciar
							sesion</button>
							
					</div>
				</fieldset>
				<h4> 
				${mensaje}
				</h4>
			</form>
			
		</div>
		</div>
	</div>
</body>
</html>