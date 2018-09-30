// $( document ).ready(function() {    
// });

$( "#btnSalir" ).click(function() {
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

function MensajeAlert(titulo,mensaje){
    $.gritter.add({
        title: titulo,
        text: mensaje,
        sticky: false,
        class_name: 'my-sticky-class'
    });
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
    amount += '';
    amount = parseFloat(amount.replace(/[^0-9\.]/g, ''));
    decimals = decimals || 0;
    if (isNaN(amount) || amount === 0) return parseFloat(0).toFixed(decimals);  
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
    if (parametro != null && parametro != undefined) valor = parametro;    
    return valor;
}

function ReemplazoNuloMonto(parametro) {
    var valor = 0;
    if (parametro != null && parametro != undefined) valor = parseFloat(parametro);    
    return valor;
}

function sumarDias(fecha, dias){
    fecha.setDate(fecha.getDate() + dias);
    return fecha;
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

function CargarDatatableConFiltros(nombreTabla) {
    return $(nombreTabla).DataTable({
        responsive: true ,
        paging: true,
        filter: true,
        ordering: true,
        info: true,
        language: {
            oPaginate: {
                sNext: "Siguiente",
                sPrevious: "Anterior"
            },
            emptyTable: "No hay registros para los filtros buscados",
            lengthMenu: " Registros _MENU_ ",
            info: "Página _PAGE_ de _PAGES_",
            infoEmpty: "No se encontraron registros",
            emptyTable: "No hay registros para los filtros buscados",
            sLengthMenu: "     _MENU_ registros por pagina",
            sZeroRecords: "No se encontraron registros",
            sInfo: "Mostrando _START_ a _END_ de _TOTAL_ registros",
            sInfoEmpty: "Mostrandro 0 a 0 de 0 registros",
            sInfoFiltered: "(filtrado de _MAX_ registros)",
            sLoadingRecords: "Un momento por favor - cargando...",
            sSearch: "Filtro:",
            sProcessing: "Cargando...",
            // columnDefs: [
            //     {
            //         "targets": 0,
            //         "className": "text-center",
            //         "width": "250px"
            //    }]
        },
        lengthMenu: [10, 20, 30, 40, 50]//,
    });  
}

function CargarDatatableSinFiltros(nombreTabla) {
    return $(nombreTabla).DataTable({
        responsive: true,
        paging: true,
        filter: false,
        ordering: true,
        info: true,
        language: {
            oPaginate: {
                sNext: "Siguiente",
                sPrevious: "Anterior"
            },
            emptyTable: "No hay registros para los filtros buscados",
            lengthMenu: " Registros _MENU_ ",
            info: "Página _PAGE_ de _PAGES_",
            infoEmpty: "No se encontraron registros",
            emptyTable: "No hay registros para los filtros buscados",
            sLengthMenu: "     _MENU_ registros por pagina",
            sZeroRecords: "No se encontraron registros",
            sInfo: "Mostrando _START_ a _END_ de _TOTAL_ registros",
            sInfoEmpty: "Mostrandro 0 a 0 de 0 registros",
            sInfoFiltered: "(filtrado de _MAX_ registros)",
            sLoadingRecords: "Un momento por favor - cargando...",
            sSearch: "Filtro:",
            sProcessing: "Cargando..."
        },
        lengthMenu: [10, 20, 30, 40, 50]//,
    });

}