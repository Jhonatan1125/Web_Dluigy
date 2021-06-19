<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Proveedor"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.ProveedorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../../Head.jsp" />
        <title>Listar Proveedor</title>
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

                                <h1>Listado de Proveedor</h1>

                                <div style="width: 100%; text-align: right;">
                                    <!-- Boton de Modal de fidelizacion -->
                                    <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#ModalProveedor">
                                        <i class="fas fa-user-plus"></i> Agregar Nuevo
                                    </button>

                                </div>
                                <br>
                                <table class="table table-bordered" border="1">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th class="min">ID</th>
                                            <th>Nombre del proveedor</th>
                                            <th>Correo del proveedor</th>
                                            <th>Telefono del proveedor</th>
                                            <th>Direccion del proveedor</th>
                                            <th>OPCIONES</th>
                                        </tr>
                                    </thead>
                                    <%
                                        ProveedorDAO dao = new ProveedorDAO();
                                        List<Proveedor> list = dao.listar();
                                        Iterator<Proveedor> iter = list.iterator();
                                        Proveedor tab = null;
                                        while (iter.hasNext()) {//No cerrar este corchete
                                            tab = iter.next();
                                    %>
                                    <tbody>
                                        <tr>
                                            <td><%= tab.getIdProveedor()%></td>
                                            <td><%= tab.getNom_Prove()%></td>
                                            <td><%= tab.getCorreo_Prove()%></td>
                                            <td><%= tab.getTelefono_Prove()%></td>
                                            <td><%= tab.getDireccion_Prove()%></td>
                                            <td>
                                                <a class="btn btn-success btn-sm" href="Controlador_Proveedor?accion=editar&id=<%= tab.getIdProveedor()%>">Editar</a>
                                                <a class="btn btn-danger btn-sm" href="Controlador_Proveedor?accion=eliminar&id=<%= tab.getIdProveedor()%>">Eliminar</a>
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
            <div class="modal fade" id="ModalProveedor" tabindex="-1" aria-labelledby="ModalProveedor" aria-hidden="true">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="ModalProveedor">Agregar Proveedor</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form action="Controlador_Proveedor">
                            <div class="modal-body">
                                <div class="container-fluid">

                                    <div class="row">
                                        <div class="col-md-12">
                                            <label for="">Nombre del proveedor</label>
                                            <input class="form-control" type="text" name="txtNom_Prove" required="true">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <label for="">Correo del proveedor</label>
                                            <input class="form-control" type="email" name="txtCorreo_Prove" required="true">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <label for="">Telefono del proveedor</label>
                                            <input class="form-control" type="text" name="txtTelefono_Prove" required="true">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <label for="">Direccion del proveedor</label>
                                            <input class="form-control" type="text" name="txtDireccion_Prove" required="true">
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
