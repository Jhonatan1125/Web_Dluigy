<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--INICIO DEL CUERPO-->

<div class="container-fluid" > 
    <div class="row C-medidas">

        <div class="col-md-2">
            <div class="row menu-lateral">
                <div class="col-md-12 col-sm-1 text-center logo-menu-lateral">
                    <a href="index.jsp" style="margin: 0px; padding: 0px;"><img src="Contenido/img/Body/Logo-ico.ico" alt="Logo D'Luigy" width="90px" height="45px"></a>
                </div>

                <div class="col-md-12 col-sm-11 contenido-lateral">

                    <c:if test="${Rol.equals('Admin')}">
                        <ul class="nav nav-pills flex-column">
                            <li class="nav-item text-center">

                                <a class="nav-link" data-toggle="collapse" href="#item-2">INVENTARIO <i
                                        class="fas fa-dolly-flatbed"></i></a>
                                <div id="item-2" class="collapse">
                                    <ul class="nav flex-column ml-3">
                                        <li class="nav-item">
                                            <a  href="Controlador_Producto?accion=listar" class="nav-link"><i class="fas fa-arrow-circle-right"></i>Productos-(inventario,categoria)</a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="Controlador_Proveedor?accion=listar" class="nav-link"><i class="fas fa-arrow-circle-right"></i>Proveedor</a>

                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </c:if>
                    <c:if test="${Rol.equals('Admin') || Rol.equals('Vendedor') || Rol.equals('Cliente') }">
                        <ul class="nav nav-pills flex-column">
                            <li class="nav-item text-center">
                                <a class="nav-link" data-toggle="collapse" href="#item-3">VENTAS <i
                                        class="fas fa-file-invoice-dollar"></i></a>
                                <div id="item-3" class="collapse">
                                    <ul class="nav flex-column ml-3">
                                        <c:if test="${Rol.equals('Cliente') }">
                                            <li class="nav-item">
                                                <a href="#" class="nav-link"><i class="fas fa-arrow-circle-right"></i>Reporte de Compras</a>
                                            </li>
                                        </c:if>
                                        <c:if test="${Rol.equals('Vendedor') || Rol.equals('Admin') }">
                                            <li class="nav-item">
                                                <a href="Controlador_Recibo?accion=listar" class="nav-link"><i class="fas fa-arrow-circle-right"></i>Informacion de recibos-(producto_recibo)</a>
                                            </li>
                                        </c:if>
                                        <c:if test="${Rol.equals('Admin') }">
                                            <li class="nav-item">
                                                <a href="Informe.jsp" class="nav-link"><i class="fas fa-arrow-circle-right"></i>Reporte de ventas</a>
                                            </li>
                                        </c:if>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </c:if>
                    <c:if test="${Rol.equals('Admin') || Rol.equals('Vendedor')}">
                        <ul class="nav nav-pills flex-column">
                            <li class="nav-item text-center">
                                <a class="nav-link" data-toggle="collapse" href="#item-4">USUARIOS <i
                                        class="fas fa-user-tag"></i></a>
                                <div id="item-4" class="collapse">
                                    <ul class="nav flex-column ml-3" style="padding: 0px;">
                                        <c:if test="${Rol.equals('Admin')}">
                                            <li class="nav-item">
                                                <a href="Controlador_Usuario?accion=listar" class="nav-link"><i class="fas fa-arrow-circle-right"></i>Registrados-(ROL)</a>
                                            </li>
                                        </c:if>
                                        <c:if test="${Rol.equals('Admin') || Rol.equals('Vendedor')}">
                                            <li class="nav-item">
                                                <a href="Controlador_Cliente?accion=listar" class="nav-link"><i class="fas fa-arrow-circle-right"></i>Cliente-(Fidelizacion)</a>
                                            </li>
                                        </c:if>
                                        <c:if test="${Rol.equals('Admin')}">
                                            <li class="nav-item">
                                                <a href="Controlador_Vendedor?accion=listar" class="nav-link"><i class="fas fa-arrow-circle-right"></i>Vendedor</a>
                                            </li>
                                        </c:if>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </c:if>
                    <c:if test="${Rol.equals('Admin')}">
                        <ul class="nav nav-pills flex-column">
                            <li class="nav-item text-center">
                                <a class="nav-link" data-toggle="collapse" href="#item-5">CORREO <i class="fas fa-envelope-open-text"></i>

                                </a>
                                <div id="item-5" class="collapse">
                                    <ul class="nav flex-column ml-3" style="padding: 0px;">
                                        <li class="nav-item">
                                            <a href="FormEmail.jsp" class="nav-link"><i class="fas fa-arrow-circle-right"></i>Enviar Correo</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </c:if>

                    <ul class="nav nav-pills flex-column">
                        <li class="nav-item text-center">
                            <a class="nav-link" data-toggle="collapse" href="#item-6">CERRAR SESIÓN <i class="fa fa-sign-out" aria-hidden="true"></i></a>
                            <div id="item-6" class="collapse">
                                <ul class="nav flex-column ml-3" style="padding: 0px;">
                                    <li class="nav-item">
                                        <a href="index.jsp" class="nav-link">SALIR</a>
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


                    <!--FIN DEL CUERPO-->