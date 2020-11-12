<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<title>Administrador - Principal</title>
</head>
<body>
<div class="contenedor">
		<jsp:include page="/menu.jsp"></jsp:include>
		<div class="main">
			<div class="header">
				<h1>Bienvenido</h1>
				<jsp:useBean id="sesionUsuario" scope="session" class="entidad.Usuario" />
				<h2><jsp:getProperty name="sesionUsuario" property="username"/></h2>
<%-- 				<h2><% request.getSession().getAttribute("sesionUsuario_Username"); %></h2> --%>
				<h2><a href="${pageContext.request.contextPath}/clientes/prestamo_solicitud.jsp"></a></h2>
			</div>
		<div class="contenido">
		</div>
	</div>
	</div>
</body>
</html>