<%-- 
    Document   : Listar
    Created on : 3/04/2021, 06:43:43 PM
    Author     : jorda
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Vendedor"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.VendedorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de Vendedor</h1>
        <a href="Controlador_Vendedor?accion=add">Agregar Nuevo</a><br>
        <table border="1">
            <thead>
                <tr>
                    <th>Id vendedor</th>
                    <th>Id usuarios</th>
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
                        <a href="Controlador_Vendedor?accion=editar&id=<%= tab.getIdVendedor()%>">Editar</a>
                        <a href="Controlador_Vendedor?accion=eliminar&id=<%= tab.getIdVendedor()%>">Eliminar</a> 
                    </td>
                </tr>
                <%}%>
            </tbody>
        </table>

    </body>
</html>
