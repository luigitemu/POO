<?php

	include("class_conexion.php");
	$conexion= new Conexion();//creamos la conexion

	//echo "Se establecio la conexion";
	$sql= 'SELECT codigo_usuario, '.
	'nombre_usuario, correo, contrasena, url_imagen_perfil '.
	'FROM tbl_usuarios';// la instruccion mysql a ejecutar
	
	$respuesta = $conexion->ejecutarInstruccion($sql);//guardamos la instruccion sql

	//$respuestaUsuarios = array(); arreglo para hacer el formato JSon

	$tamano = $conexion->cantidadRegistros($respuesta);
	for ($i=0; $i <$tamano ; $i++) {
		$fila = $conexion->obtenerFila($respuesta);
		
		echo '<div class="col-xs-4 col-sm-2 col-md-2 col-lg-2 card-container">
                <div class="card-profile">
                <button type="button" class="btn btn-primary btn-xs" style="position:absolute;" 
                title="'.$fila['nombre_usuario'].'
                " onclick="seleccionarUsuario('.$fila['codigo_usuario'].',\''.$fila["nombre_usuario"].'\');">
                <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                </button>
                <img src="'.$fila["url_imagen_perfil"].'" class="img-responsive">
                <span class="profile-name">'.$fila["nombre_usuario"].'</span>
                </div>
                </div>';
	}
	
	$conexion->liberarResultado($respuesta);

	$conexion->cerrarConexion();
	
	

?>