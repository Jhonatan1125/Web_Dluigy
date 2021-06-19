<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Cliente"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../../Head.jsp" />
        <title>Listar Cliente</title>
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

                                <a href="Controlador_Fidelizacion?accion=listar" class="btn btn-info">Fidelizacion</a><br>
                                <h1>Listado de Cliente</h1>
                                <div style="width: 100%; text-align: right;">
                                    <!-- Boton de Modal de cliente -->
                                    <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#ModalCliente">
                                        <i class="fas fa-user-plus"></i> Agregar Nuevo
                                    </button>
                                </div>
                                <br>
                                <table class="table table-bordered" border="1">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>ID</th>
                                            <th>Id Usuario</th>
                                            <th>Id Fidelizacion</th>
                                            <th>Valor Total Compras</th>
                                            <th>Numero de compras</th>
                                            <th>OPCIONES</th>
                                        </tr>
                                    </thead>
                                    <%
                                        ClienteDAO dao = new ClienteDAO();
                                        List<Cliente> list = dao.listar();
                                        Iterator<Cliente> iter = list.iterator();
                                        Cliente tab = null;
                                        while (iter.hasNext()) {//No cerrar este corchete
                                            tab = iter.next();
                                    %>
                                    <tbody>
                                        <tr>
                                            <td><%= tab.getIdFidelizacion_Fk()%></td>
                                            <td><%= tab.getIdUsuarios_Fk()%></td>
                                            <td><%= tab.getIdFidelizacion_Fk()%></td>
                                            <td><%= tab.getVal_Total_Comp()%></td>
                                            <td><%= tab.getNum_Comp()%></td>
                                            <td>
                                                <a class="btn btn-success btn-sm" href="Controlador_Cliente?accion=editar&id=<%= tab.getIdCliente()%>">Editar</a>
                                                <a class="btn btn-danger btn-sm" href="Controlador_Cliente?accion=eliminar&id=<%= tab.getIdCliente()%>">Eliminar</a>
                                            </td>
                                        </tr>
                                        <%}%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal -->
            <div class="modal fade" id="ModalCliente" tabindex="-1" aria-labelledby="ModalCliente" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="ModalCliente">Agregar Cliente</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form action="Controlador_Cliente">
                            <div class="modal-body">
                                <div class="container-fluid">

                                    <div class="row">
                                        <div class="col-md-3">
                                            <label for="">Id Usuario</label>
                                            <input class="form-control" type="text" name="txtIdUsuarios_Fk" required="true">
                                        </div>
                                        <div class="col-md-3">
                                            <label for="Rol">Id Fidelizacion</label>
                                            <input class="form-control" type="text" name="txtIdFidelizacion_Fk" required="true">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <label for="Rol">Valor total de compras</label>
                                            <input class="form-control" type="text" name="txtVal_Total_Comp">
                                        </div>
                                        <div class="col-md-4">
                                            <label for="Rol">Numero de compras</label>
                                            <input class="form-control" type="text" name="txtNum_Comp">
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
