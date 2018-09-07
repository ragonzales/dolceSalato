$( document ).ready(function() {
    
});

$( "#btnBuscarUsuario" ).click(function() {
    BuscarUsuario();
});


function BuscarUsuario() {        
    var mensajeRespuesta="";
    var usuario = $("#txtUsuario").val();
    var password = $("#txtPassword").val();
    
    if(usuario.trim() =="")
        mensajeRespuesta="Debe de ingresar el usuario";
  
    if(password.trim() =="")
        mensajeRespuesta="Debe de ingresar el password";

    if (mensajeRespuesta != ""){
        MensajeAlert("LOGIN",mensajeRespuesta,'red');
        return;
    }
    
    console.log(BASE_URL + 'Login/BuscarUsuario');
    
    
    $.ajax({
      type: "POST",
      url: BASE_URL + 'Login/BuscarUsuario',
      data: {
            "usuario"  : usuario ,
            "password" : password , 
      },
      async:true,
      success: function(mensaje) {
        if (mensaje != "")
        {

        }
        else
        {

        }
      },
      error: function( jqXhr, textStatus, errorThrown ){
        console.log( jqXhr ); console.log( textStatus ); console.log( errorThrown );
        //MensajeAlert(MODULO_CLIENTE,'Error en la búsqueda de usuario. Detalle Técnico : ' + errorThrown ,'red');
      }
    });
    }