$( document ).ready(function() {
    EliminarSession();
});

$( "#btnBuscarUsuario" ).click(function() {
    BuscarUsuario();
});

function BuscarUsuario() {        
    var mensajeRespuesta="";
    var usuario = $("#txtUsuario").val();
    var contrasena = $("#txtPassword").val();
    
    if(usuario.trim() =="")
        mensajeRespuesta="Debe de ingresar el usuario";
  
    if(contrasena.trim() =="")
        mensajeRespuesta="Debe de ingresar el contraseña";

    if (mensajeRespuesta != "")
    {
        MensajeAlert("LOGIN",mensajeRespuesta,'red');
        return;
    }    
    Logearse(usuario,contrasena);
}

function Logearse(usuario,contrasena){
    $.ajax({
        type: "POST",
        url: BASE_URL + 'Login/BuscarUsuario',
        data: {
              "usuario"  : usuario ,
              "contrasena" : contrasena , 
        },
        async:true,
        dataType: 'json',
        success: function(valor) {
          console.log(valor);
          debugger;
          if( valor.hasOwnProperty('usuario') ) {
              AgregarSession(valor);
              RedireccionarIngreso();
          }
          else{
              SetearMensajeErrorLogin(valor);
          }
        },
        error: function( jqXhr, textStatus, errorThrown ){
          console.log( jqXhr ); console.log( textStatus ); console.log( errorThrown );
          //MensajeAlert(MODULO_CLIENTE,'Error en la búsqueda de usuario. Detalle Técnico : ' + errorThrown ,'red');
        }
      });
}

function SetearMensajeErrorLogin(mensaje){
    $("#lblMensaje").html(mensaje);
    $('#divMensaje').css('display','block');
    setTimeout(function() {
        $("#divMensaje").fadeOut(1500);
    },3000);
}