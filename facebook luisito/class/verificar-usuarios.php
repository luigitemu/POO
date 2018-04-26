<?php
    include("class_conexion.php");


    $conexion = new Conexion;// creamos la conexion

    $correo = $_POST["correo"];
    $contrasena = $_POST["contrasena"];

   // echo "el correo es ".$correo."la contraseña es ".$contrasena;

    $sql= "SELECT codigo_usuario, nombre_usuario, correo, contrasena, url_imagen_perfil 
    FROM tbl_usuarios 
    WHERE correo 
    LIKE '".$correo."' AND contrasena LIKE '".$contrasena."'";

    $respuesta= $conexion->ejecutarInstruccion($sql);
    $cantidad = $conexion->cantidadRegistros($respuesta);
    echo $cantidad;


?>