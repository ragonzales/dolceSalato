var MODULO = "MÓDULO DE PROMOCIONES";
var tblPromociones = null;

$(document).ready(function () {
    "use strict";
    tblPromociones = CargarDatatableConFiltros("#tblPromociones");
    ListarPromociones();
});

function ListarPromociones() {
    var contador = 0;
    $.ajax({
        type: "POST",
        url: BASE_URL + 'Promocion/ListarPromociones',
        data: {},
        async: true,
        dataType: 'json',
        success: function (listaPromociones) {
            tblPromociones.clear().draw();
            if (listaPromociones != null) {
                listaPromociones.forEach(function (promocion) {                    
                    var checked = ((promocion.estado == 1) ? 'checked' : ''); 
                    contador++
                    tblPromociones.row.add([
                        contador,
                        ((promocion.titulo == null) ? '' : promocion.titulo),
                        ((promocion.usuarioregistro == null) ? '' : promocion.usuarioregistro),
                        ((promocion.fecharegistro == null) ? '' : new Date(promocion.fecharegistro).toLocaleString()),
                        ((promocion.usuariobaja == null) ? '' : promocion.usuariobaja),
                        ((promocion.fechabaja == null) ? '' : new Date(promocion.fechabaja).toLocaleString()),
                        '<label class="switch">'+
                        '<input type="checkbox" class= "success" onchange="CambiarEstadoPromocion(' + promocion.idpromocion + ',this)"' + checked + '/>' +
                        '<span class="slider round"></span>',
                        '<center><button type="submit" onclick="BuscarPromocion(' + promocion.idpromocion + ')" class="btn btn-dark"><i class="fa fa-search"></i>&nbsp;Editar</button></center>', 
                    ]).draw(false);
                });
            }
        },
        error: function (jqXhr, textStatus, errorThrown) {
            console.log(jqXhr); console.log(textStatus); console.log(errorThrown);
            MensajeAlert(MODULO,'Error al listar las promociones. Detalle Técnico : ' + errorThrown);
        }
    });
}

function BuscarPromocion(IdPromocion) {
    Limpiar();

    $.ajax({
        type: "POST",
        url: BASE_URL + 'Promocion/BuscarPromocion',
        data: {
            "IdPromocion": IdPromocion
        },
        async: true,
        dataType: 'json',
        success: function (promocion) {
            AsignarPromocion(promocion)
        },
        error: function (jqXhr, textStatus, errorThrown) {
            console.log(jqXhr); console.log(textStatus); console.log(errorThrown);
            MensajeAlert(MODULO, 'Error al buscar el banner. Detalle Técnico : ' + errorThrown);
        }
    });
}

function AsignarPromocion(promocion) {
    $("#btnRegistrar").text("MODIFICAR");
    $("#btnRegistrar").removeClass("btn btn-warning").addClass("btn btn-default");
    $("#txtIdPromocion").val(promocion.idpromocion);
    $("#txtTitulo").val(promocion.titulo);
    $("#txtDescripcionCorta").val(promocion.descripcioncorta);
    $("#txtMensaje").val(promocion.mensaje);
    $("#txtAlineacion").val(promocion.alineacion);
    if(promocion.rutafoto != null) $("#imgProducto").attr("src", promocion.rutafoto);
}

function CambiarEstadoPromocion(IdPromocion,element) {
    var session = ObtenerSession();

    $.ajax({
        type: "POST",
        url: BASE_URL + 'Promocion/ActualizarEstadoPromocion',
        data:{ 
                "IdPromocion" : IdPromocion,
                "estado"     : (($(element).is(':checked')) ? 1 : 0),
                "usuario"    : session.usuario,
             },
        async: true,
        dataType: 'json',
        success: function (respuesta) {
            ListarPromociones();
            MensajeAlert(MODULO, "Se actualizó el estado de la promoción");         
        },
        error: function (jqXhr, textStatus, errorThrown) {
            console.log(jqXhr); console.log(textStatus); console.log(errorThrown);
            MensajeAlert(MODULO, 'Error al cambiar el estado del banner. Detalle Técnico : ' + errorThrown);
        }
    });
}

