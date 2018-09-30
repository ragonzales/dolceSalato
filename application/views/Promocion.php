<div id="content" class="content">
   <ol class="breadcrumb pull-right">
      <li class="breadcrumb-item"><a href="<?php echo base_url();?>Inicio">INICIO</a></li>
      <li class="breadcrumb-item active"><a href="<?php echo base_url();?>Productos/Postres">Promocion</a></li>
   </ol>
   <h1 class="page-header">Promocion</h1>
   <div class="row">
      <div class="col-lg-12">
         <div class="panel panel-inverse">
            <div class="panel-heading">
               <h4 class="panel-title">REGISTRAR PROMOCION</h4>
            </div>
            <div class="panel-body">
               <div class="col-lg-12">
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
                                <div class="col-sm-5">
                                    <div class="form-group">
                                        <label for="lname">Alineacion</label>
                                        <select class="form-control" id="txtAlineacion">
                                            <option value = "0">Seleccione la alineación</option>
                                            <option value = "1">IZQUIERDA</option>
                                            <option value = "2">DERECHA</option>
                                            <option value = "3">CENTRO</option>                                            
                                        </select>
                                    </div>
                                </div>
                            </div>                            

                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="text">Titulo<span class="kv-reqd"></span></label>
                                        <input type="text" class="form-control" id="txtTitulo" placeholder="Ingrese el título" required>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="pwd">Descripcion Corta</label>
                                        <input type="text" class="form-control" id="txtDescripcionCorta" placeholder="Ingrese la descripció de la promoción" required>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="lname">Mensaje Remarcado</label>
                                        <input type="text" class="form-control" id="txtMensaje" placeholder="Ingrese el mensaje" required>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div id="kv-avatar-errors-1" class="center-block" style="width:100%;display:none"></div>
               </div>
            </div>
            <div class="form-group">
               <hr>
               <div class="text-right"> 
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
               <h4 class="panel-title">LISTADO DE PROMOCIONES</h4>
            </div>
            <div class="panel-body">
                <table id="tblPromociones" class="table table-striped table-bordered">
                  <thead>
                     <tr>
                        <th width="1%"></th>
                        <th class="text-nowrap">TÍTULO</th>
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

<input type="hidden" id="txtIdPromocion" value="">