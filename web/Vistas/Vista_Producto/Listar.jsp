
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

        <div class="container-fluid">
            
            <%!String Rol; %>
            <% Rol=request.getParameter("Rol"); %>
            <a href="Controlador_Inventario?accion=listar" class="btn btn-info">Inventario</a>
            <a href="Controlador_Categoria?accion=listar" class="btn btn-info">Categoria</a>

            <h1>Listado de Producto</h1>
            <div style="width: 100%; text-align: right;">
                <a class="btn btn-info btn-sm" href="Controlador_Producto?accion=reporte">Reporte Producto <i class="fas fa-file-pdf"></i></a>
                <a class="btn btn-success btn-sm" href="Controlador_Producto?accion=add">Agregar Nuevo</a>
            </div>
            <br>
            <table class="table table-bordered" border="1">
                <thead class="thead-dark">
                    <tr>
                        <th class="min">ID</th>
                        <th class="min">Id inventaro</th>
                        <th class="min">id categoria</th>
                        <th>Nombre</th>
                        <th>Color</th>
                        <th>Talla</th>
                        <th>Material</th>
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
                            <a class="btn btn-success btn-sm" href="Controlador_Producto?accion=editar&id=<%= tab.getIdProducto()%>">Editar</a>
                            <a class="btn btn-danger btn-sm" href="Controlador_Producto?accion=eliminar&id=<%= tab.getIdProducto()%>">Eliminar</a>
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
