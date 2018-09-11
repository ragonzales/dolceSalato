var CONTADOR_PROPORCION = 0;

$(document).ready(function () {
    "use strict";
    if ($("#tblProductos").length !== 0) {
        tblProductos = $("#tblProductos").DataTable({ responsive: true })
    }
    
    ListarProductos();
});

function ListarProductos() {
    var contador = 0;
    $.ajax({
        type: "POST",
        url: BASE_URL + 'Productos/ListarProductos',
        data: { "categoria": CATEGORIA },
        async: true,
        dataType: 'json',
        success: function (listaProductos) {
            if (listaProductos != null) {
                listaProductos.forEach(function (producto) {
                    contador++
                    tblProductos.row.add([
                        contador,
                        producto.nombre,
                        producto.descripcioncorta,
                        producto.usuariocrea,
                        producto.fecharegistro,
                        '<center><button type="submit" class="btn btn-warning">Eliminar</button></center>',
                        '<center><button type="submit" class="btn btn-primary">Editar</button></center>',
                    ]).draw(false);
                });
            }
        },
        error: function (jqXhr, textStatus, errorThrown) {
            console.log(jqXhr); console.log(textStatus); console.log(errorThrown);
            //MensajeAlert(MODULO_CLIENTE,'Error en la búsqueda de usuario. Detalle Técnico : ' + errorThrown ,'red');
        }
    });
}

$("#btnAgregarProporcion").click(function () {
    AgregarProporcion();
});

function AgregarProporcion() {
    CONTADOR_PROPORCION++;
    var divProporcion = '';
    var divID = "dv" + CONTADOR_PROPORCION;
    divProporcion += '<div id = "' + divID + '">';
    divProporcion += '<div class="col-sm-12">'
    divProporcion += '<div class="col-sm-4">'
    divProporcion += '<input type="text" class="form-control" name="text" required>'
    divProporcion += '</div>'
    divProporcion += '<div class="col-sm-6">'
    divProporcion += '<button class="btnEliminar btn bg-danger" contador="' + divID + '" ><i class="fa fa-trash"> Eliminar</i></button>'
    divProporcion += '</div>'
    divProporcion += '</div>'
    divProporcion += '</br></br></br>'
    divProporcion += '</div>';
    $("#dvProporcionProductos").append(divProporcion);

    $(".btnEliminar").click(function () {
        debugger;
        var contador = $(this).attr('contador');
        $("#" + contador).remove();
    });
}

$("#btnLimpiar").click(function () {
    Limpiar();
});

$("#btnRegistrar").click(function () {
    console.log("ASDASDASD");
    RegistrarProductos();
});

function Limpiar() {
    $("#dvProporcionProductos").empty();
    $("#txtNombreProducto").val('');
    $("#txtDescripcionCorta").val('');
    $("#txtDescripcionLarga").val('');
    $(".fileinput-remove-button").click();
}

function RegistrarProductos() {
    var formData = new FormData();
    var $imagen = $("#avatar-1")[0].files;
    var nombre = $("#txtNombreProducto").val().trim();
    var descripcionCorta = $("#txtDescripcionCorta").val().trim();
    var descripcionLarga = $("#txtDescripcionLarga").val().trim();

    if ($imagen.length == 0 || nombre == "" || descripcionCorta == "" || descripcionLarga == ""){
        alert("INGRESE");
        return;
    }

    formData.append('nombreProducto', nombre);
    formData.append('descripcionCorta', descripcionCorta);
    formData.append('descripcionLarga', descripcionLarga);       
    formData.append('listadoProporciones', RecorrerProporciones());
    formData.append('categoria', CATEGORIA);
    formData.append('foto', $imagen[0]);

    $.ajax({
        type: "POST",
        url: BASE_URL + 'Productos/RegistrarProductos',
        data: formData,
        type: 'POST',
        contentType: false,
        processData: false,
        success: function (resultados) {
            console.log("Petición terminada. Resultados" + resultados);
        },
        error: function (jqXhr, textStatus, errorThrown) {
            console.log(jqXhr); console.log(textStatus); console.log(errorThrown);
            //MensajeAlert(MODULO_CLIENTE,'Error en la búsqueda de usuario. Detalle Técnico : ' + errorThrown ,'red');
        }
    });

    //return data;
}

function RecorrerProporciones() {
    
}