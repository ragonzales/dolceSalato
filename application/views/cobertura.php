<div id="content" class="content">
    <ol class="breadcrumb pull-right">
        <li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
        <li class="breadcrumb-item"><a href="javascript:;">Tables</a></li>
        <li class="breadcrumb-item"><a href="javascript:;">Managed Tables</a></li>
        <li class="breadcrumb-item active">Responsive</li>
    </ol>
    <h1 class="page-header">COBERTURAS</h1>			
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-inverse">
                <div class="panel-heading">
                    <div class="panel-heading-btn">
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Lista de Distritos</h4>
                </div>
                <div class="panel-body">													
                    <div class="form-group row m-b-15">							
                        <label class="col-form-label col-md-1">Distrito</label>
                        <div class="col-md-3">
                            <input type="text" id="txtDistrito" class="form-control m-b-5" placeholder="Ingrese el Distrito" />
                        </div>
                        <div class="col-md-3">
                            <button type="button" id="btnRegistrar" class="btn btn-warning"><i class="fa fa-plus"></i>&nbsp;Registrar</button>
                        </div>								
                    </div>						
                    <table id="tblCoberturas" class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th width="1%"></th>
                                <th class="text-nowrap">DISTRITO COBERTURA</th>
                                <th class="text-nowrap">ESTADO</th>
                                <th class="text-nowrap">USUARIO REGISTRO</th>
                                <th class="text-nowrap">FECHA REGISTRO</th>
                                <th class="text-nowrap">USUARIO BAJA</th>
                                <th class="text-nowrap">FECHA BAJA</th>
                                <th class="text-nowrap"></th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="modalCobertura">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">EDITAR COBERTURA</h4>
                </div>
                <div class="modal-body">                                
                    <input type="hidden" class="form-control" id="txtIdCoberturaEditar">
                    <div class="col-md-12">
                        <div class="col-md-4">
                            <span>Cobertura  </span>
                        </div>
                        <div class="col-md-8">
                            <input type="text" class="form-control" id="txtCoberturaEditar">
                        </div>
                    </div>
                    
                    <div class="col-md-12 tamano"></div>

                    <div class="col-md-12">
                        <div class="col-md-4 col-ms-4">
                            <span>Estado  </span>
                        </div>
                        <div class="col-md-8">
                            <div class="switcher switcher-success">
                                <input type="checkbox" name="switcher_checkbox_5" id="switcher_checkbox_5"/>
                                <label for="switcher_checkbox_5"></label>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-12 tamano"></div>

                    <div class="col-md-12">
                        <div class="col-md-4">
                            <span>Usuario Registra  </span>
                        </div>
                        <div class="col-md-8">
                            <input type="text" class="form-control" id="txtUsuarioRegistraEditar" disabled />
                        </div>
                    </div>

                    <div class="col-md-12 tamano"></div>

                    <div class="col-md-12">
                        <div class="col-md-4">
                            <span>Fecha Registro  </span>
                        </div>
                        <div class="col-md-8">
                            <input type="text" class="form-control" id="txtFechaRegistroEditar" disabled />
                        </div>
                    </div>

                    <div class="col-md-12 tamano"></div>

                    <div class="col-md-12">
                        <div class="col-md-4">
                            <span>Usuario Baja  </span>
                        </div>
                        <div class="col-md-8">
                            <input type="text" class="form-control" id="txtUsuarioBajaEditar" disabled />
                        </div>
                    </div>

                    <div class="col-md-12 tamano"></div>

                    <div class="col-md-12">
                        <div class="col-md-4">
                            <span>Fecha Baja  </span>
                        </div>
                        <div class="col-md-8">
                            <input type="text" class="form-control" id="txtFechaBajaEditar" disabled />
                        </div>
                    </div>

                    <div class="col-md-12 tamano"></div>
                </div>
                <div class="modal-footer">
                    <a href="javascript:;" class="btn btn-white" data-dismiss="modal">Cerrar</a>
                    <a href="javascript:;" class="btn btn-success" id="btnActualizar">Actualizar Información</a>
                </div>
            </div>
        </div>
    </div>
</div>



		