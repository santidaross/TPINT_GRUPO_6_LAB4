<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Crear cliente</title>
</head>
<body>
<%-- header --%>
<div style="text-align: center;">
 		<h1>Clientes</h1>
        <h2><a href="/alta">Listar clientes</a>
           
        </h2>
        </div>
<%-- fin header --%>
<div align="center">
<form>
<%-- TODO Implementacion para clase cliente 
        <c:if test="${cliente != null}">
            <form action="update" method="post">
        </c:if>
        <c:if test="${cliente == null}">
            <form action="insert" method="post">
        </c:if>
--%>
        <table border="1" cellpadding="5">
            <caption>
                <h2>
<%-- TODO Implementacion para clase cliente 
                    <c:if test="${cliente != null}">
                        Editar cliente
                    </c:if>
                    <c:if test="${cliente == null}">
<--%>
                        Agregar cliente
                        
<%-- TODO Implementacion para clase cliente                     
					</c:if>
<--%>
                </h2>
            </caption>
<%-- TODO Implementacion para clase cliente 
                <c:if test="${cliente != null}">
                    <input type="hidden" name="id" value="<c:out value='${cliente.dni}' />" />
                </c:if>        
<--%>   
            <tr>
                <th>Usuario: </th>
                <td>
                    <input type="text" name="usuario" size="45"
                            value=""
                        />
                </td>
            </tr>
            <tr>
                <th>Password: </th>
                <td>
                    <input type="text" name="password" size="45"
                            value=""
                    />
                </td>
            </tr>
            <tr>
                <th>DNI: </th>
                <td>
                    <input type="text" name="dni" size="30"
                            value=""
                    />
                </td>
            </tr>
            <tr>
                <th>CUIL: </th>
                <td>
                    <input type="text" name="dni" size="30"
                            value=""
                    />
                </td>
            </tr>
            <tr>
                <th>Nombre: </th>
                <td>
                    <input type="text" name="nombre" size="50"
                            value=""
                    />
                </td>
            </tr>
            <tr>
                <th>Apellido: </th>
                <td>
                    <input type="text" name="apellido" size="50"
                            value=""
                    />
                </td>
            </tr>
            <tr>
                <th>Sexo: </th>
                <td>
                    <input type="text" name="sexo" size="30"
                            value=""
                    />
                </td>
            </tr>
            <tr>
                <th>Nacionalidad: </th>
                <td>
                    <input type="text" name="nacionalidad" size="30"
                            value=""
                    />
                </td>
            </tr>
            <tr>
                <th>Dirección: </th>
                <td>
                    <input type="text" name="direccion" size="50"
                            value=""
                    />
                </td>
            </tr>
            <tr>
                <th>Localidad: </th>
                <td>
                    <input type="text" name="localidad" size="30"
                            value=""
                    />
                </td>
            </tr>
            <tr>
                <th>Provincia: </th>
                <td>
                    <input type="text" name="provincia" size="30"
                            value=""
                    />
                </td>
            </tr>
            <tr>
                <th>Correo electronico: </th>
                <td>
                    <input type="text" name="correo_electronico" size="50"
                            value=""
                    />
                </td>
            </tr>
            <tr>
                <th>Telefono: </th>
                <td>
                    <input type="text" name="telefono" size="50"
                            value=""
                    />
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
</body>
</html>