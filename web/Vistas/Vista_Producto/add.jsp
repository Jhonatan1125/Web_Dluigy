<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">        
        <title>Añadir -->Nombretabla</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-8">
                <h1>Añadir Nombretabla</h1>
            <form action="Controlador_Producto">

                <label for="">Id inventario</label>
                <input class="form-control" type="text" name="txtIdInventario_Fk"><br>
                <label for="">Id categoria</label>
                <input class="form-control" type="text" name="txtIdCategoria_Fk"><br>
                <label for="">Nombre del producto</label>
                <input class="form-control" type="text" name="txtNom_Prod"><br>
                <label for="">Color del producto</label>
                <input class="form-control" type="text" name="txtColor_Prod"><br>
                <label for="">Talla del producto</label>
                <input class="form-control" type="text" name="txtTalla_Prod"><br>
                <label for="">Material del producto</label>
                <input class="form-control" type="text" name="txtMaterial_Prod"><br>
                <label for="">Precio unitario de la venta</label>
                <input class="form-control" type="text" name="txtPrecio_Unitario_Venta"><br>
                <label for="">Precio unitario de la compra</label>
                <input class="form-control" type="text" name="txtPrecio_Unitario_Compra"><br>

                <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
            </form>
            </div>
            
        </div>
    </body>
</html>