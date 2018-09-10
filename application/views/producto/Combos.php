<div id="content" class="content">
    <ol class="breadcrumb pull-right">
    <li class="breadcrumb-item"><a href="<?php echo base_url();?>Inicio">INICIO</a></li>
        <li class="breadcrumb-item"><a href="#">PRODUCTOS</a></li>
        <li class="breadcrumb-item active"><a href="<?php echo base_url();?>Productos/Postres">COMBOS</a></li>
    </ol>
    <h1 class="page-header">COMBOS</h1>
    <div class="row">			    
        <div class="col-lg-12">
            <div class="panel panel-inverse">
                <div class="panel-heading">
                    <h4 class="panel-title">REGISTRAR COMBOS</h4>
                </div>
                <div class="panel-body">						
                        <div class="row">
                            <div class="col-sm-4 text-center">
                                <div class="kv-avatar">
                                    <div class="file-loading">
                                        <input id="avatar-1" name="avatar-1" type="file" required>
                                    </div>
                                </div>
                                <div class="kv-avatar-hint"><small>Select file < 1500 KB</small></div>
                            </div>
                            <div class="col-sm-8">
                                <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                    <label for="text">Nombre Producto<span class="kv-reqd">*</span></label>
                                    <input type="text" class="form-control" name="text" required>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                    <label for="pwd">Descripcion Corta<span class="kv-reqd">*</span></label>
                                    <input type="password" class="form-control" name="pwd" required>
                                    </div>
                                </div>
                                </div>
                                
                                <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                    <label for="lname">Descripcion</label>
                                    <textarea class="form-control" rows="3"></textarea>
                                    </div>
                                </div>
                                </div>
                                
                                <div class="row">
                                <div class="col-sm-12">
                                    </br>
                                    <h5>
                                    <b>PROPORCIÓN DE PRODUCTOS  </b>
                                    <button class="btn"><i class="fa fa-plus"></i></button>
                                    </h5>
                                    </br>
                                </div>											
                                </div>
                                
                                <div class="row">
                                <div class="col-sm-6">
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" name="text" required>													
                                    </div>
                                    <div class="col-sm-4">
                                        <button class="btn bg-danger"><i class="fa fa-trash"></i></button>
                                    </div>												
                                </div>
                                </div>
                                                                        
                                <div class="form-group">
                                <hr>
                                <div class="text-right"> 
                                    <button type="submit" class="btn btn-primary">Registrar</button>
                                    <button type="submit" class="btn btn-default">Limpiar</button>
                                </div>
                                </div>
                            </div>
                        </div>
                    <div id="kv-avatar-errors-1" class="center-block" style="width:800px;display:none"></div>                           
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
                    <h4 class="panel-title">LISTA DE PRODUCTOS</h4>
                </div>

                <div class="panel-body">						
                    <table id="data-table-responsive" class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th width="1%"></th>
                                <th class="text-nowrap">Descripcion</th>
                                <th class="text-nowrap">Usuario Registro</th>
                                <th class="text-nowrap">Fecha Registro</th>
                                <th class="text-nowrap"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="odd">
                                <td width="1%" class="f-s-600 text-inverse">1</td>
                                <td>Trident</td>
                                <td>Internet Explorer 4.0</td>
                                <td>Win</td>
                                <td>Win</td>
                            </tr>
                            <tr class="even">
                                <td width="1%" class="f-s-600 text-inverse">2</td>
                                <td>Trident</td>
                                <td>Internet Explorer 5.0</td>
                                <td>Win 95+</td>
                                <td>Win</td>
                            </tr>	
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>