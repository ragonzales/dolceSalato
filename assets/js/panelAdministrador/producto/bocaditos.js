var CONTADOR_PROPORCION = 0;
$( document ).ready(function() {
    ListarProductos();
    //AgregarProporcion();
});

function ListarProductos(){
  var contador = 0;
    $.ajax({
      type: "POST",
      url: BASE_URL + 'Productos/ListarProductos',
      data: {"categoria"  : 1},
      async:true,
      dataType: 'json',
      success: function(listaProductos) {
        if(listaProductos != null)
        {
          listaProductos.forEach(function(producto) {
            contador++
            tblProductos.row.add( [
              contador,
              producto.nombre,
              producto.descripcioncorta,
              producto.usuariocrea,
              producto.fecharegistro,
              '<center><button type="submit" class="btn btn-warning">Eliminar</button></center>',
              '<center><button type="submit" class="btn btn-primary">Editar</button></center>',                
          ] ).draw( false );
          });
        }
      },
      error: function( jqXhr, textStatus, errorThrown ){
        console.log( jqXhr ); console.log( textStatus ); console.log( errorThrown );
        //MensajeAlert(MODULO_CLIENTE,'Error en la búsqueda de usuario. Detalle Técnico : ' + errorThrown ,'red');
      }
    });
}

$( "#btnAgregarProporcion" ).click(function() {
  AgregarProporcion();
});

function AgregarProporcion(){
  CONTADOR_PROPORCION++;
  var divProporcion = '';
  var divID ="dv" + CONTADOR_PROPORCION;
  divProporcion += '<div id = "' + divID + '">';
  divProporcion += '<div class="col-sm-12">'
  divProporcion += '<div class="col-sm-4">'
  divProporcion += '<input type="text" class="form-control" name="text" required>'
  divProporcion += '</div>'
  divProporcion += '<div class="col-sm-6">'
  divProporcion += '<button class="btnEliminar btn bg-danger" contador="' + divID  +'" ><i class="fa fa-trash"> Eliminar</i></button>'
  divProporcion += '</div>'
  divProporcion += '</div>'
  divProporcion += '</br></br></br>'
  divProporcion += '</div>'; 
  $("#dvProporcionProductos").append(divProporcion);

  $(".btnEliminar").click(function() {
    debugger;
    var contador = $(this).attr('contador');
    $("#"+ contador).remove();
  }); 
}

$( "#btnLimpiar" ).click(function() {
  Limpiar();
});

$( "#btnRegistrar" ).click(function() {
  AgregarProporcion();
});

function Limpiar(){
  $("#dvProporcionProductos").empty();
  $("#txtNombreProducto").val('');
  $("#txtDescripcionCorta").val('');
  $("#txtDescripcionLarga").val('');
  $(".fileinput-remove-button").click();
}


function ArmarJsonVenta()
{
  var data = null;
  data =
      {
        "nombreProducto"    : $("#txtNombreProducto").val(),
        "descripcionCorta"  : $("#txtDescripcionCorta").val(),
        "descripcionLarga"  : $("#txtDescripcionLarga").val(),
        "imagen"            : 
      }
  data["listadoProporciones"] = RecorrerTablaProductosVentas();  
  return data;
}