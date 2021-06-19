<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Usuario"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../../Head.jsp" />
        <title>Listar Usuario</title>
        <link href="Contenido/css/estilo5.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div>
            <div class="container-fluid" > 
                <div class="row C-medidas">
                    <!--MENU INSERTADO-->
                    <jsp:include page="../../Menu.jsp" />
                    <div class="col-md-10">
                        <div class="row" id="Contenido-Administrador">

                            <div class="col-md-12" style="border: 2px solid #737373;">
                                <div class="container-fluid">
                                    <a href="Controlador_Rol?accion=listar" class="btn btn-info">Rol</a><br>
                                    <h1>Usuarios</h1>

                                    <div style="width: 100%; text-align: right;">
                                        <a class="btn btn-info btn-sm" href="Controlador_Usuario?accion=reporte" target="_blank" >Reporte Usuarios <i class="fas fa-file-pdf"></i></a>
                                        <!-- Boton de Modal de usuario -->
                                        <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#ModalUsuario">
                                            <i class="fas fa-user-plus"></i> Agregar Nuevo
                                        </button>
                                    </div>
                                    <br>
                                    <table class="table table-bordered" border="1">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th class="min">ID</th>
                                                <th class="min">IdRol_Fk</th>
                                                <th>P_Nombre</th>
                                                <th>S_Nombre</th>
                                                <th>P_Apellido</th>
                                                <th>S_Apellido</th>
                                                <th>Telefono</th>
                                                <th>Fech_Nacimiento</th>
                                                <th>Correo</th>
                                                <th>Clave</th>
                                                <th>OPCIONES</th>
                                            </tr>
                                        </thead>
                                        <%
                                            UsuarioDAO dao = new UsuarioDAO();
                                            List<Usuario> list = dao.listar();
                                            Iterator<Usuario> iter = list.iterator();
                                            Usuario per = null;
                                            while (iter.hasNext()) {
                                                per = iter.next();

                                        %>
                                        <tbody>
                                            <tr>
                                                <td><%= per.getIDusuario()%></td>
                                                <td><%= per.getIdrol_Fk()%></td>
                                                <td><%= per.getP_Nombre()%></td>
                                                <td><%= per.getS_Nombre()%></td>
                                                <td><%= per.getP_Apellido()%></td>
                                                <td><%= per.getS_Apellido()%></td>
                                                <td><%= per.getTelefono()%></td>
                                                <td><%= per.getFech_Nacimiento()%></td>
                                                <td><%= per.getCorreo()%></td>
                                                <td><%= per.getClave_Cuenta()%></td>
                                                <td>
                                                    <a class="btn btn-success btn-sm" href="Controlador_Usuario?accion=editar&id=<%= per.getIDusuario()%>">Editar</a>
                                                    <a class="btn btn-danger btn-sm" href="Controlador_Usuario?accion=eliminar&id=<%= per.getIDusuario()%>">Eliminar</a>
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
                <div class="modal fade" id="ModalUsuario" tabindex="-1" aria-labelledby="ModalUsuario" aria-hidden="true">
                    <div class="modal-dialog modal-xl">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="ModalUsuario">Agregar Usuario</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <form action="Controlador_Usuario">
                                <div class="modal-body">
                                    <div class="container-fluid">

                                        <div class="row">
                                            <div class="col-md-2">
                                                <label for="Rol">Rol del Usuario</label>
                                                <input class="form-control" type="text" name="Rol" required="true">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3">
                                                <label for="P_nombre">Primer Nombre</label>
                                                <input class="form-control" type="text" name="P_nombre" required="true">
                                            </div>
                                            <div class="col-md-3">
                                                <label for="S_nombre">Segundo Nombre</label>
                                                <input class="form-control" type="text" name="S_nombre">
                                            </div>
                                            <div class="col-md-3">
                                                <label for="P_apellido">Primer Apellido</label>
                                                <input class="form-control" type="text" name="P_apellido" required="true">
                                            </div>
                                            <div class="col-md-3">
                                                <label for="S_apellido">Segundo Apellido</label>
                                                <input class="form-control" type="text" name="S_apellido">
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-4">
                                                <label for="Telefono">Telefono</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <label class="input-group-text" for="validatedInputGroupSelect">+57</label>
                                                    </div>
                                                    <input class="form-control" type="text" name="Telefono">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <label for="Nacimiento">Fecha de Nacimiento</label>
                                                <input class="form-control" type="date" required="true" pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}" min="1980-01-01" max="2025-12-31" name="Nacimiento" required="true">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label for="Correo">Correo Electronico</label>
                                                <input class="form-control" type="email" name="Correo" required="true">
                                            </div>
                                            <div class="col-md-4">
                                                <label for="Clave">Contraseña</label>
                                                <input class="form-control" type="password" name="Clave" required="true">
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

        </div>
    </body>
</html>
