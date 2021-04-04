<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Añadir Vendedor</title>
    </head>
    <body>
        <div>
            <h1>Añadir Vendedor</h1>
            <form action="Controlador_Vendedor">
                <label for="">Id usuarios</label>
                <input type="text" name="txtIdUsuarios_Fk"><br>
                <label for="">Numero de ventas</label>
                <input type="text" name="txtNum_Ventas"><br>
                <label for="">Comision</label>
                <input type="text" name="txtComision"><br>

                <input type="submit" name="accion" value="Agregar">
            </form>
        </div>
    </body>
</html>