$( document ).ready(function() {    
    //ValidarLogin();
});

// function ValidarLogin(){
//     debugger;
//     if(ObtenerSession() == null){
//         location.href = BASE_URL;
//     }
// }

$( "#btnSalir" ).click(function() {
    debugger;
    CerrarSesion();
});

function CerrarSesion(){
    EliminarSession();
    RedireccionarLogin();
}

function RedireccionarIngreso(){
    location.href = BASE_URL + 'Inicio';
}

function RedireccionarLogin(){
    location.href = BASE_URL;
}

function AgregarSession(usuario){
    sessionStorage.setItem("usuario", JSON.stringify(usuario));
}

function EliminarSession(){
    sessionStorage.clear();
}

function ObtenerSession(){
    return JSON.parse(sessionStorage.getItem("usuario"));
}

function validar_email(email) 
{
    var regex = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return regex.test(email) ? true : false;
}

function MensajeAlert(modulo,mensajeRespuesta,color){
  $.dialog({
      title: modulo,
      content: mensajeRespuesta,
      type:color,
      typeAnimated : true
    });
}

function AlertaConfirmacion(MODULO, mensajeContenido, funcionConfirmar, mensajeError){
  $.confirm({
    title: MODULO,
    content: mensajeContenido,
    buttons: {
        confirmar: function () {
          funcionConfirmar();
        },
        cancelar: function () {
          MensajeAlert(MODULO,mensajeError,'blue');
        }
    }
  });
}

function Procesando(functionProcesar){
    var modal = $("#processing-modal");
    EventoModal(modal,'show');
    functionProcesar();
    EventoModal(modal,'hide');
}

function EventoModal(modal,evento){
    modal.modal(evento);
}

function CrearModal(){
    var modal=null;  
    modal = $("#processing-modal");
    return modal;
}

function number_format(amount, decimals) {

    amount += ''; // por si pasan un numero en vez de un string
    amount = parseFloat(amount.replace(/[^0-9\.]/g, '')); // elimino cualquier cosa que no sea numero o punto
  
    decimals = decimals || 0; // por si la variable no fue fue pasada
  
    // si no es un numero o es igual a cero retorno el mismo cero
    if (isNaN(amount) || amount === 0)
        return parseFloat(0).toFixed(decimals);
  
    // si es mayor o menor que cero retorno el valor formateado como numero
    amount = '' + amount.toFixed(decimals);
  
    var amount_parts = amount.split('.'),
    regexp = /(\d+)(\d{3})/;
  
    while (regexp.test(amount_parts[0]))
        amount_parts[0] = amount_parts[0].replace(regexp, '$1' + ',' + '$2');
  
    return amount_parts.join('.');
}

function validarDecimales(e,thix) {
    var keynum = window.event ? window.event.keyCode : e.which;
    if (document.getElementById(thix.id).value.indexOf('.') != -1 && keynum == 46)
        return false;
    if ((keynum == 8 || keynum == 48 || keynum == 46))
        return true;
    if (keynum <= 47 || keynum >= 58) return false;
    return /\d/.test(String.fromCharCode(keynum));
}

function ReemplazoNulo(parametro) {
    var valor = '';
    if (parametro != null && parametro != undefined)
        valor = parametro;
    
    return valor;
}

function ReemplazoNuloMonto(parametro) {
    var valor = 0;
    if (parametro != null && parametro != undefined)
        valor = parseFloat(parametro);
    
    return valor;
}

function sumarDias(fecha, dias){
    fecha.setDate(fecha.getDate() + dias);
    return fecha;
}

function MultiplicarMontos() {
    var precioUnitario = $("#txtPrecioUnitarioModal").val();
    var cantidad= $("#txtCantidadModal").val();
    var precioTotal = 0;
    
    if (cantidad == null || cantidad == undefined)
      cantidad = 0;
  
    if (precioUnitario == null || precioUnitario == undefined)
      precioUnitario = 0;
  
    precioTotal = cantidad * precioUnitario;
    $("#txtPrecioTotalModal").val(number_format(ReemplazoNuloMonto(precioTotal),2));
}

function numeroFormato(num,cantidadCaracteres){
	numtmp='"'+num+'"';
	largo=numtmp.length-2;
	numtmp=numtmp.split('"').join('');
	if(largo==cantidadCaracteres)return numtmp;
	ceros='';
	pendientes=cantidadCaracteres-largo;
	for(i=0;i<pendientes;i++)ceros+='0';
	return ceros+numtmp;
}