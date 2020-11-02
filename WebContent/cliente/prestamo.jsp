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
		$('#tablaPrestamos').DataTable();
	});
</script>
<meta charset="ISO-8859-1">
<title>Cliente - Prestamos</title>
</head>
<body>
	<div class="contenedor">
		<jsp:include page="/menu.jsp"></jsp:include>
		<div class="main">
			<div class="header">
				<h1>Prestamos</h1>
				<h2><a href="${pageContext.request.contextPath}/cliente/prestamo_solicitud.jsp">Solicitar prestamo</a></h2>
			</div>
			<div class="contenido">
				<div id="table" style="width: 100%; margin: auto; overflow: auto;">
					<table id="tablaClientes" class="pure-table"
						style="margin: auto; white-space: nowrap;">
						<tr class="pure-table-odd">
							<th>Fecha</th>
							<th>Detalle</th>
							<th>Importe</th>
							<th>Saldo</th>
							<th>Tipo</th>
						</tr>
					</table>

				</div>
			</div>
		</div>
	</div>
</body>
</html>