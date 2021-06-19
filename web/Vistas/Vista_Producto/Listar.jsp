<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Producto"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../../Head.jsp" />
        <title>Listar Producto</title>
        <link href="Contenido/css/estilo5.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container-fluid" > 
            <div class="row C-medidas">
                <!--MENU INSERTADO-->
                <jsp:include page="../../Menu.jsp" />
                <div class="col-md-10">
                    <div class="row" id="Contenido-Administrador">

                        <div class="col-md-12" style="border: 2px solid #737373;">
                            <div class="container-fluid">
                                <!-- Inicio del Contenido-->

                                <a href="Controlador_Inventario?accion=listar" class="btn btn-info">Inventario</a>
                                <a href="Controlador_Categoria?accion=listar" class="btn btn-info">Categoria</a>

                                <h1>Listado de Producto</h1>
                                <div style="width: 100%; text-align: right;">
                                    <a class="btn btn-info btn-sm" href="Controlador_Producto?accion=reporte" target="_blank" >Reporte Producto <i class="fas fa-file-pdf"></i></a>
                                    <!-- Boton de Modal de producto -->
                                    <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#ModalProducto">
                                        <i class="fas fa-user-plus"></i> Agregar Nuevo
                                    </button>
                                </div>
                                <br>
                                <table class="table table-bordered" border="1">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>ID</th>
                                            <th>Id inventaro</th>
                                            <th>id categoria</th>
                                            <th>Nombre</th>
                                            <th>Color</th>
                                            <th>Talla</th>
                                            <th>Material</th>
                                            <th>Precio Venta</th>
                                            <th>Precio Compra</th>
                                            <th>OPCIONES</th>
                                        </tr>
                                    </thead>
                                    <%
                                        ProductoDAO dao = new ProductoDAO();
                                        List<Producto> list = dao.listar();
                                        Iterator<Producto> iter = list.iterator();
                                        Producto tab = null;
                                        while (iter.hasNext()) {//No cerrar este corchete
                                            tab = iter.next();
                                    %>
                                    <tbody>
                                        <tr>
                                            <td><%= tab.getIdProducto()%></td>
                                            <td><%= tab.getIdInventario_Fk()%></td>
                                            <td><%= tab.getIdCategoria_Fk()%></td>
                                            <td><%= tab.getNom_Prod()%></td>
                                            <td><%= tab.getColor_Prod()%></td>
                                            <td><%= tab.getTalla_Prod()%></td>
                                            <td><%= tab.getMaterial_Prod()%></td>
                                            <td><%= tab.getPrecio_Unitario_Venta()%></td>
                                            <td><%= tab.getPrecio_Unitario_Compra()%></td>
                                            <td>
                                                <a class="btn btn-success btn-sm" href="Controlador_Producto?accion=editar&id=<%= tab.getIdProducto()%>">Editar</a>
                                                <a class="btn btn-danger btn-sm" href="Controlador_Producto?accion=eliminar&id=<%= tab.getIdProducto()%>">Eliminar</a>
                                            </td>
                                        </tr>
                                        <%}%>
                                    </tbody>
                                </table>

                                <!--Fin del Contenido-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Modal -->
            <div class="modal fade" id="ModalProducto" tabindex="-1" aria-labelledby="ModalProducto" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="ModalProducto">Agregar Producto</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form action="Controlador_Producto">
                            <div class="modal-body">
                                <div class="container-fluid">

                                    <div class="row">
                                        <div class="col-md-2">
                                            <label for="">Id inventario</label>
                                            <input class="form-control" type="text" name="txtIdInventario_Fk" required="true">
                                        </div>
                                        <div class="col-md-2">
                                            <label for="">Id categoria</label>
                                            <input class="form-control" type="text" name="txtIdCategoria_Fk" required="true">
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-3">
                                            <label for="">Nombre del producto</label>
                                            <input class="form-control" type="text" name="txtNom_Prod" required="true">
                                        </div>
                                        <div class="col-md-3">
                                            <label for="">Color del producto</label>
                                            <input class="form-control" type="text" name="txtColor_Prod" required="true">
                                        </div>
                                        <div class="col-md-3">
                                            <label for="">Talla del producto</label>
                                            <input class="form-control" type="text" name="txtTalla_Prod" required="true">
                                        </div>
                                        <div class="col-md-3">
                                            <label for="">Material del producto</label>
                                            <input class="form-control" type="text" name="txtMaterial_Prod" required="true">
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-5">
                                            <label for="">Precio unitario de la venta</label>
                                            <input class="form-control" type="text" name="txtPrecio_Unitario_Venta" required="true">
                                        </div>
                                        <div class="col-md-5">
                                            <label for="">Precio unitario de la compra</label>
                                            <input class="form-control" type="text" name="txtPrecio_Unitario_Compra" required="true">
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
                            </div>

                        </form>

                    </div>
                </div>  
            </div>
            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>


    </body>
</html>
