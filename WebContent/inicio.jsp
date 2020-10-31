<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/pure/pure-min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css" />
<meta charset="ISO-8859-1">
<title>Iniciar sesión</title>
</head>
<body>
	<div id="contenedor">
		<jsp:include page="/menu.jsp"></jsp:include>
		<div id="main">
			<div class="header">
				<h1>Clientes</h1>
				<h2>
					<a href="/alta">Bienvenido</a>
				</h2>
			</div>
		</div>
	</div>
	<div class="contenido">
		<form class="pure-form pure-form-aligned">
			<fieldset>
				<div class="pure-control-group">
					<label for="aligned-name">Usuario</label> <input type="text"
						id="aligned-name" placeholder="Username" /> <span
						class="pure-form-message-inline"></span>
				</div>
				<div class="pure-control-group">
					<label for="aligned-password">Contraseña</label> <input
						type="password" id="aligned-password" placeholder="Password" />
				</div>
				<div class="pure-controls">
					<label for="aligned-cb" class="pure-checkbox"> <input
						type="checkbox" id="aligned-cb" /> Recordar usuario
					</label>
					<button type="submit" class="pure-button pure-button-primary">Iniciar sesion
					</button>
				</div>
			</fieldset>
		</form>
	</div>
	<c:
</body>
</html>