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
<title>Crear cliente</title>
</head>
<body>
<%-- header --%>
<div class="contenedor">
<jsp:include page="/menu.jsp"></jsp:include>
<div class="main">
<div class="header">
<h1>Clientes</h1>
        <h2><a href="/alta">Modificar clientes</a></h2>
</div>        
<%-- fin header --%>
<div class="contenido">
<form class="pure-form pure-form-aligned">
					<fieldset>
						<div class="pure-control-group">
							<label for="aligned-name">Usuario</label> <input type="text"
								id="aligned-name" placeholder="Usuario" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Contraseña</label> <input type="text"
								id="aligned-name" placeholder="Contraseña" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">DNI</label> <input type="text"
								id="aligned-name" placeholder="DNI" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">CUIL</label> <input type="text"
								id="aligned-name" placeholder="CUIL" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Nombre</label> <input type="text"
								id="aligned-name" placeholder="Nombre" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Apellido</label> <input type="text"
								id="aligned-name" placeholder="Apellido" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Sexo</label> <select id="selectSexo">
								<option>Hombre</option>
								<option>Mujer</option>
								<option>Otro</option>
							</select>
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Tipo</label> <select
								id="selectNacionalidad">
								<option>Argentina</option>
							</select>
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Provincia</label> <select
								id="selectProvincia">
								<option>Buenos Aires</option>
							</select>
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Localidad</label> <input type="text"
								id="aligned-name" placeholder="Localidad" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Dirección</label> <input type="text"
								id="aligned-name" placeholder="Dirección" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Correo electrónico</label> <input
								type="text" id="aligned-name" placeholder="Correo electrónico" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Teléfono</label> <input type="text"
								id="aligned-name" placeholder="Teléfonos" />
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