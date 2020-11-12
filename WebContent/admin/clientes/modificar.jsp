<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        <h2><a href="${pageContext.request.contextPath}/admin/clientes/listar">Listar clientes</a> <a href="${pageContext.request.contextPath}/admin/clientes/alta">Agregar cliente</a></h2>
</div>        
<%-- fin header --%>
<div class="contenido">
<form action="actualizar" class="pure-form pure-form-aligned">
					<fieldset>
						<div class="pure-control-group">
							<label for="aligned-name">Documento</label><input type="text"
								id="aligned-name" placeholder="DNI" value="<c:out value='${cliente.dni}' />" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Usuario</label> <input type="text"
								id="aligned-name" placeholder="Usuario" value="<c:out value='${cliente.username}' />" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Contraseña</label> <input type="text"
								id="aligned-name" placeholder="Contraseña" <%-- value="<c:out value='${cliente.password}' />" --%> />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">CUIL</label> <input type="text"
								id="aligned-name" placeholder="CUIL" value="<c:out value='${cliente.cuil}' />" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Nombre</label> <input type="text"
								id="aligned-name" placeholder="Nombre" value="<c:out value='${cliente.nombre}' />" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Apellido</label> <input type="text"
								id="aligned-name" placeholder="Apellido" value="<c:out value='${cliente.apellido}' />" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Sexo</label> <select id="selectSexo" name="selectSexo">
								<option>Hombre</option>
								<option>Mujer</option>
								<option>Otro</option>
							</select>
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Nacionalidad</label> <input type="text"
								id="aligned-name" placeholder="Nacionalidad" value="<c:out value='${cliente.nacionalidad}'/>"/>
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Provincia</label> <input type="text"
								id="aligned-name" placeholder="Provincia" value="<c:out value='${cliente.provincia}'/>"/>
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Localidad</label> <input type="text"
								id="aligned-name" placeholder="Localidad" value="<c:out value='${cliente.localidad}' />" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Dirección</label> <input type="text"
								id="aligned-name" placeholder="Dirección" value="<c:out value='${cliente.direccion}' />" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Correo electrónico</label> <input
								type="text" id="aligned-name" placeholder="Correo electrónico" value="<c:out value='${cliente.correo_electronico}' />" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Teléfonos</label> <textarea inputmode="tel" placeholder="Telefono 1&#10;Telefono 2&#10;Telefono 3" rows="3" cols=""></textarea> 
							<%--<input type="text"
								id="aligned-name" placeholder="Teléfonos"  value="<c:out value='${cliente.}' />"  />--%>
						</div>
						<div class="pure-controls">
							<button type="submit" class="pure-button pure-button-primary">Modificar</button>
						</div>
					</fieldset>
					
				</form>
    </div>
    </div>
    </div>
</body>
</html>