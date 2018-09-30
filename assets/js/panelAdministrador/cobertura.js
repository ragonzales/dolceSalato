var tblCoberturas = null;
var MODULO = "MÓDULO DE COBERTURA";

$(document).ready(function () {
    "use strict";
    if ($("#tblCoberturas").length !== 0) {
        tblCoberturas = CargarDatatableConFiltros("#tblCoberturas");
    }
    ListarCoberturas();
});

function ListarCoberturas() {
    var contador = 0;
    $.ajax({
        type: "POST",
        url: BASE_URL + 'Coberturas/ListarCoberturas',
        data: {},
        async: true,
        dataType: 'json',
        success: function (listarCoberturas) {
            if (listarCoberturas != null){   
                tblCoberturas.clear().draw();
                listarCoberturas.forEach(function (item) {
                    contador++
                    tblCoberturas.row.add([
                        contador,
                        ((item.distrito == null) ? '' : item.distrito),
                        ((item.activo == 1) ? 'ACTIVO' : 'DESACTIVADO'),
                        ((item.usuariocrea == null) ? '' : item.usuariocrea),
                        ((item.fechacrea == null) ? '' : new Date(item.fechacrea).toLocaleString()),
                        ((item.usuariobaja == null) ? '' : item.usuariobaja),
                        ((item.fechabaja == null) ? '' : new Date(item.fechabaja).toLocaleString()),
                        '<center><button type="submit" onclick="AbrirModalCobertura('+ item.idcobertura + ')" class="btn btn-dark"><i class="fa fa-search"></i>&nbsp;&nbsp;Editar</button></center>',
                    ]).draw(false);
                });
            }
        },
        error: function (jqXhr, textStatus, errorThrown) {
            console.log(jqXhr); console.log(textStatus); console.log(errorThrown);
            MensajeAlert(MODULO,'Error en la búsqueda de usuario. Detalle Técnico : ' + errorThrown ,'red');
        }
    });
}
function AbrirModalCobertura(Idcobertura){
    BuscarCobertura(Idcobertura);
    $('#modalCobertura').modal('toggle');
}

function BuscarCobertura(Idcobertura) {
    $.ajax({
        type: "POST",
        url: BASE_URL + 'Coberturas/BuscarCobertura',
        data: {
            "IdCobertura": Idcobertura
        },
        async: true,
        dataType: 'json',
        success: function (cobertura) {
            AsignarValoresModal(cobertura);
        },
        error: function (jqXhr, textStatus, errorThrown) {
            console.log(jqXhr); console.log(textStatus); console.log(errorThrown);
            MensajeAlert(MODULO, 'Error al registrar la cobertura. Detalle Técnico : ' + errorThrown, 'red');
        }
    });
}

function AsignarValoresModal(cobertura) {
    LimpiarValoresModal();
    $("#txtIdCoberturaEditar").val(cobertura.idcobertura);
    $("#txtCoberturaEditar").val(((cobertura.distrito == null) ? '' : cobertura.distrito));
    $("#txtUsuarioRegistraEditar").val(((cobertura.usuariocrea == null) ? '' : cobertura.usuariocrea));
    $("#txtFechaRegistroEditar").val(((cobertura.fechacrea == null) ? '' : new Date(cobertura.fechacrea).toLocaleString()));
    $("#txtUsuarioBajaEditar").val(((cobertura.usuariobaja == null) ? '' : cobertura.usuariobaja));
    $("#txtFechaBajaEditar").val(((cobertura.fechabaja == null) ? '' : new Date(cobertura.fechabaja).toLocaleString()));
    if (cobertura.activo == 1){  
        $("#switcher_checkbox_5").prop('checked', true);
    }else{
        $("#switcher_checkbox_5").prop('checked', false);
    }
}

function LimpiarValoresModal() {    
    $("#txtIdCoberturaEditar").val('');
    $("#txtCoberturaEditar").val('');
    $("#txtUsuarioRegistraEditar").val('');
    $("#txtFechaRegistroEditar").val('');
    $("#txtUsuarioBajaEditar").val('');
    $("#txtFechaBajaEditar").val('');
    $("#switcher_checkbox_5").prop('checked',false);    
}

function RegistrarCobertura() {
    var session = ObtenerSession();
    
    $.ajax({
        type: "POST",
        url: BASE_URL + 'Coberturas/RegistrarCobertura',
        data: {
                "distrito"    : $("#txtDistrito").val().trim() ,
                "usuarioCrea" : session.usuario ,
        },
        async: true,
        dataType: 'json',
        success: function (respuesta) {
            if(respuesta){
                $("#txtDistrito").val('');
                MensajeAlert("MÓDULO DE COBERTURA","Se registró la cobertura del distrito");
            }
            else
            {
                MensajeAlert("MÓDULO DE COBERTURA","No se pudo registrar la cobertura del distrito");
            }
        },
        error: function (jqXhr, textStatus, errorThrown) {
            console.log(jqXhr); console.log(textStatus); console.log(errorThrown);
            MensajeAlert(MODULO,'Error al registrar la cobertura. Detalle Técnico : ' + errorThrown ,'red');
        }
    });
}

$("#btnRegistrar").click(function () {
    var cobertura = $("#txtDistrito").val().trim();
    if(cobertura != "")
    {
        RegistrarCobertura();
        ListarCoberturas();
    }
    else
    {
        MensajeAlert("MÓDULO DE COBERTURA","Debe de ingresar la cobertura del distrito");
    }
});

$("#btnActualizar").click(function () {
    var cobertura = $("#txtCoberturaEditar").val().trim();
    if (cobertura != "") {
        ActualizarInformaciónCobertura();
        $('#modalCobertura').modal('hide');
    }
    else {
        MensajeAlert("MÓDULO DE COBERTURA", "Debe de ingresar la cobertura a modificar");
    }
});

function ActualizarInformaciónCobertura() {
    var session = ObtenerSession();
    var dataJson = {
        "IdCobertura": $("#txtIdCoberturaEditar").val().trim(),
        "cobertura": $("#txtCoberturaEditar").val().trim(),
        "usuario": session.usuario,
        "estado": (($("#switcher_checkbox_5").is(':checked')) ? 1 : 0),
    };

    $.ajax({
        type: "POST",
        url: BASE_URL + 'Coberturas/ActualizarCobertura',
        data: dataJson,
        async: true,
        dataType: 'json',
        success: function (respuesta) {
            if (respuesta) {
                MensajeAlert("MÓDULO DE COBERTURA", "Se actualizó la información de la cobertura.");
                ListarCoberturas();
            }
            else {
                MensajeAlert("MÓDULO DE COBERTURA", "No se pudo actualizar la información de la cobertura.");
            }
        },
        error: function (jqXhr, textStatus, errorThrown) {
            console.log(jqXhr); console.log(textStatus); console.log(errorThrown);
            MensajeAlert(MODULO, 'Error al registrar la cobertura. Detalle Técnico : ' + errorThrown, 'red');
        }
    });
}