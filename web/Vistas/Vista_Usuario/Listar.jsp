<%-- 
    Document   : Listar
    Created on : 25/03/2021, 12:51:49 PM
    Author     : JHsan
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Usuario"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../../Head.jsp" />
        <title>JSP Page</title>
        <link href="Contenido/css/estilo5.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div>
            <jsp:include page="../../Menu.jsp" />
            <div class="container-fluid">
                <a href="Controlador_Rol?accion=listar">Rol</a><br>
                <h1>Usuarios</h1>
                <a class="btn btn-success btn-sm" href="Controlador_Usuario?accion=add">Agregar Nuevo</a><br>
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
            </div>
        </div><!--1 Esto hace parte de Menu.jsp-->
    </div><!-- Esto hace parte de Menu.jsp-->
</div><!-- Esto hace parte de Menu.jsp-->
</div><!-- Esto hace parte de Menu.jsp-->
</div><!-- Esto hace parte de Menu.jsp-->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>

</div>
</body>
</html>
