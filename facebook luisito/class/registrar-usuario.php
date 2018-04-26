<?php
include("class_conexion.php");
$conexion = new Conexion();
	$sql=sprintf("INSERT INTO tbl_usuarios(nombre_usuario, 
                correo, contrasena, url_imagen_perfil) 
                VALUES ('%s','%s','%s','%s')",
                $_POST["usuario"],
                $_POST["correo"],
                $_POST["contrasena"],
                $_POST["urlImagen"]
                 );
	$conexion->ejecutarInstruccion($sql);
	echo "se guardo con exito :)     ".$_POST["urlImagen"];
	$conexion->cerrarConexion();

	




?>