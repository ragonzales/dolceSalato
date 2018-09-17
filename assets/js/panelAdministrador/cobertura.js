var tblCoberturas = null;
var MODULO = "MÓDULO DE COBERTURA";

$(document).ready(function () {
    "use strict";
    if ($("#tblCoberturas").length !== 0) {
        tblCoberturas = $("#tblCoberturas").DataTable({ responsive: true })
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
            if (listarCoberturas != null) 
            {
                tblCoberturas.clear().draw();
                listarCoberturas.forEach(function (item) {
                    contador++
                    tblCoberturas.row.add([
                        contador,
                        item.distrito,
                        item.usuariocrea,
                        new Date(item.fechacrea).toLocaleString(),
                        '<center><button type="submit" onclick="BuscarCobertura('+ item.idcobertura + ')" class="btn btn-dark"><i class="fa fa-search"></i>&nbsp;Editar</button></center>',
                        //'<center><button type="submit" onclick="EliminarCoberturaConfirm('+ item.idcobertura + ')" class="btn btn-dark"><i class="fa fa-trash"></i>&nbsp;Eliminar</button></center>',                        
                    ]).draw(false);
                });
            }
            //<i class="fa fa-search" aria-hidden="true"></i>
        },
        error: function (jqXhr, textStatus, errorThrown) {
            console.log(jqXhr); console.log(textStatus); console.log(errorThrown);
            MensajeAlert(MODULO,'Error en la búsqueda de usuario. Detalle Técnico : ' + errorThrown ,'red');
        }
    });
}
function BuscarCobertura(){
    AlertaConfirmacion(MODULO, "PRUEBA", "PRUEBA ERROR")
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
    debugger;
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