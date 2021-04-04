<%-- 
    Document   : Listar
    Created on : 3/04/2021, 03:25:23 PM
    Author     : jorda
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Recibo"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.ReciboDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../../Head.jsp" />
        <title>Listar Recibo</title>
        <link href="Contenido/css/estilo5.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="../../Menu.jsp" />
        <h1>Listado de Recibo</h1>
        <a href="Controlador_Recibo?accion=add">Agregar Nuevo</a><br>
        <table border="1">
            <thead>
                <tr>
                    <th>Id Recibo</th>
                    <th>Id Vendedor</th>
                    <th>Id Cliente</th>
                    <th>Fecha Recibo</th>
                    <th>Total</th>
                    <th>OPCIONES</th>
                </tr>
            </thead>
            <%
                ReciboDAO dao = new ReciboDAO();
                List<Recibo> list = dao.listar();
                Iterator<Recibo> iter = list.iterator();
                Recibo tab = null;
                while (iter.hasNext()) {//No cerrar este corchete
                    tab = iter.next();
            %>
            <tbody>
                <tr>
                    <td><%= tab.getIdRecibo()%></td>
                    <td><%= tab.getIdVendedor_Fk()%></td>
                    <td><%= tab.getIdCliente_Fk()%></td>
                    <td><%= tab.getFech_Recibo()%></td>
                    <td><%= tab.getTotal()%></td>
                    <td>
                        <a href="Controlador_Recibo?accion=editar&id=<%= tab.getIdRecibo()%>">Editar</a>
                        <a href="Controlador_Recibo?accion=eliminar&id=<%= tab.getIdRecibo()%>">Eliminar</a>
                    </td>
                </tr>
                <%}%>
            </tbody>
        </table>
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
