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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de Cliente</h1>
        <a href="Controlador_Cliente?accion=add">Agregar Nuevo</a><br>
        <table border="1">
            <thead>
                <tr>
                    <th>Id Cliente</th>
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
                        <a href="Controlador_Cliente?accion=editar&id=<%= tab.getIdCliente() %>">Editar</a>
                        <a href="Controlador_Cliente?accion=eliminar&id=<%= tab.getIdCliente() %>">Eliminar</a>
                    </td>
                </tr>
                <%}%>
            </tbody>
        </table>

    </body>
</html>
