<div id="sidebar" class="sidebar">
    <div data-scrollbar="true" data-height="100%">
        <ul class="nav">
            <li class="nav-profile">
                <a href="javascript:;" data-toggle="nav-profile">
                    <div class="cover with-shadow"></div>
                    <div class="image">
                        <img src="../assets/img/user/user-13.jpg" alt="" />
                    </div>
                    <div class="info">
                        <b class="caret pull-right"></b>
                        Nombre Usuario
                    </div>
                </a>
            </li>
            <li>
                <ul class="nav nav-profile">
                    <li><a href="javascript:;"><i class="fa fa-pencil-alt"></i> Editar Perfil</a></li>
                </ul>
            </li>
        </ul>
        <ul class="nav">
            <li class="nav-header">Navigation</li>
            <li class="active">
                <a href="<?php echo base_url();?>InicioController/inicio">
                    <i class="fa fa-th-large"></i>
                    <span>INICIO</span>
                </a>
            </li>

            <li class="has-sub active">
                <a href="javascript:;">
                    <b class="caret"></b>
                    <i class="fa fa-th-large"></i>
                    <span>CATEGORIA</span>
                </a>
                <ul class="sub-menu">
                    <li><a href="<?php echo base_url();?>ProductoController/inicio">POSTRES Y TORTAS</a></li>
                    <li><a href="<?php echo base_url();?>ProductoController/inicio">BOCADITOS</a></li>
                    <li><a href="<?php echo base_url();?>ProductoController/inicio">CUPCKES</a></li>
                    <li><a href="<?php echo base_url();?>ProductoController/inicio">COMBOS</a></li>
                    <li><a href="<?php echo base_url();?>ProductoController/inicio">FESTIVO</a></li>
                    <li><a href="<?php echo base_url();?>ProductoController/inicio">FESTIVO</a></li>
                </ul>
            </li>
            <li class="active">
                <a href="<?php echo base_url();?>VentasController/inicio">
                    <i class="fa fa-th-large"></i>
                    <span>DETALLE COMPRAS</span>
                </a>
            </li>
            <li><a href="javascript:;" class="sidebar-minify-btn" data-click="sidebar-minify"><i class="fa fa-angle-double-left"></i></a></li>
        </ul>
    </div>
</div>
<div class="sidebar-bg"></div>