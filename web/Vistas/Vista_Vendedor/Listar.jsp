<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Vendedor"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.VendedorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../../Head.jsp" />
        <title>Listar Vendedor</title>
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

                                <h1>Listado de Vendedor</h1>
                                <div style="width: 100%; text-align: right;">
                                    <!-- Boton de Modal de vendedor -->
                                    <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#ModalVendedor">
                                        <i class="fas fa-user-plus"></i> Agregar Nuevo
                                    </button>
                                </div>
                                <br>
                                <table class="table table-bordered" border="1">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th class="min">ID</th>
                                            <th class="min">Id usuarios</th>
                                            <th>Numero de ventas</th>
                                            <th>Comision</th>
                                            <th>OPCIONES</th>
                                        </tr>
                                    </thead>
                                    <%
                                        VendedorDAO dao = new VendedorDAO();
                                        List<Vendedor> list = dao.listar();
                                        Iterator<Vendedor> iter = list.iterator();
                                        Vendedor tab = null;
                                        while (iter.hasNext()) {//No cerrar este corchete
                                            tab = iter.next();
                                    %>
                                    <tbody>
                                        <tr>
                                            <td><%= tab.getIdVendedor()%></td>
                                            <td><%= tab.getIdUsuarios_Fk()%></td>
                                            <td><%= tab.getNum_Ventas()%></td>
                                            <td><%= tab.getComision()%></td>
                                            <td>
                                                <a class="btn btn-success btn-sm" href="Controlador_Vendedor?accion=editar&id=<%= tab.getIdVendedor()%>">Editar</a>
                                                <a class="btn btn-danger btn-sm" href="Controlador_Vendedor?accion=eliminar&id=<%= tab.getIdVendedor()%>">Eliminar</a> 
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
            <div class="modal fade" id="ModalVendedor" tabindex="-1" aria-labelledby="ModalVendedor" aria-hidden="true">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="ModalVendedor">Agregar Vendedor</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form action="Controlador_Vendedor">
                            <div class="modal-body">
                                <div class="container-fluid">

                                    <div class="row">
                                        <div class="col-md-12">
                                            <label for="">Id usuarios</label>
                                            <input class="form-control" type="text" name="txtIdUsuarios_Fk" required="true">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <label for="">Numero de ventas</label>
                                    <input class="form-control" type="text" name="txtNum_Ventas" required="true">
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <label for="">Comision</label>
                                            <input class="form-control" type="text" name="txtComision" required="true">
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
