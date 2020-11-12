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
<meta charset="ISO-8859-1">
<title>Crear cliente</title>
</head>
<body>
	<%-- header --%>
	<div class="contenedor">
		<jsp:include page="/menu.jsp"></jsp:include>
		<div class="main">
			<div class="header">
				<h1>Agregar Cliente</h1>
				<h2>
					<a href="${pageContext.request.contextPath}/admin/clientes/listar">Listar clientes</a>
				</h2>
			</div>
			<%-- fin header --%>
			<div class="contenido">
				<form class="pure-form pure-form-aligned" method="post">
					<fieldset>
						<div class="pure-control-group">
							<label for="aligned-name">Username</label> <input type="text"
								id="aligned-name" name="username" placeholder="Usuario" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Password</label> <input type="text"
								id="aligned-name" name="password" placeholder="Contraseña" />
						</div>
						<div class="pure-control-group">
							<label for="stacked-baja" class="pure-checkbox"> <input type="checkbox"
								id="stacked-remember" name="checkbox_baja" value="checkbox_baja" placeholder="Baja" />Baja</label> 
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Documento</label> <input type="text"
								id="aligned-name" name="dni" placeholder="DNI" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">CUIL</label> <input type="text"
								id="aligned-name" name="cuil" placeholder="CUIL" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Nombre</label> <input type="text"
								id="aligned-name" name="nombre" placeholder="Nombre" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Apellido</label> <input type="text"
								id="aligned-name" name="apellido"placeholder="Apellido" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Sexo</label> <select name="sexo" id="selectSexo">
								<option>Hombre</option>
								<option>Mujer</option>
								<option>Otro</option>
							</select>
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Tipo</label> <select name="nacionalidad"
								id="selectNacionalidad">
								<option>Argentina</option>
							</select>
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Provincia</label> <select name="provincia"
								id="selectProvincia">
								<option>Buenos Aires</option>
							</select>
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Localidad</label> <input type="text" name="localidad"
								id="aligned-name" placeholder="Localidad" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Dirección</label> <input type="text" name="direccion"
								id="aligned-name" placeholder="Dirección" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Correo electrónico</label> <input name="correo_electronico"
								type="text" id="aligned-name" placeholder="Correo electrónico" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Teléfono</label> <textarea name="telefonos" inputmode="tel" 
								placeholder="Telefono 1&#10;Telefono 2&#10;Telefono 3" rows="3" cols=""></textarea> 
						</div>
						<div class="pure-controls">
							<button type="submit" formaction="${pageContext.request.contextPath}/admin/clientes/agregar" class="pure-button pure-button-primary">Agregar cliente</button>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</body>
</html>