<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.css">
  
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>
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
				<h2><a href="${pageContext.request.contextPath}/admin/clientes/">Crear cliente</a></h2>
			</div>
		<div class="contenido">
			<div id="table" style= "width: 100%;margin: auto; overflow:auto;">
				<table id="tablaClientes" class="display"
					style="margin: auto; white-space: nowrap;">
					<thead>
					<tr class="pure-table-odd">
						<th>Usuario</th>
<!-- 						<th>Contraseña</th> -->
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
						<th>Nacionalidad</th>
						<th>Correo Electrónico</th>
						<th>Teléfonos</th>
						<th>Baja</th>
						<th>Acciones</th>
					</tr>
					 	</thead>
					 	<tbody>
        	<c:forEach var="cliente" items="${listaClientes}">
                <tr >
                    <td><c:out value="${cliente.username}" /></td>
<%--                     <td><c:out value="${cliente.password}" /></td> --%>
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
                    <td><c:out value="${cliente.nacionalidad}" /></td>
                    <td><c:out value="${cliente.correo_electronico}" /></td>
                    <td><%-- <c:out value="${cliente.telefonos}" />--%></td> 
                    <td><c:out value="${cliente.baja}" /></td>
                    <td>
                        <a href="${pageContext.request.contextPath}/admin/clientes/modificar?dni=<c:out value='${cliente.dni}' />">Editar</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="${pageContext.request.contextPath}/admin/clientes/eliminar?dni=<c:out value='${cliente.dni}' />">Eliminar</a>                     
                    </td>
                </tr>
            </c:forEach>
            </tbody>
				</table>
			
		</div>
	</div>
	</div>
	</div>
</body>
</html>