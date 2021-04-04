<%@page import="Modelo.Producto"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Nombretabla</title>
    </head>
    <body>
        <div>
            <%
                ProductoDAO dao = new ProductoDAO();
                int id = Integer.parseInt((String) request.getAttribute("IDFun"));
                Producto u = (Producto) dao.list(id);
            %>
            <h1>Editar Producto</h1>

            <form action="Controlador_Producto">
                <label for="">id del producto</label>
                <input type="text" name="txtIdProducto" value="<%= u.getIdProducto()  %>"><br>
                <label for="">id del inventario</label>
                <input type="text" name="txtIdInventario_Fk" value="<%= u.getIdInventario_Fk()  %>"><br>
                <label for="">id categoria</label>
                <input type="text" name="txtIdCategoria_Fk" value="<%= u.getIdCategoria_Fk()  %>"><br>
                <label for="">Nombre producto</label>
                <input type="text" name="txtNom_Prod" value="<%= u.getNom_Prod()  %>"><br>
                <label for="">color producto</label>
                <input type="text" name="txtColor_Prod" value="<%= u.getColor_Prod()  %>"><br>
                <label for="">talla producto</label>
                <input type="text" name="txtTalla_Prod" value="<%= u.getTalla_Prod()  %>"><br>
                <label for="">material producto</label>
                <input type="text" name="txtMaterial_Prod" value="<%= u.getMaterial_Prod()  %>"><br>
                <label for="">precio venta producto</label>
                <input type="text" name="txtPrecio_Unitario_Venta" value="<%= u.getPrecio_Unitario_Venta()  %>"><br>
                <label for="">precio compra producto</label>
                <input type="text" name="txtPrecio_Unitario_Compra" value="<%= u.getPrecio_Unitario_Compra()  %>"><br>


                <input type="submit" name="accion" value="Actualizar">
                <a href="Controlador_Producto?accion=listar">Regresar</a>
            </form>
        </div>
    </body>
</html>