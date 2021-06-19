<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Rol"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../../Head.jsp" />
        <title>Listar Rol</title>
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

                                <h1>Listado de Roles</h1>

                                <div style="width: 100%; text-align: right;">
                                    <!-- Boton de Modal de rol -->
                                    <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#ModalRol">
                                        <i class="fas fa-user-plus"></i> Agregar Nuevo
                                    </button>

                                </div>
                                <br>
                                <table class="table table-bordered" border="1">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>ID</th>
                                            <th>Nom_Rol</th>
                                            <th>Descripcion</th>
                                            <th>OPCIONES</th>
                                        </tr>
                                    </thead>
                                    <%
                                        RolDAO dao = new RolDAO();
                                        List<Rol> list = dao.listar();
                                        Iterator<Rol> iter = list.iterator();
                                        Rol tab = null;
                                        while (iter.hasNext()) {//No cerrar este corchete
                                            tab = iter.next();
                                    %>
                                    <tbody>
                                        <tr>
                                            <td><%= tab.getIdRol()%></td>
                                            <td><%= tab.getNom_Rol()%></td>
                                            <td><%= tab.getDescripcion()%></td>
                                            <td>
                                                <a class="btn btn-success btn-sm" href="Controlador_Rol?accion=editar&id=<%= tab.getIdRol()%>">Editar</a>
                                                <a class="btn btn-danger btn-sm" href="Controlador_Rol?accion=eliminar&id=<%= tab.getIdRol()%>">Eliminar</a>
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
            <div class="modal fade" id="ModalRol" tabindex="-1" aria-labelledby="ModalRol" aria-hidden="true">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="ModalRol">Agregar Rol</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form action="Controlador_Rol">
                            <div class="modal-body">
                                <div class="container-fluid">

                                    <div class="row">
                                        <div class="col-md-12">
                                            <label for="Rol">Nom_Rol</label>
                                            <input class="form-control" type="text" name="txtNom_Rol" required="true">
                                        </div>
                                        <div class="col-md-12">
                                            <label for="Rol">Descripcion</label>
                                            <textarea class="form-control" name="txtDescripcion" placeholder="Una pequeña descripcion del Rol (45)" maxlength="45"></textarea>
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
