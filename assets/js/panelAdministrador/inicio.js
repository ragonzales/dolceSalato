$( document ).ready(function() {
    ObtenerDatosAcceso();
});


function ObtenerDatosAcceso(){
    var session = ObtenerSession();
    console.log(session);
    if(session !== null){
        $("#spanNombreUsuario").html(session.nombres + " " + session.apellidos);
        $("#lblNombreUsuario").html(session.nombres + " " + session.apellidos);        
    }
}