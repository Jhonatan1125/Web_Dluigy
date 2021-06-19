<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Inventario"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.InventarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <div class="container-fluid" > 
        <div class="row C-medidas">
            <!--MENU INSERTADO-->
            <jsp:include page="../../Head.jsp" />
            <title>Listar Inventario</title>
            <link href="Contenido/css/estilo5.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <jsp:include page="../../Menu.jsp" />
                <div class="col-md-10">
                    <div class="row" id="Contenido-Administrador">

                        <div class="col-md-12" style="border: 2px solid #737373;">
                            <div class="container-fluid">
                                <!-- Inicio del Contenido-->

                                <h1>Listado de Inventario</h1>

                                <div style="width: 100%; text-align: right;">
                                    <a class="btn btn-info btn-sm" href="Controlador_Inventario?accion=reporte" target="_blank" >Reporte Inventario <i class="fas fa-file-pdf"></i></a>
                                    <!-- Boton de Modal de inventario -->
                                    <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#ModalInventario">
                                        <i class="fas fa-user-plus"></i> Agregar Nuevo
                                    </button>
                                </div>
                                <br>
                                <table class="table table-bordered" border="1">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th class="min">ID</th>
                                            <th>Cantidad</th>
                                            <th>Fecha de entrada</th>
                                            <th>Cantidad de entrada</th>
                                            <th>Cantidad de salidas</th>
                                            <th>OPCIONES</th>
                                        </tr>
                                    </thead>
                                    <%
                                        InventarioDAO dao = new InventarioDAO();
                                        List<Inventario> list = dao.listar();
                                        Iterator<Inventario> iter = list.iterator();
                                        Inventario tab = null;
                                        while (iter.hasNext()) {//No cerrar este corchete
                                            tab = iter.next();
                                    %>
                                    <tbody>
                                        <tr>
                                            <td><%= tab.getIdInventario()%></td>
                                            <td><%= tab.getCantidad()%></td>
                                            <td><%= tab.getFech_Entrada()%></td>
                                            <td><%= tab.getCant_Entrada()%></td>
                                            <td><%= tab.getCant_Salida()%></td>
                                            <td>
                                                <a class="btn btn-success btn-sm" href="Controlador_Inventario?accion=editar&id=<%= tab.getIdInventario()%>">Editar</a>
                                                <a class="btn btn-danger btn-sm" href="Controlador_Inventario?accion=eliminar&id=<%= tab.getIdInventario()%>">Eliminar</a>
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
        <div class="modal fade" id="ModalInventario" tabindex="-1" aria-labelledby="ModalInventario" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="ModalInventario">Agregar Inventario</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="Controlador_Inventario">
                        <div class="modal-body">
                            <div class="container-fluid">

                                <div class="row">
                                    <div class="col-md-3">
                                        <label for="">Cantidad</label>
                                        <input class="form-control" type="text" name="txtCantidad" required="true">
                                    </div>
                                    <div class="col-md-4 ml-auto">
                                        <label for="">Fecha entrada</label>
                                        <input class="form-control" type="date" pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}" min="1980-01-01" max="2025-12-31" name="txtFech_Entrada" required="true">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-3">
                                        <label for="">Cantidad Entrada</label>
                                        <input class="form-control" type="text" name="txtCant_Entrada" required="true">
                                    </div>
                                    <div class="col-md-3">
                                        <label for="">Cantidad Salida</label>
                                        <input class="form-control" type="text" name="txtCant_Salida" required="true">
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
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>

</body>
</html>