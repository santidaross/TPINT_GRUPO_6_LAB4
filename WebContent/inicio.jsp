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
<title>Iniciar sesión</title>
</head>
<body>
	<div class="contenedor">
		<jsp:include page="/menu.jsp"></jsp:include>
		<div class="main">
			<div class="header">
				<h1>Bienvenido</h1>
				<h2>Inicie sesión para continuar</h2>
			</div>
		<div class="contenido">
			<form class="pure-form pure-form-aligned">
				<fieldset>
					<div class="pure-control-group">
						<label for="aligned-name">Usuario</label> <input type="text"
							id="aligned-name" placeholder="Usuario" />
					</div>
					<div class="pure-control-group">
						<label for="aligned-password">Contraseña</label> <input
							type="password" id="aligned-password" placeholder="Contraseña" />
					</div>
					<div class="pure-controls">
						<label for="aligned-cb" class="pure-checkbox"> <input
							type="checkbox" id="aligned-cb" /> Recordar usuario
						</label>
						<button type="submit" class="pure-button pure-button-primary">Iniciar
							sesion</button>
					</div>
				</fieldset>
			</form>
		</div>
		</div>
	</div>
</body>
</html>