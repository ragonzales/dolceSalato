<div id="content" class="content">
   <ol class="breadcrumb pull-right">
      <li class="breadcrumb-item"><a href="<?php echo base_url();?>Inicio">INICIO</a></li>
      <li class="breadcrumb-item"><a href="#">PRODUCTOS</a></li>
      <li class="breadcrumb-item active"><a href="<?php echo base_url();?>Productos/Postres">BOCADITOS</a></li>
   </ol>
   <h1 class="page-header">BOCADITOS</h1>
   <div class="row">
      <div class="col-lg-12">
         <div class="panel panel-inverse">
            <div class="panel-heading">
               <h4 class="panel-title">REGISTRAR BOCADITOS</h4>
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
                                <div class="kv-avatar-hint"><small>Archivo < 1500 KB</small></div>
                            </div>
                            <div class="col-sm-8">
                                <div class="row">
                                    <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="text">Nombre Producto<span class="kv-reqd">*</span></label>
                                        <input type="text" class="form-control" id="txtNombreProducto" required>
                                    </div>
                                    </div>
                                    <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="pwd">Descripcion Corta<span class="kv-reqd">*</span></label>
                                        <input type="text" class="form-control" id="txtDescripcionCorta" required>
                                    </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="lname">Descripcion</label>
                                        <textarea class="form-control" rows="12" id="txtDescripcionLarga"></textarea>
                                    </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="kv-avatar-errors-1" class="center-block" style="width:800px;display:none"></div>
                    </div>

                     <div class="tab-pane fade" id="nav-pills-tab-2">
                        <div class="row">                            
                            <div class="col-sm-6">                                
                                <div class="col-sm-12">
                                    <div class="col-sm-4">
                                        <input type="text" class="form-control" placeholder="Ingrese la proporción" name="text" required id="txtProporcion">
                                        <div class="col-md-12 tamano"></div>
                                    </div>
                                    
                                    <div class="col-sm-4">
                                        <input type="text" class="form-control" placeholder="Ingrese el precio" name="text" required id="txtPrecio" >
                                        <div class="col-md-12 tamano"></div>
                                    </div>
                                    <div class="col-sm-4">
                                        <button class="btn bg-warning" style="color:white;" id="btnAgregarProporcion"><i class="fa fa-plus"> Agregar Proporción</i></button>                                
                                        <div class="col-md-12 tamano"></div>
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
               <div class="text-right"> 
                    <button type="submit" class="btn btn-warning" id="btnRegistrar">REGISTRAR PRODUCTO</button>
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
               <h4 class="panel-title">LISTADO DE BOCADITOS</h4>
            </div>
            <div class="panel-body">
                <table id="tblProductos" class="table table-striped table-bordered">
                  <thead>
                     <tr>
                        <th width="1%"></th>
                        <th class="text-nowrap">NOMBRE PRODUCTO</th>
                        <!-- <th class="text-nowrap">ESTADO</th> -->
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