<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.info.BBDD.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Seul/Resultados</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header>
		<section class="textos">
			<td><img
				src="imagenes/seul.png" width="600" height="600"></td>
			<nav>
				<a href="index.jsp">Principio</a> <a href="hospedaje.jsp">Hospedaje</a>
				<a href="turismo.jsp">Atracciones Turisticas</a> <a
					href="comida.jsp">Comida Tipica</a> <a href="mapaI.jsp">Mapa
					Interactivo</a> <a href="comollegar.jsp">Como llegar</a>
					<a href="formulario.jsp">Formulario</a>
			</nav>
		</section>
	</header>
	<%
	String nombres=request.getParameter("txtNombre");
	String id=request.getParameter("txtCedula");
	String calf=request.getParameter("cmbQ3");
	
	Usuario use = new Usuario();
	use.ingresarUsuario(nombres, id, calf);
	%>
</body>
</html>