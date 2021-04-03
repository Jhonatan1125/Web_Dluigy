<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Añadir Fidelizacion</title>
    </head>
    <body>
        <div>
            <h1>Añadir Fidelizacion</h1>
            <form action="Controlador_Fidelizacion">
            
                <label for="">Puntaje Total</label>
                <input type="text" name="txtPunt_Total"><br>
                <label for="">Fecha de Caducidad</label>
                <input type="text" name="txtFech_Caducidad"><br>

                <input type="submit" name="accion" value="Agregar">
            </form>
        </div>
    </body>
</html>