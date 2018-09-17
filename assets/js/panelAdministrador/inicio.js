$( document ).ready(function() {
    ObtenerDatosAcceso();
});

function ObtenerDatosAcceso(){
    var session = ObtenerSession();
    if(session !== null)
    {
        $("#spanNombreUsuario").html(session.nombres + " " + session.apellidos);
        $("#lblNombreUsuario").html(session.nombres + " " + session.apellidos);        
    }
    else
    {
        location.href =BASE_URL;
    }
}