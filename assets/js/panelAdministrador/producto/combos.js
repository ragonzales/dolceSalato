$( document ).ready(function() {    
    
});

function ListarProductos(){
    $.ajax({
        type: "POST",
        url: BASE_URL + 'Producto/ListarProductos',
        data: {"categoria"  : 2},
        async:true,
        dataType: 'json',
        success: function(listaProductos) {
          console.log(listaProductos);
          debugger;

          listaProductos.forEach(function(producto) {
            console.log(producto);
          });
          
        },
        error: function( jqXhr, textStatus, errorThrown ){
          console.log( jqXhr ); console.log( textStatus ); console.log( errorThrown );
          //MensajeAlert(MODULO_CLIENTE,'Error en la búsqueda de usuario. Detalle Técnico : ' + errorThrown ,'red');
        }
      });
}