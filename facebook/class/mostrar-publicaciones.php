<?php
    include("class_conexion.php");
    $conexion = new Conexion();
    $codigo =  $_POST["codigo"];
    $sql= "SELECT codigo_publicacion, titulo_publicacion, texto_publicacion, fecha_publicacion ".
    "FROM tbl_publicaciones ".
   	"WHERE codigo_usuario = ".$codigo;

    $respuesta = $conexion->ejecutarInstruccion($sql);

   $tamano = $conexion->cantidadRegistros($respuesta);
    $fila = $conexion->obtenerFila();
    $publicaciones[]=$fila;       
    

   	echo json_encode($publicaciones);

    $respuestaPublicaciones = array();
    

    $conexion->cerrarConexion();
 

?>