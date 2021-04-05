<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">      
        <title>Añadir Inventario</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-8">
                <h1>Añadir Nombretabla</h1>
            <form action="Controlador_Inventario">
            
                <label for="">Cantidad</label>
                <input class="form-control" type="text" name="txtCantidad"><br>
                <label for="">Fecha entrada</label>
                <input class="form-control" type="text" name="txtFech_Entrada"><br>
                <label for="">Cantidad Entrada</label>
                <input class="form-control" type="text" name="txtCant_Entrada"><br>
                <label for="">Cantidad Salida</label>
                <input class="form-control" type="text" name="txtCant_Salida"><br>

                <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
            </form>
            </div>
            
        </div>
    </body>
</html>