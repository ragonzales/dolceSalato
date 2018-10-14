<div id="content" class="content">
   <ol class="breadcrumb pull-right">
      <li class="breadcrumb-item"><a href="<?php echo base_url();?>Inicio">INICIO</a></li>
      <li class="breadcrumb-item"><a href="#">PRODUCTOS</a></li>
      <li class="breadcrumb-item active"><a href="<?php echo base_url();?>Productos/Postres">CUPCKES</a></li>
   </ol>
   <h1 class="page-header">CUPCKES</h1>
   <div class="row">
      <div class="col-lg-12">
         <div class="panel panel-inverse">
            <div class="panel-heading">
               <h4 class="panel-title">REGISTRAR CUPCKES</h4>
            </div>
            <div class="panel-body">
               <div class="col-lg-12">
                  <ul class="nav nav-pills">
                     <li class="nav-items">
                        <a href="#nav-pills-tab-1" data-toggle="tab" class="nav-link active">
                        <span class="d-sm-none">REGISTRO PRODUCTOS</span>
                        <span class="d-sm-block d-none">REGISTRO PRODUCTOS</span>
                        </a>
                     </li>
                     <li class="nav-items">
                        <a href="#nav-pills-tab-2" data-toggle="tab" class="nav-link">
                        <span class="d-sm-none">PROPORCIÓN PRODUCTOS</span>
                        <span class="d-sm-block d-none">PROPORCIÓN PRODUCTOS</span>
                        </a>
                     </li>
                  </ul>
                  <div class="tab-content">
                    <div class="tab-pane fade active show" id="nav-pills-tab-1">
                        <div class="row">
                            <div class="col-sm-4 text-center">
                                <div class="kv-avatar">
                                    <div class="file-loading">
                                        <input id="avatar-1" name="avatar-1" type="file" required>
                                    </div>
                                </div>
                                <div class="kv-avatar-hint"><small>Archivo</small></div>    <!--Archivo < 1500 KB-->
                            </div>

                            <div class="col-sm-8">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="text">Nombre Producto<span class="kv-reqd">*</span></label>
                                            <input type="text" class="form-control" id="txtNombreProducto" placeholder="Ingrese el nombre Producto" required>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <label for="pwd"></label></br>
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="txtDestacado" />
                                            <label class="form-check-label" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Producto Destacado<label>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label for="pwd">Descripcion Corta<span class="kv-reqd">*</span></label>
                                            <input type="text" class="form-control" id="txtDescripcionCorta" placeholder="Ingrese la descripción del Producto" required>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label for="lname">Detalle Producto</label>
                                            <textarea class="form-control" rows="6" id="txtDescripcionLarga"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="kv-avatar-errors-1" class="center-block" style="width:100%;display:none"></div>
                    </div>

                     <div class="tab-pane fade" id="nav-pills-tab-2">
                        <div class="row">                            
                            <div class="col-sm-6">                                
                                <div class="col-sm-12">
                                    <div class="col-sm-4">
                                        Proporción
                                    </div>

                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" placeholder="Ingrese la proporción" name="text" required id="txtProporcion">
                                    </div>
                                </div>

                                <div class="col-md-12 tamano"></div>

                                <div class="col-sm-12">
                                    <div class="col-sm-4">
                                        Precio
                                    </div>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" placeholder="Ingrese el precio" name="text" required id="txtPrecio" >                                        
                                    </div>
                                </div>

                                <div class="col-md-12 tamano"></div>

                                <div class="col-sm-12">
                                    <div class="col-sm-4">
                                        <button class="btn bg-dark" style="color:white;" id="btnAgregarProporcion"><i class="fa fa-plus"> Agregar Proporción</i></button>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <table id="tblProductosProporcion" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th class="text-nowrap">PROPORCION</th>
                                            <th class="text-nowrap">PRECIO</th>
                                            <th class="text-nowrap"></th>
                                        </tr>
                                    </thead>
                                </table>
                            </div>

                        </div>                        
                     </div>
                  </div>
               </div>
            </div>
            <div class="form-group">
               <hr>
               <div class="text-right" style="margin-right: 20px;">
                    <button type="submit" class="btn btn-warning" id="btnRegistrar">REGISTRAR</button>
                    <button type="submit" class="btn btn-dark" id="btnLimpiar">LIMPIAR</button>
                    <div class="col-md-12 tamano"></div>
               </div>               
               <hr>
            </div>
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-lg-12">
         <div class="panel panel-inverse">
            <div class="panel-heading">
               <div class="panel-heading-btn">
                  <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                  <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                  <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
               </div>
               <h4 class="panel-title">LISTADO DE CUPCKES</h4>
            </div>
            <div class="panel-body">
                <table id="tblProductos" class="table table-striped table-bordered">
                  <thead>
                     <tr>
                        <th width="1%"></th>
                        <th class="text-nowrap">NOMBRE PRODUCTO</th>
                        <th class="text-nowrap">USUARIO REGISTRO</th>
                        <th class="text-nowrap">FECHA REGISTRO</th>
                        <th class="text-nowrap">USUARIO BAJA</th>
                        <th class="text-nowrap">FECHA BAJA</th>
                        <th class="text-nowrap"></th>
                        <th class="text-nowrap"></th>
                     </tr>
                  </thead>
                </table>
            </div>
         </div>
      </div>
   </div>
</div>

<input type="hidden" id="txtIdProducto" value="">