$("#btnLimpiar").click(function () {
    Limpiar();
});

$("#btnRegistrar").click(function () {
    if ($(this).text() == "MODIFICAR")
    {
        ModificarPromocion();
    }

    if ($(this).text() == "REGISTRAR") {
        RegistrarPromocion();
    }    
});

function ModificarPromocion() {
    var formData = new FormData();
    var session = ObtenerSession();
    var $imagen = $("#avatar-1")[0].files;
    var titulo = $("#txtTitulo").val().trim();
    var descripcionCorta = $("#txtDescripcionCorta").val().trim();
    var mensaje = $("#txtMensaje").val().trim();
    var IdPromocion = $("#txtIdPromocion").val().trim();
    var alineacion = parseInt($("#txtAlineacion").val());
   
    formData.append('IdPromocion', IdPromocion);
    formData.append('descripcionCorta', descripcionCorta);
    formData.append('usuario', session.usuario);
    formData.append('alineacion', alineacion);
    formData.append('mensaje', mensaje);
    formData.append('foto', $imagen[0]);
    formData.append('titulo', titulo);

    if ($imagen.length == 0){
        formData.append('foto', null);
    }
    else
    {
        formData.append('foto', $imagen[0]);
    }    

    $.ajax({
        type: "POST",
        url: BASE_URL + 'Promocion/ModificarPromocion',
        data: formData,
        type: 'POST',
        contentType: false,
        processData: false,
        success: function (resultados) {
            console.log("Petición terminada. Resultados " + resultados);
            if (resultados) {
                MensajeAlert(MODULO, "Se modificó el banner");
            }
            else {
                MensajeAlert(MODULO, "No se pudo modificar el banner");
            }
            Limpiar();
            ListarPromociones();
        },
        error: function (jqXhr, textStatus, errorThrown) {
            console.log(jqXhr); console.log(textStatus); console.log(errorThrown);
            MensajeAlert(MODULO, 'Error al modificar el banner. Detalle Técnico : ' + errorThrown);
        }
    });
}

function Limpiar() {
    $("#btnRegistrar").text("REGISTRAR");  
    $("#btnRegistrar").removeClass("btn btn-success").addClass("btn btn-warning");
    $("#txtIdPromocion").val('');
    $("#txtTitulo").val('');
    $("#txtDescripcionCorta").val('');
    $("#txtMensaje").val('');
    $("#txtAlineacion").val('0');
    $(".fileinput-remove-button").click();
    ListarPromociones();
}

function RegistrarPromocion() {
    var formData = new FormData();
    var session = ObtenerSession();
    var $imagen = $("#avatar-1")[0].files;
    var titulo = $("#txtTitulo").val().trim();
    var descripcionCorta = $("#txtDescripcionCorta").val().trim();
    var mensaje = $("#txtMensaje").val().trim();
    var alineacion = parseInt($("#txtAlineacion").val());
    
    if ($imagen.length == 0) {
        MensajeAlert(MODULO, "Debe de ingresar la imagen del banner");
        return;
    }
    
    formData.append('descripcionCorta', descripcionCorta);
    formData.append('usuario', session.usuario);
    formData.append('alineacion', alineacion);
    formData.append('mensaje', mensaje);
    formData.append('foto', $imagen[0]);
    formData.append('titulo', titulo);
    
    $.ajax({
        type: "POST",
        url: BASE_URL + 'Promocion/RegistrarPromocion',
        data: formData,
        type: 'POST',
        contentType: false,
        processData: false,
        success: function (resultados) {
            console.log("Petición terminada. Resultados " + resultados);
            if(resultados){
                MensajeAlert(MODULO, "Se registro el banner");
            }
            else{
                MensajeAlert(MODULO, "No se pudo registrar el banner");
            }
            Limpiar();
            ListarPromociones();
        },
        error: function (jqXhr, textStatus, errorThrown) {
            console.log(jqXhr); console.log(textStatus); console.log(errorThrown);
            MensajeAlert(MODULO,'Error al registrar el banner. Detalle Técnico : ' + errorThrown);
        }
    });
}