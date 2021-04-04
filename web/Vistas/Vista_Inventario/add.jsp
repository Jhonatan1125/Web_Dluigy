<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Añadir Inventario</title>
    </head>
    <body>
        <div>
            <h1>Añadir Nombretabla</h1>
            <form action="Controlador_Inventario">
            
                <label for="">Cantidad</label>
                <input type="text" name="txtCantidad"><br>
                <label for="">Fecha entrada</label>
                <input type="text" name="txtFech_Entrada"><br>
                <label for="">Cantidad Entrada</label>
                <input type="text" name="txtCant_Entrada"><br>
                <label for="">Cantidad Salida</label>
                <input type="text" name="txtCant_Salida"><br>

                <input type="submit" name="accion" value="Agregar">
            </form>
        </div>
    </body>
</html>