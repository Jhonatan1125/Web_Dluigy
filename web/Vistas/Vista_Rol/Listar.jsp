<%-- 
    Document   : Listar
    Created on : 1/04/2021, 05:33:43 PM
    Author     : JHsan
--%>

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
        <jsp:include page="../../Menu.jsp" />
        <div class="container-fluid">
            <h1>Listado de Roles</h1>
            <a class="btn btn-success btn-sm" href="Controlador_Rol?accion=add">Agregar Nuevo</a><br>
            <br>
            <table class="table table-bordered" border="1">
                <thead class="thead-dark">
                    <tr>
                        <th>IdRol</th>
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
        </div>
    </div><!--1 Esto hace parte de Menu.jsp-->
</div><!-- Esto hace parte de Menu.jsp-->
</div><!-- Esto hace parte de Menu.jsp-->
</div><!-- Esto hace parte de Menu.jsp-->
</div><!-- Esto hace parte de Menu.jsp-->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>


</body>
</html>
