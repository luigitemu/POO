function seleccionarUsuario(codigoUsuario, nombreUsuario) {
    //alert("Codigo: " + codigoUsuario + ", Nombre: " + nombreUsuario);
    $('#txt-id-usuario').attr("value", codigoUsuario);
    $('#txt-nombre').attr("value", nombreUsuario);
    var contenido = "codigo=" + $('#txt-id-usuario').val();
    $.ajax({
        url: "class/mostrar-publicaciones.php",
        method: "POST",
        dataType: "json",
        data: contenido,
        success: function(respuesta) {


        }


    });


}

function agregarAmigo(codigoNuevoAmigo) {
    alert("Codigo nuevo amigo: " + codigoNuevoAmigo);
}
$(document).ready(function() {
    $("#btn-tengo-hambre").click(function(e) {
        e.preventDefault();
        alert("Puede tomar 5 minutos e ir donde don Tito a comprar algo, me trae.");
    });
    $("#btn-ir-banio").click(function(e) {
        e.preventDefault();
        alert("Vaya, solamente deje su telefono en el escritorio.");
    });

    $.ajax({
        url: 'class/mostrar-usuarios.php',
        //dataType: "json",
        success: function(respuesta) {
            //alert(respuesta);
            $('#cargar-tarjetas').append(respuesta);
        }

    });

});


//verificar usuarios
$("#btn-login").click(function() {
    var parametros = "correo=" + $('#txt-email').val() + "&" +
        "contrasena=" + $('#txt-password').val();
    $.ajax({
        url: 'class/verificar-usuarios.php',
        method: 'POST',
        data: parametros,
        success: function(respuesta) {

            if (respuesta == 0) {
                $("#verificacion-usuarios").html("no hay un registro");
            } else {
                $("#verificacion-usuarios").html("hay un registro :)");
            }




        }

    });
});







//funcion registrar
$('#btn-registrar').click(function() {

    var datos = "usuario=" + $('#txt-usuario').val() + "&" +
        "correo=" + $('#txt-correo').val() + "&" +
        "contrasena=" + $('#txt-contrasena').val() + "&" +
        "urlImagen=" + $('#slc-url-imagen option:selected').text();
    alert("se enviarara " + datos);
    $.ajax({
        url: 'class/registrar-usuario.php',
        method: 'POST',
        data: datos,
        success: function(respuesta) {
            alert(respuesta);
        }
    });


});