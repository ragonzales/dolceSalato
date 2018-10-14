var MODULO = "MÓDULO DE PRODUCTOS";
//var CONTADOR_PROPORCION = 0;
var tblProductos = null;
var tblProductosProporcion = null;

$(document).ready(function () {
    "use strict";
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
            tblProductos.clear().draw();
            if (listaProductos != null) {
                listaProductos.forEach(function (producto) {                    
                    var checked = ((producto.estado == 1) ? 'checked' : ''); 
                    contador++
                    tblProductos.row.add([
                        contador,
                        ((producto.nombre == null) ? '' : producto.nombre),
                        ((producto.usuariocrea == null) ? '' : producto.usuariocrea),
                        ((producto.fecharegistro == null) ? '' : new Date(producto.fecharegistro).toLocaleString()),
                        ((producto.usuariobaja == null) ? '' : producto.usuariobaja),
                        ((producto.fechabaja == null) ? '' : new Date(producto.fechabaja).toLocaleString()),
                        '<label class="switch">'+
                        '<input type="checkbox" class= "success" onchange="CambiarEstadoProducto(' + producto.idproducto + ',this)"' + checked + '/>' +
                        '<span class="slider round"></span>',
                        '<center><button type="submit" onclick="BuscarProducto(' + producto.idproducto + ')" class="btn btn-dark"><i class="fa fa-search"></i>&nbsp;Editar</button></center>', 
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

function BuscarProducto(IdProducto) {
    Limpiar();
    $.ajax({
        type: "POST",
        url: BASE_URL + 'Productos/BuscarProducto',
        data: {
            "IdProducto": IdProducto
        },
        async: true,
        dataType: 'json',
        success: function (producto) {
            AsignarProducto(producto)
            BuscarProductoProporciones(IdProducto);
        },
        error: function (jqXhr, textStatus, errorThrown) {
            console.log(jqXhr); console.log(textStatus); console.log(errorThrown);
            MensajeAlert(MODULO, 'Error al buscar el producto. Detalle Técnico : ' + errorThrown);
        }
    });
}

function BuscarProductoProporciones(IdProducto) {
    $.ajax({
        type: "POST",
        url: BASE_URL + 'Productos/BuscarProductoProporciones',
        data: {
            "IdProducto": IdProducto
        },
        async: true,
        dataType: 'json',
        success: function (listadoPoporciones) {
            console.log(listadoPoporciones);
            AsignarListadoProporciones(listadoPoporciones);         
        },
        error: function (jqXhr, textStatus, errorThrown) {
            console.log(jqXhr); console.log(textStatus); console.log(errorThrown);
            MensajeAlert(MODULO, 'Error al listar las proporciones del producto. Detalle Técnico : ' + errorThrown);
        }
    });
}

function AsignarListadoProporciones(listadoPoporciones) {    
    if (listadoPoporciones != null) {
        listadoPoporciones.forEach(function (producto) {
            tblProductosProporcion.row.add([
                producto.proporcion,
                producto.precio,
                '<center><button type="submit" class="btnEliminar btn btn-dark">Eliminar</button></center>',
            ]).draw(false);
        });
    }
}

function AsignarProducto(producto) {    
    $("#txtDestacado").prop("checked",((producto.destacado == "0") ? false : true))
    $("#btnRegistrar").text("MODIFICAR");
    $("#btnRegistrar").removeClass("btn btn-warning").addClass("btn btn-default");
    $("#txtIdProducto").val(producto.idproducto);
    $("#txtNombreProducto").val(producto.nombre);
    $("#txtDescripcionCorta").val(producto.descripcioncorta);
    $("#txtDescuento").val(producto.descuento);
    $("#txtDescripcionLarga").val(producto.descripcionlarga);
    if(producto.rutafoto != null) $("#imgProducto").attr("src", (producto.rutafoto));   //.substring(1, producto.rutafoto.length
}

function CambiarEstadoProducto(IdProducto,element) {
    var session = ObtenerSession();

    $.ajax({
        type: "POST",
        url: BASE_URL + 'Productos/ActualizarEstadoProducto',
        data:{ 
                "IdProducto" : IdProducto,
                "estado"     : (($(element).is(':checked')) ? 1 : 0),
                "usuario"    : session.usuario,
             },
        async: true,
        dataType: 'json',
        success: function (respuesta) {
            ListarProductos();
            MensajeAlert("MÓDULO DE PRODUCTOS", "Se actualizó el estado del producto");         
        },
        error: function (jqXhr, textStatus, errorThrown) {
            console.log(jqXhr); console.log(textStatus); console.log(errorThrown);
            MensajeAlert(MODULO, 'Error al listar los productos. Detalle Técnico : ' + errorThrown);
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
        '<center><button type="submit" class="btnEliminar btn btn-dark">Eliminar</button></center>',
    ]).draw(false);

    $("#txtProporcion").val('');
    $("#txtPrecio").val('');
}

$('#tblProductosProporcion').on("click", ".btnEliminar", function () {
    tblProductosProporcion.row($(this).parents('tr')).remove().draw(false);
});

$("#btnLimpiar").click(function () {
    Limpiar();
});

$("#btnRegistrar").click(function () {
    if ($(this).text() == "MODIFICAR")
    {
        ModificarProductos();
    }

    if ($(this).text() == "REGISTRAR") {
        RegistrarProductos();
    }    
});

function ModificarProductos() {
    var formData = new FormData();
    var session = ObtenerSession();
    var $imagen = $("#avatar-1")[0].files;
    var nombre = $("#txtNombreProducto").val().trim();
    var descripcionCorta = $("#txtDescripcionCorta").val().trim();
    var descripcionLarga = $("#txtDescripcionLarga").val().trim();
    var IdProducto = $("#txtIdProducto").val().trim();
    var descuento = $("#txtDescuento").val().trim();
    var destacado = (($('#txtDestacado').prop('checked') == false) ? 0 : 1);

    console.log(destacado);    

    if (nombre == "") {
        MensajeAlert(MODULO, "Debe de ingresar el nombre,descripcion corta,descripcion larga");
        return;
    }
    
    var listado = JSON.stringify(RecorrerProporciones());
    formData.append('IdProducto', IdProducto);
    formData.append('usuario', session.usuario);
    formData.append('nombreProducto', nombre);
    formData.append('descripcionCorta', descripcionCorta);
    formData.append('descripcionLarga', descripcionLarga);
    formData.append('listadoProporciones', listado);
    formData.append('IdCategoria', CATEGORIA);
    formData.append('destacado', destacado);
    formData.append('descuento', descuento);

    if ($imagen.length == 0){
        formData.append('foto', null);
    }
    else
    {
        formData.append('foto', $imagen[0]);
    }    

    $.ajax({
        type: "POST",
        url: BASE_URL + 'Productos/ModificarProductos',
        data: formData,
        type: 'POST',
        contentType: false,
        processData: false,
        success: function (resultados) {
            console.log("Petición terminada. Resultados " + resultados);
            if (resultados) {
                MensajeAlert(MODULO, "Se modificó el producto");
            }
            else {
                MensajeAlert(MODULO, "No se pudo modificar el producto");
            }
            Limpiar();
            ListarProductos();
        },
        error: function (jqXhr, textStatus, errorThrown) {
            console.log(jqXhr); console.log(textStatus); console.log(errorThrown);
            MensajeAlert(MODULO, 'Error al registrar el producto. Detalle Técnico : ' + errorThrown);
        }
    });
}

function Limpiar() {
    $("#btnRegistrar").text("REGISTRAR");  
    $("#btnRegistrar").removeClass("btn btn-success").addClass("btn btn-warning");
    $("#dvProporcionProductos").empty();
    $("#txtIdProducto").val('');
    $("#txtNombreProducto").val('');
    $("#txtDescripcionCorta").val('');
    $("#txtDescripcionLarga").val('');
    $("#txtDestacado").prop("checked",false);
    $(".fileinput-remove-button").click();
    $("#txtProporcion").val('');
    $("#txtPrecio").val('');
    $("#txtDescuento").val('');
    tblProductosProporcion.clear().draw();
    ListarProductos();
}

function RegistrarProductos() {
    var formData = new FormData();
    var session = ObtenerSession();
    var $imagen = $("#avatar-1")[0].files;
    var nombre = $("#txtNombreProducto").val().trim();
    var descripcionCorta = $("#txtDescripcionCorta").val().trim();
    var descripcionLarga = $("#txtDescripcionLarga").val().trim();
    var destacado = (($('#txtDestacado').prop('checked') == false) ? 0 : 1);
    var descuento = $("#txtDescuento").val().trim();

    if ($imagen.length == 0) {
        MensajeAlert(MODULO, "Debe de ingresar la imagen del producto");
        return;
    }

    if (nombre == "") {
        MensajeAlert(MODULO, "Debe de ingresar el nombre,descripcion corta,descripcion larga");
        return;
    }
    
    var listado = JSON.stringify(RecorrerProporciones());    
    formData.append('usuario', session.usuario);
    formData.append('nombreProducto', nombre);
    formData.append('descripcionCorta', descripcionCorta);
    formData.append('descripcionLarga', descripcionLarga);       
    formData.append('listadoProporciones', listado);
    formData.append('IdCategoria', CATEGORIA);
    formData.append('destacado', destacado);
    formData.append('descuento', descuento);
    formData.append('foto', $imagen[0]);

    $.ajax({
        type: "POST",
        url: BASE_URL + 'Productos/RegistrarProductos',
        data: formData,
        type: 'POST',
        contentType: false,
        processData: false,
        success: function (resultados) {
            console.log("Petición terminada. Resultados " + resultados);
            if(resultados){
                MensajeAlert(MODULO, "Se registro el producto");
            }
            else{
                MensajeAlert(MODULO, "No se pudo registrar el producto");
            }
            Limpiar();
            ListarProductos();
        },
        error: function (jqXhr, textStatus, errorThrown) {
            console.log(jqXhr); console.log(textStatus); console.log(errorThrown);
            MensajeAlert(MODULO,'Error al registrar el producto. Detalle Técnico : ' + errorThrown);
        }
    });
}

function RecorrerProporciones() {
    var listaProductosTabla = null;
    var contador = 0;
    $("#tblProductosProporcion tbody tr").each(function (index) {
        var proporcion, precio;
        if(contador==0){
            listaProductosTabla = new Array();
        }
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
        if (proporcion != 'No hay registros para los filtros buscados'){
            var producto = null;
            producto = ObjetoProductoProporcion(proporcion, precio);
            listaProductosTabla.push(producto);
        }
        contador++;
    })
    return listaProductosTabla;
}

function ObjetoProductoProporcion(proporcion, precio) {
    var producto = new Object();
    producto.proporcion = proporcion;
    producto.precio = precio;
    return producto;
}