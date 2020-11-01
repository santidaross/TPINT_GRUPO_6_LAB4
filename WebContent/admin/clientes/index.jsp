<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/pure/pure-min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/custom.css" />
	
<link rel="stylesheet" type="text/css"
	href="//cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css" />
<script type="text/javascript" charset="utf8"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" charset="utf8"
	src="//cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
<script>
	$(document).ready(function() {
		$('#tablaClientes').DataTable();
	});
</script>
<meta charset="ISO-8859-1">
<title>Clientes</title>
</head>
<body>
	<div class="contenedor">
		<jsp:include page="/menu.jsp"></jsp:include>
		<div class="main">
			<div class="header">
				<h1>Clientes</h1>
				<h2><a href="${pageContext.request.contextPath}/admin/clientes/alta.jsp">Crear nuevo cliente</a></h2>
			</div>
		<div class="contenido">
			<div id="table" style= "width: 100%;margin: auto; overflow:auto;">
				<table id="tablaClientes" class="pure-table"
					style="margin: auto; white-space: nowrap;">
					<tr class="pure-table-odd">
						<th id="columna_editar">Editar</th>
						<th id="columna_eliminar">Eliminar</th>
						<th>Usuario</th>
						<th>Contraseña</th>
						<th>DNI</th>
						<th>CUIL</th>
						<th>Nombre</th>
						<th>Apellido</th>
						<th>Sexo</th>
						<th>Nacionalidad</th>
						<th>Fecha de nacimiento</th>
						<th>Dirección</th>
						<th>Localidad</th>
						<th>Provincia</th>
						<th>Correo Electrónico</th>
						<th>Teléfonos</th>
					</tr>
					<%-- 		TODO: Futura implementacion de tabla con objetos de clientes
        	<c:forEach var="clientes" items="${listaClientes}">
                <tr >
                    <td><c:out value="${cliente.usuario}" /></td>
                    <td><c:out value="${cliente.password}" /></td>
                    <td><c:out value="${cliente.dni}" /></td>
                    <td><c:out value="${cliente.cuil}" /></td>
                    <td><c:out value="${cliente.nombre}" /></td>
                    <td><c:out value="${cliente.apellido}" /></td>
                    <td><c:out value="${cliente.sexo}" /></td>
                    <td><c:out value="${cliente.nacionalidad}" /></td>
                    <td><c:out value="${cliente.fecha_nacimiento}" /></td>
                    <td><c:out value="${cliente.direccion}" /></td>
                    <td><c:out value="${cliente.localidad}" /></td>
                    <td><c:out value="${cliente.provincia}" /></td>
                    <td><c:out value="${cliente.correo_electronico}" /></td>
                    <td><c:out value="${cliente.telefonos}" /></td>
                    <td><c:out value="${cliente.}" /></td>
                    <td>
                        <a href="/editar?dni=<c:out value='${cliente.dni}' />">Editar</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="/eliminar?dni=<c:out value='${cliente.dni}' />">Eliminar</a>                     
                    </td>
                </tr>
            </c:forEach>
--%>
				</table>
			
		</div>
	</div>
	</div>
	</div>
</body>
</html>