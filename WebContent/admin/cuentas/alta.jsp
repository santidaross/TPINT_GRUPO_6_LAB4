<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/pure/pure-min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/custom.css" />
<meta charset="ISO-8859-1">
<title>Crear cuenta</title>
</head>
<body>
	<div class="contenedor">
		<jsp:include page="/menu.jsp"></jsp:include>
		<div class="main">
			<div class="header">
				<h1>Cuentas</h1>
				<h2>
					<a href="${pageContext.request.contextPath}/admin/cuentas/index.jsp">Listar cuentas</a>
				</h2>
			</div>
			<%-- fin header --%>
			<div class="contenido">
				<form class="pure-form pure-form-aligned">
					<fieldset>
						<div class="pure-control-group">
							<label for="aligned-name">DNI Cliente</label> <input type="text"
								id="aligned-name" placeholder="DNI Cliente" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">CBU</label> <input type="text"
								id="aligned-name" placeholder="CBU" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Numero</label> <input type="text"
								id="aligned-name" placeholder="Numero" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Tipo</label> <select id="tipoCuenta">
								<option>Caja de ahorro</option>
								<option>Cuenta corriente</option>
							</select>
						</div>
						<div class="pure-controls">
							<button type="submit" class="pure-button pure-button-primary">Guardar</button>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</body>
</html>