<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Fidelizacion"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.FidelizacionDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../../Head.jsp" />
        <title>Listado Fidelizacion</title>
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


                                <h1>Listado de Fidelizacion</h1>

                                <div style="width: 100%; text-align: right;">
                                    <!-- Boton de Modal de fidelizacion -->
                                    <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#ModalFidelizacion">
                                        <i class="fas fa-user-plus"></i> Agregar Nuevo
                                    </button>
                                </div>
                                <br>
                                <table class="table table-bordered" border="1">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th class="min">ID</th>
                                            <th>Puntaje Total</th>
                                            <th>Fecha de Caducidad</th>
                                            <th>OPCIONES</th>
                                        </tr>
                                    </thead>
                                    <%
                                        FidelizacionDAO dao = new FidelizacionDAO();
                                        List<Fidelizacion> list = dao.listar();
                                        Iterator<Fidelizacion> iter = list.iterator();
                                        Fidelizacion tab = null;
                                        while (iter.hasNext()) {//No cerrar este corchete
                                            tab = iter.next();
                                    %>
                                    <tbody>
                                        <tr>
                                            <td><%= tab.getIdFidelizacion()%></td>
                                            <td><%= tab.getPunt_Total()%></td>
                                            <td><%= tab.getFech_Caducidad()%></td>
                                            <td>
                                                <a class="btn btn-success btn-sm" href="Controlador_Fidelizacion?accion=editar&id=<%= tab.getIdFidelizacion()%>">Editar</a>
                                                <a class="btn btn-danger btn-sm" href="Controlador_Fidelizacion?accion=eliminar&id=<%= tab.getIdFidelizacion()%>">Eliminar</a>
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
            <div class="modal fade" id="ModalFidelizacion" tabindex="-1" aria-labelledby="ModalFidelizacion" aria-hidden="true">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="ModalFidelizacion">Agregar Fidelizacion</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form action="Controlador_Fidelizacion">
                            <div class="modal-body">
                                <div class="container-fluid">

                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="">Puntaje Total</label>
                                            <input class="form-control" type="text" name="txtPunt_Total">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <label for="">Fecha de Caducidad</label>
                                            <input class="form-control" type="date" required="true" pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}" min="1980-01-01" max="2025-12-31" name="txtFech_Caducidad">
                                            <!--<input class="form-control" type="text" name="txtFech_Caducidad">-->
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
