<%-- 
    Document   : Listar
    Created on : 2/04/2021, 10:03:42 PM
    Author     : JHsan
--%>

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
        <jsp:include page="../../Menu.jsp" />
        <div class="container-fluid">
            <a href="Controlador_Fidelizacion?accion=listar" class="btn btn-info">Fidelizacion</a><br>
            <h1>Listado de Cliente</h1>
            <div style="width: 100%; text-align: right;">
                <a class="btn btn-success btn-sm" href="Controlador_Cliente?accion=add">Agregar Nuevo</a>
            </div>
            <br>
            <table class="table table-bordered" border="1">
                <thead class="thead-dark">
                    <tr>
                        <th class="min">IDe</th>
                        <th class="min">Id Usuario</th>
                        <th class="min">Id Fidelizacion</th>
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
