<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Añadir -->Nombretabla</title>
    </head>
    <body>
        <div>
            <h1>Añadir Nombretabla</h1>
            <form action="Controlador_Producto">

                <label for="">Id inventario</label>
                <input type="text" name="txtIdInventario_Fk"><br>
                <label for="">Id categoria</label>
                <input type="text" name="txtIdCategoria_Fk"><br>
                <label for="">Nombre del producto</label>
                <input type="text" name="txtNom_Prod"><br>
                <label for="">Color del producto</label>
                <input type="text" name="txtColor_Prod"><br>
                <label for="">Talla del producto</label>
                <input type="text" name="txtTalla_Prod"><br>
                <label for="">Material del producto</label>
                <input type="text" name="txtMaterial_Prod"><br>
                <label for="">Precio unitario de la venta</label>
                <input type="text" name="txtPrecio_Unitario_Venta"><br>
                <label for="">Precio unitario de la compra</label>
                <input type="text" name="txtPrecio_Unitario_Compra"><br>

                <input type="submit" name="accion" value="Agregar">
            </form>
        </div>
    </body>
</html>