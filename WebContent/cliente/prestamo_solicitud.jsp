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
				<h2><a href="${pageContext.request.contextPath}/cliente/prestamo.jsp"></a>Prestamos pendientes</h2>
			</div>
			<div class="contenido">
				<form class="pure-form pure-form-aligned">
					<fieldset>
						<div class="pure-control-group">
							<label for="aligned-name">Importe a solicitar</label> <input type="text"
								id="aligned-name" placeholder="Importe" />
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Plazo en meses</label> <select id="selectSexo">
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
								<option>6</option>
								<option>7</option>
								<option>8</option>
								<option>9</option>
								<option>10</option>
								<option>11</option>
								<option>12</option>
								<option>13</option>
								<option>14</option>
								<option>15</option>
								<option>16</option>
								<option>17</option>
								<option>18</option>
								<option>19</option>
								<option>20</option>
								<option>21</option>
								<option>22</option>
								<option>23</option>
								<option>24</option>
							</select>
						</div>
						<div class="pure-control-group">
							<label for="aligned-name">Cuenta a depositar</label> <select id="selectSexo">
							</select>
						</div>
						<div class="pure-controls">
							<button type="submit" class="pure-button pure-button-primary">Solicitar prestamo</button>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</body>
</html>