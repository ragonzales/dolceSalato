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
            <li class="<?=($this->uri->segment(1)==='Promocion')?'active':''?>">
                <a href="<?php echo base_url();?>Promocion">
                    <i class="fa fa-th-large"></i>
                    <span>PANEL PROMOCIONES</span>
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
                    <li class="<?=($this->uri->segment(2)==='Postres')?'active':''?>"><a href="<?php echo base_url();?>Productos/Postres">POSTRES Y TORTAS</a></li>
                    <li class="<?=($this->uri->segment(2)==='BocaditosSalados')?'active':''?>"><a href="<?php echo base_url();?>Productos/BocaditosSalados">BOCADITOS SALADOS</a></li>
                    <li class="<?=($this->uri->segment(2)==='BocaditosDulces')?'active':''?>"><a href="<?php echo base_url();?>Productos/BocaditosDulces">BOCADITOS DULCES</a></li>
                    <li class="<?=($this->uri->segment(2)==='Piqueos')?'active':''?>"><a href="<?php echo base_url();?>Productos/Piqueos">PIQUEOS TRADICIONALES</a></li>
                    <li class="<?=($this->uri->segment(2)==='PiqueosPeruanos')?'active':''?>"><a href="<?php echo base_url();?>Productos/PiqueosPeruanos">PIQUEOS PERUANOS</a></li>
                    <li class="<?=($this->uri->segment(2)==='CupckesTradicionales')?'active':''?>"><a href="<?php echo base_url();?>Productos/CupckesTradicionales">CUPCKES TRADICIONALES</a></li>
                    <li class="<?=($this->uri->segment(2)==='CupckesGigantes')?'active':''?>"><a href="<?php echo base_url();?>Productos/CupckesGigantes">CUPCKES GIGANTES</a></li>
                    <li class="<?=($this->uri->segment(2)==='CupckesFruta')?'active':''?>"><a href="<?php echo base_url();?>Productos/CupckesFruta">CUPCKES FRUTA</a></li>
                    <li class="<?=($this->uri->segment(2)==='Combos')?'active':''?>"><a href="<?php echo base_url();?>Productos/Combos">COMBOS</a></li>
                    <li class="<?=($this->uri->segment(2)==='Festivo')?'active':''?>"><a href="<?php echo base_url();?>Productos/Festivo">FESTIVO</a></li>
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