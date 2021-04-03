<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Añadir Recibo</title>
    </head>
    <body>
        <div>
            <h1>Añadir Recibo</h1>
            <form action="Controlador_Recibo">
                <label for="">Id vendedor</label>
                <input type="text" name="txtIdVendedor_Fk"><br>
                <label for="">Id cliente</label>
                <input type="text" name="txtIdCliente_Fk"><br>
                <label for="">Fecha Recibo</label>
                <input type="text" name="txtFech_Recibo"><br>
                <label for="">Total Recibo</label>
                <input type="text" name="txtTotal"><br>

                <input type="submit" name="accion" value="Agregar">
            </form>
        </div>
    </body>
</html>