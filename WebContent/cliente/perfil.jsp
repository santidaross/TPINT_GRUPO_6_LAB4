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
<title>Cliente - Perfil</title>
</head>
<body>
	<div class="contenedor">
		<jsp:include page="/menu.jsp"></jsp:include>
		<div class="main">
			<div class="header">
				<h1>Nombre Usuario</h1>
				<h2>Informacion de cliente</h2>
			</div>
			<div class="contenido">
				<form class="pure-form pure-form-aligned">
					<fieldset>
						<div class="pure-control-group">
							<label for="aligned-name">Usuario</label> <input type="text"
								id="aligned-name" readonly="" placeholder="Usuario" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Contraseña</label> <input type="text"
								id="aligned-name" readonly="" placeholder="Contraseña" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">DNI</label> <input type="text"
								id="aligned-name" readonly="" placeholder="DNI" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">CUIL</label> <input type="text"
								id="aligned-name" readonly="" placeholder="CUIL" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Nombre</label> <input type="text"
								id="aligned-name" readonly="" placeholder="Nombre" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Apellido</label> <input type="text"
								id="aligned-name" readonly="" placeholder="Apellido" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Sexo</label> <input type="text"
								id="aligned-name" readonly="" placeholder="Apellido" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Tipo de usuario</label> <input type="text"
								id="aligned-name" readonly="" placeholder="Apellido" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Provincia</label> <input type="text"
								id="aligned-name" readonly="" placeholder="Apellido" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Localidad</label> <input type="text"
								id="aligned-name" readonly="" placeholder="Localidad" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Dirección</label> <input type="text"
								id="aligned-name" readonly="" placeholder="Dirección" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Correo electrónico</label> <input
								type="text" id="aligned-name" readonly="" placeholder="Correo electrónico" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Teléfono</label> <input type="text"
								id="aligned-name" readonly="" placeholder="Teléfonos" />
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</body>
</html>