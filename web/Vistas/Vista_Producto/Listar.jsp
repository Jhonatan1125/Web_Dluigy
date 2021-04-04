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
        <jsp:include page="../../Head.jsp" />
        <title>Listar Producto</title>
        <link href="Contenido/css/estilo5.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="../../Menu.jsp" />
        <a href="Controlador_Inventario?accion=listar">Inventario</a>
        <a href="Controlador_Categoria?accion=listar">Categoria</a>
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