<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Tarea 1</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<style type="text/css">
	.table {
		padding: 7px;
	}
	</style>
</head>
<body>
		<div class="container-fluid">
			<div class="row">
				<div class="col-xl-6">
				<table class="table table-striped table-hover">
					<tr>
						<td> Nombre Aplicacion:</td>
						<td> <input type="text" name="txt-nombre-aplicacion" class="form-control"></td>
					</tr>
					<tr>
						<td>Descripcion:</td>
						<td> <input type="text" name="txt-descripcion" class="form-control "></td>
					</tr>
					<tr>
						<td>Fecha de Publicacion:</td>
						<td> <input type="text" name="txt-fecha" class="form-control "></td>
					</tr>
					<tr>
						<td>Calificacion:</td>
						<td> <input type="text" name="txt-calificacion" class="form-control "></td>
					</tr>
					<tr>
						<td>URL: </td>
						<td> <input type="text" name="txt-url" class="form-control "></td>
					</tr>
					<tr>
						<td>Tamaño de archivo:</td>
						<td> <input type="text" name="txt-tamano" class="form-control "></td>
					</tr>
					<tr>
						<td>Icono:</td>
						<td> 
							<select class="form-control">
								<option value="1">http://localhost/playstore/icono1.png</option>
								<option value="2">http://localhost/playstore/icono2.png</option>
								<option value="3">http://localhost/playstore/icono3.png</option>
								<option value="4">http://localhost/playstore/icono4.png</option>
								<option value="5">http://localhost/playstore/icono5.png</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>Categorias</td>
						<td>
							<label><input type="checkbox" name="chk-categoria[]">Categoria 1</label><br>
							<label><input type="checkbox" name="chk-categoria[]">Categoria 2</label><br>
							<label><input type="checkbox" name="chk-categoria[]">Categoria 3</label><br>
							<label><input type="checkbox" name="chk-categoria[]">Categoria 4</label><br>
						</td>
					</tr>
					<tr>
						<td>Version:</td>
						<td> <input type="text" name="txt-version" class="form-control "></td>
					</tr>
					<tr>
						<td>Fecha de Actualización:</td>
						<td> <input type="text" name="txt-fecha-actualizacion" class="form-control "></td>
					</tr>
					<tr>
						<td>Desarrollador</td>
						<td>
							<select>
								<option value="1"> Desarrollado 1</option>
								<option value="2"> Desarrollado 2</option>
								<option value="3"> Desarrollado 3</option>
								<option value="4"> Desarrollado 4</option>

							</select>
						</td>
					</tr>


				</table>
					<input class="btn btn-primary" type="submit" name="btn-guardar" value="Guardar">
					<input  class="btn btn-warning" type="submit" name="btn-guardar" value="Limpiar">
				</div>
				<div class="col-xl-6">
					este esta del otro lado
				</div>
			


			</div>		
	</div>





	<script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>