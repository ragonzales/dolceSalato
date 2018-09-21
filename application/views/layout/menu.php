<div id="sidebar" class="sidebar">
    <div data-scrollbar="true" data-height="100%" class="menuFondo" >
        <ul class="nav">
            <li class="nav-profile">
                <a href="javascript:;" data-toggle="nav-profile">
                    <div class="cover with-shadow"></div>
                    <div class="image">
                        <img src="<?php echo base_url();?>assets/img/user/user-12.jpg" alt="" />
                    </div>
                    <div class="info">
                        <label id="lblNombreUsuario" style="color:white"></label>
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
            <li class="<?=($this->uri->segment(1)==='Inicio')?'active':''?>">
                <a href="<?php echo base_url();?>Inicio">
                    <i class="fa fa-th-large"></i>
                    <span>INICIO</span>
                </a>
            </li>
            <li class="<?=($this->uri->segment(1)==='Coberturas')?'active':''?>">
                <a href="<?php echo base_url();?>Coberturas">
                    <i class="fa fa-th-large"></i>
                    <span>COBERTURAS</span>
                </a>
            </li>

            <li class="<?=($this->uri->segment(1)==='Productos')?'has-sub active':'has-sub'?>">
                <a href="javascript:;">
                    <b class="caret"></b>
                    <i class="fa fa-th-large"></i>
                    <span>CATEGORIA</span>
                </a>
                <ul class="sub-menu">
                    <li class="<?=($this->uri->segment(2)==='Bocaditos')?'active':''?>"><a href="<?php echo base_url();?>Productos/Bocaditos">BOCADITOS</a></li>
                    <li class="<?=($this->uri->segment(2)==='Combos')?'active':''?>"><a href="<?php echo base_url();?>Productos/Combos">COMBOS</a></li>
                    <li class="<?=($this->uri->segment(2)==='Cupckes')?'active':''?>"><a href="<?php echo base_url();?>Productos/Cupckes">CUPCKES</a></li>
                    <li class="<?=($this->uri->segment(2)==='Festivo')?'active':''?>"><a href="<?php echo base_url();?>Productos/Festivo">FESTIVO</a></li>
                    <li class="<?=($this->uri->segment(2)==='Postres')?'active':''?>"><a href="<?php echo base_url();?>Productos/Postres">POSTRES Y TORTAS</a></li>
                </ul>
            </li>
            <li class="liMenusActive">
                <a href="<?php echo base_url();?>Ventas">
                    <i class="fa fa-th-large"></i>
                    <span>DETALLE COMPRAS</span>
                </a>
            </li>
            <li><a href="javascript:;" class="sidebar-minify-btn" data-click="sidebar-minify"><i class="fa fa-angle-double-left"></i></a></li>
        </ul>
    </div>
</div>
<div class="sidebar-bg"></div>