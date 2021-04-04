<!--INICIO DEL CUERPO-->
<div class="container-fluid" > 
    <div class="row C-medidas">

        <div class="col-md-2">
            <div class="row menu-lateral">
                <div class="col-md-12 col-sm-1 text-center logo-menu-lateral">
                    <a href="index.jsp" style="margin: 0px; padding: 0px;"><img src="../Contenido/img/Body/Logo-ico.ico" alt="Logo D'Luigy" width="90px" height="45px"></a>
                </div>

                <div class="col-md-12 col-sm-11 contenido-lateral">

                    <ul class="nav nav-pills flex-column">
                        <li class="nav-item text-center">

                            <a class="nav-link" data-toggle="collapse" href="#item-2">INVENTARIO <i
                                    class="fas fa-dolly-flatbed"></i></a>
                            <div id="item-2" class="collapse">
                                <ul class="nav flex-column ml-3">
                                    <li class="nav-item">
                                        <a href="#"><i class="fas fa-arrow-circle-right"></i>Productos-(inventario,categoria)</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href=""></a>
                                    <h:link class="nav-link" outcome="/proveedor/List"  ><i class="fas fa-arrow-circle-right"></i>Proveedor</h:link>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>

                    <ul class="nav nav-pills flex-column">
                        <li class="nav-item text-center">
                            <a class="nav-link" data-toggle="collapse" href="#item-3">VENTAS <i
                                    class="fas fa-file-invoice-dollar"></i></a>
                            <div id="item-3" class="collapse">
                                <ul class="nav flex-column ml-3">
                                    <li class="nav-item">
                                    <h:link class="nav-link" ><i class="fas fa-arrow-circle-right"></i>Reporte de ventas</h:link>
                                    </li>
                                    <li class="nav-item">
                                    <h:link class="nav-link" outcome="/recibo/List"  ><i class="fas fa-arrow-circle-right"></i>Informacion de recibos-(producto_recibo)</h:link>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>

                    <ul class="nav nav-pills flex-column">
                        <li class="nav-item text-center">
                            <a class="nav-link" data-toggle="collapse" href="#item-4">USUARIOS <i
                                    class="fas fa-user-tag"></i></a>
                            <div id="item-4" class="collapse">
                                <ul class="nav flex-column ml-3" style="padding: 0px;">
                                    <li class="nav-item">
                                    <h:link class="nav-link" outcome="/usuarios/List"  ><i class="fas fa-arrow-circle-right"></i>Registrados-(ROL)</h:link>
                                    </li>
                                    <li class="nav-item">
                                    <h:link class="nav-link" outcome="/cliente/List"  ><i class="fas fa-arrow-circle-right"></i>Cliente-(Fidelizacion)</h:link>
                                    </li>
                                    <li class="nav-item">
                                    <h:link class="nav-link" outcome="/vendedor/List"  ><i class="fas fa-arrow-circle-right"></i>Vendedor</h:link>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>


                    <ul class="nav nav-pills flex-column">
                        <li class="nav-item text-center">
                            <a class="nav-link" data-toggle="collapse" href="#item-6">CERRAR SESIÓN <i class="fa fa-sign-out" aria-hidden="true"></i></a>
                            <div id="item-6" class="collapse">
                                <ul class="nav flex-column ml-3" style="padding: 0px;">
                                    <li class="nav-item">
                                        <a href="#">SALIR</a>
                                    </li>
                                </ul>

                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="col-md-10">
            <div class="row" id="Contenido-Administrador">

                <div class="col-md-12" style="border: 2px solid #737373;">

                </div>


                <div class="col-md-10 text-center" style="border: 2px solid #737373;">

                    


                </div>
                <div class="col-md-2" style="border: 2px solid #737373;">
                    <br />
                    <br />
                    <br />
                    <br />
                    <ui:insert name="lateral1">Pagina Adicional</ui:insert>
                    <br />
                    <br />
                    <ui:insert name="lateral2">Pagina Adicional</ui:insert>
                </div>

            </div>
        </div>
    </div>
</div>
<!--FIN DEL CUERPO-->