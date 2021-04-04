
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Inventario"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.InventarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de Inventario</h1>
        <a href="Controlador_Inventario?accion=add">Agregar Nuevo</a><br>
        <table border="1">
            <thead>
                <tr>
                    <th>Id Inventario</th>
                    <th>Cantidad</th>
                    <th>Fecha de entrada</th>
                    <th>Cantidad de entrada</th>
                    <th>Cantidad de salidas</th>
                    <th>OPCIONES</th>
                </tr>
            </thead>
            <%
                InventarioDAO dao = new InventarioDAO();
                List<Inventario> list = dao.listar();
                Iterator<Inventario> iter = list.iterator();
                Inventario tab = null;
                while (iter.hasNext()) {//No cerrar este corchete
                    tab = iter.next();
            %>
            <tbody>
                <tr>
                    <td><%= tab.getIdInventario()%></td>
                    <td><%= tab.getCantidad()%></td>
                    <td><%= tab.getFech_Entrada()%></td>
                    <td><%= tab.getCant_Entrada()%></td>
                    <td><%= tab.getCant_Salida()%></td>
                    <td>
                        <a href="Controlador_Inventario?accion=editar&id=<%= tab.getIdInventario()%>">Editar</a>
                        <a href="Controlador_Inventario?accion=eliminar&id=<%= tab.getIdInventario()%>">Eliminar</a>
                    </td>
                </tr>
                <%}%>
            </tbody>
        </table>

    </body>
</html>