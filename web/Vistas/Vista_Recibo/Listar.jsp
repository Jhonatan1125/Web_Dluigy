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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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

    </body>
</html>
