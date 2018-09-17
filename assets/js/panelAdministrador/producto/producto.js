var MODULO = "MÓDULO DE PRODUCTOS";
//var CONTADOR_PROPORCION = 0;
var tblProductos = null;
var tblProductosProporcion = null;

$(document).ready(function () {
    "use strict";
    // if ($("#tblProductos").length !== 0) {
    // }
    tblProductos = CargarDatatableConFiltros("#tblProductos");
    tblProductosProporcion = CargarDatatableSinFiltros("#tblProductosProporcion");    
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
                        ((producto.nombre == null) ? '' : item.nombre),
                        ((producto.estado == 1) ? 'Activo' : 'Desactivado'),
                        ((producto.usuariocrea == null) ? '' : producto.usuariocrea),
                        ((producto.fechacrea == null) ? '' : new Date(producto.fechacrea).toLocaleString()),
                        ((producto.usuariobaja == null) ? '' : producto.usuariobaja),
                        ((producto.fechabaja == null) ? '' : new Date(producto.fechabaja).toLocaleString()),
                        '<center><button type="submit" class="btn btn-warning">Editar</button></center>',
                    ]).draw(false);
                });
            }
        },
        error: function (jqXhr, textStatus, errorThrown) {
            console.log(jqXhr); console.log(textStatus); console.log(errorThrown);
            MensajeAlert(MODULO,'Error al listar los productos. Detalle Técnico : ' + errorThrown);
        }
    });
}

$("#btnAgregarProporcion").click(function () {
    AgregarProporcion();
});

function AgregarProporcion() {
    var proporcion  = $("#txtProporcion").val().trim();
    var precio      = $("#txtPrecio").val().trim();

    if(proporcion == "" || precio == ""){
        MensajeAlert("MÓDULO DE PRODUCTOS", "Debe de ingresar la proporción y el precio.");
        return;
    }

    tblProductosProporcion.row.add([
        proporcion,
        precio,
        '<center><button type="submit" class="btnprueba btn btn-dark">Eliminar</button></center>',
    ]).draw(false);

    $("#txtProporcion").val('');
    $("#txtPrecio").val('');
}

$('#tblProductosProporcion').on("click", ".btnprueba", function () {
    tblProductosProporcion.row($(this).parents('tr')).remove().draw(false);
});

$("#btnLimpiar").click(function () {
    Limpiar();
});

$("#btnRegistrar").click(function () {
    RegistrarProductos();
});

function Limpiar() {
    $("#dvProporcionProductos").empty();
    $("#txtNombreProducto").val('');
    $("#txtDescripcionCorta").val('');
    $("#txtDescripcionLarga").val('');
    $(".fileinput-remove-button").click();    
    tblProductosProporcion.clear().draw();
    ListarProductos();
}

function RegistrarProductos() {
    var formData = new FormData();
    var $imagen = $("#avatar-1")[0].files;
    var nombre = $("#txtNombreProducto").val().trim();
    var descripcionCorta = $("#txtDescripcionCorta").val().trim();
    var descripcionLarga = $("#txtDescripcionLarga").val().trim();

    if ($imagen.length == 0 || nombre == "" || descripcionCorta == "" || descripcionLarga == ""){
        MensajeAlert(MODULO,"Debe de ingresar el nombre,descripcion corta,descripcion larga");
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
            MensajeAlert(MODULO,'Error al registrar el producto. Detalle Técnico : ' + errorThrown);
        }
    });
}

function RecorrerProporciones() {
    var listaProductosTabla = new Array();
    $("#tblProductosProporcion tbody tr").each(function (index) {
        var proporcion, precio;
        $(this).children("td").each(function (index2) {
            switch (index2) {
                case 0:
                    proporcion = $(this).text();
                    break;
                case 1:
                    precio = $(this).text();
                    break;
            }
        })
        var producto = null;
        producto = ObjetoProductoProporcion(proporcion, precio);
        listaProductosTabla.push(producto);
    })
    return listaProductosTabla;
}

function ObjetoProductoProporcion(proporcion, precio) {
    var producto = new Object();
    producto.proporcion = proporcion;
    producto.precio = precio;
    return producto;
}