<%-- 
    Document   : Listar
    Created on : 4/04/2021, 11:29:47 AM
    Author     : jorda
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Producto"%>
<%@page import="Modelo.Producto"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de Producto</h1>
        <a href="Controlador_Producto?accion=add">Agregar Nuevo</a><br>
        <table border="1">
            <thead>
                <tr>
                    <th>Id producto</th>
                    <th>Id inventaro</th>
                    <th>id categoria</th>
                    <th>Nombre Producto</th>
                    <th>Color Producto</th>
                    <th>Talla Producto</th>
                    <th>Material Producto</th>
                    <th>Precio Venta</th>
                    <th>Precio Compra</th>
                    <th>OPCIONES</th>
                </tr>
            </thead>
            <%
                ProductoDAO dao = new ProductoDAO();
                List<Producto> list = dao.listar();
                Iterator<Producto> iter = list.iterator();
                Producto tab = null;
                while (iter.hasNext()) {//No cerrar este corchete
                    tab = iter.next();
            %>
            <tbody>
                <tr>
                    <td><%= tab.getIdProducto()%></td>
                    <td><%= tab.getIdInventario_Fk()%></td>
                    <td><%= tab.getIdCategoria_Fk()%></td>
                    <td><%= tab.getNom_Prod()%></td>
                    <td><%= tab.getColor_Prod()%></td>
                    <td><%= tab.getTalla_Prod()%></td>
                    <td><%= tab.getMaterial_Prod()%></td>
                    <td><%= tab.getPrecio_Unitario_Venta()%></td>
                    <td><%= tab.getPrecio_Unitario_Compra()%></td>
                    <td>
                        <a href="Controlador_Producto?accion=editar&id=<%= tab.getIdProducto()%>">Editar</a>
                        <a href="Controlador_Producto?accion=eliminar&id=<%= tab.getIdProducto()%>">Eliminar</a>
                    </td>
                </tr>
                <%}%>
            </tbody>
        </table>

    </body>
</html>
