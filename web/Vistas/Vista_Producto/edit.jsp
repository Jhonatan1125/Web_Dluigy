<%@page import="Modelo.Producto"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">          
        <title>Editar Nombretabla</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
               <%
                ProductoDAO dao = new ProductoDAO();
                int id = Integer.parseInt((String) request.getAttribute("IDFun"));
                Producto u = (Producto) dao.list(id);
            %>
            <h1>Editar Producto</h1>

            <form action="Controlador_Producto">
                <label for="">id del producto</label>
                <input class="form-control" type="text" name="txtIdProducto" value="<%= u.getIdProducto()  %>"><br>
                <label for="">id del inventario</label>
                <input class="form-control" type="text" name="txtIdInventario_Fk" value="<%= u.getIdInventario_Fk()  %>"><br>
                <label for="">id categoria</label>
                <input class="form-control" type="text" name="txtIdCategoria_Fk" value="<%= u.getIdCategoria_Fk()  %>"><br>
                <label for="">Nombre producto</label>
                <input class="form-control" type="text" name="txtNom_Prod" value="<%= u.getNom_Prod()  %>"><br>
                <label for="">color producto</label>
                <input class="form-control" type="text" name="txtColor_Prod" value="<%= u.getColor_Prod()  %>"><br>
                <label for="">talla producto</label>
                <input class="form-control" type="text" name="txtTalla_Prod" value="<%= u.getTalla_Prod()  %>"><br>
                <label for="">material producto</label>
                <input class="form-control" type="text" name="txtMaterial_Prod" value="<%= u.getMaterial_Prod()  %>"><br>
                <label for="">precio venta producto</label>
                <input class="form-control" type="text" name="txtPrecio_Unitario_Venta" value="<%= u.getPrecio_Unitario_Venta()  %>"><br>
                <label for="">precio compra producto</label>
                <input class="form-control" type="text" name="txtPrecio_Unitario_Compra" value="<%= u.getPrecio_Unitario_Compra()  %>"><br>


                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar">
                <a style="text-decoration:none" href="Controlador_Producto?accion=listar">Regresar</a>
            </form>  
            </div>
           
        </div>
    </body>
</html>