
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:useBean id="sesionUsuario" scope="session" class="entidad.Usuario" />
<!-- MENU -->
<div id="menu">
	<div class="pure-menu">
		<a href="${pageContext.request.contextPath}/inicio.jsp"
			class="pure-menu-heading">INICIO</a>
		<ul class="pure-menu-list">
			<li class="pure-menu-item menu-item-divided">
			<li class="pure-menu-item"><a
				href="${pageContext.request.contextPath}/cliente/perfil.jsp"
				class="pure-menu-link" style="color:white;">${sessionUsuario.username}</a></li>
				<li class="pure-menu-item"><a
				href="${pageContext.request.contextPath}/cliente/cuentas.jsp"
				class="pure-menu-link">Cuentas</a></li>
			<li class="pure-menu-item"><a
				href="${pageContext.request.contextPath}/cliente/movimientos.jsp"
				class="pure-menu-link">Movimientos</a></li>
			<li class="pure-menu-item"><a
				href="${pageContext.request.contextPath}/cliente/prestamo.jsp"
				class="pure-menu-link">Prestamos</a></li>
			<li class="pure-menu-item"><a
				href="${pageContext.request.contextPath}/cliente/transferencia.jsp"
				class="pure-menu-link">Transferencias</a></li>
			<li class="pure-menu-item"><a
				href="${pageContext.request.contextPath}/cliente/reportes.jsp"
				class="pure-menu-link">Reportes</a></li>
			<li class="pure-menu-item menu-item-divided"><a href="${pageContext.request.contextPath}/logout"
				class="pure-menu-link">Cerrar sesión</a></li>
		</ul>
		</li>
	</div>
	<c:if test="${sesionUsuario.tipo == '1'}">
		<div class="pure-menu">
			<ul class="pure-menu-list">
			<li class="pure-menu-item"><span class="pure-menu-heading">Administracion</span>
				<li class="pure-menu-item"><a
					href="${pageContext.request.contextPath}/admin/clientes/"
					class="pure-menu-link">Clientes</a></li>
				<li class="pure-menu-item"><a
					href="${pageContext.request.contextPath}/admin/cuentas/"
					class="pure-menu-link">Cuentas</a></li>
				<li class="pure-menu-item"><a
					href="${pageContext.request.contextPath}/admin/prestamos/"
					class="pure-menu-link">Prestamos</a></li>
				<li class="pure-menu-item"><a
					href="${pageContext.request.contextPath}/admin/reportes/"
					class="pure-menu-link">Reportes</a></li>
				</li>
			</ul>
		</c:if>
		<!-- <div class="menu_foot_title">Grupo 6 © 2020</div> -->
	</div>
</div>
<!-- FIN MENU -->
