<%-- 
    Document   : Listar
    Created on : 4/04/2021, 09:24:04 AM
    Author     : jorda
--%>

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
        <jsp:include page="../../Menu.jsp" />
        <div class="container-fluid">
            <h1>Listado de Proveedor</h1>
            <a class="btn btn-success btn-sm" href="Controlador_Proveedor?accion=add">Agregar Nuevo</a><br>
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
