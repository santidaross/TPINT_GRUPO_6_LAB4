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
<title>Modificar cuenta</title>
</head>
<body>
<div class="contenedor">
		<jsp:include page="/menu.jsp"></jsp:include>
		<div class="main">
			<div class="header">
				<h1>Modificar Cuenta</h1>
				<h2><a href="/alta">Listar cuentas</a></h2>
			</div>
			<%-- fin header --%>
			<div class="contenido"></div>
			<form>
        <table border="1" cellpadding="5">
            <caption>
                <h2>Modificar cuenta</h2>
            </caption>
            <tr>
                <th>Dni cliente: </th>
                <td>
                    <input type="text" name="dni" size="30"
                            value=""
                        />
                </td>
            </tr>
            <tr>
                <th>CBU: </th>
                <td>
                    <input type="text" name="cbu" size="50"
                            value=""
                        />
                </td>
            </tr>
            <tr>
                <th>Numero: </th>
                <td>
                    <input type="text" name="numero" size="30"
                            value=""
                    />
                </td>
            </tr>
            <tr>
                <th>Tipo de cuenta: </th>
                <td>
                    <select id="selectTipoCuenta"></select>
                </td>
            </tr>
            <%---------%>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Guardar" />
                </td>
            </tr>
        </table>
        </form>
		</div>
	</div>
</body>
</html>