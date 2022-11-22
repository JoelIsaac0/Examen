<html>
<head>
<meta charset="UTF-8">
<title>FORMULARIO</title>
</head>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<body>
	<header>
		<section class="textos">
			<td><img src="imagenes/seul.png" width="600" height="600"></td>
			<nav>
				<a href="index.jsp">Principio</a> <a href="hospedaje.jsp">Hospedaje</a>
				<a href="turismo.jsp">Atracciones Turisticas</a> <a
					href="comida.jsp">Comida Tipica</a> <a href="mapaI.jsp">Mapa
					Interactivo</a> <a href="comollegar.jsp">Como llegar</a> <a
					href="formulario.jsp">Formulario</a>
			</nav>
		</section>
	</header>
	<section class="textos">
		<div class="contenido-textos">

			<br>
			<h1>Por favor califique su experiencia</h1>
			

			<form action="resultado.jsp" method="post">


				<tr>
					<h2>Ingrese su nombre :</h2>
					<h2>
						<input type="text" name="txtNombre" required />
					</h2>
				</tr>
				
				<tr>
					<h2>Ingrese su cedula :</h2>
					<h2>
						<input type="text" name="txtCedula" maxlength="10" required />
					</h2>
				</tr>
				
				<tr>
					<td>Calificacion</td>
					<td><select name="cmbQ3">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option></td>
					</select>
				<tr>
					<br>
					<td><input type="submit" /></td>
					<td><input type="reset" /></td>
				</tr>
			</form>
		</div>
	</section>
</body>
</html>