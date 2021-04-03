<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Añadir Cliente</title>
    </head>
    <body>
        <div>
            <h1>Añadir Cliente</h1>
            <form action="Controlador_Cliente"> 
                <label for="">Id Usuario</label>
                <input type="text" name="txtIdUsuarios_Fk"><br>
                <label for="Rol">Id Fidelizacion</label>
                <input type="text" name="txtIdFidelizacion_Fk"><br>
                <label for="Rol">Valor total de compras</label>
                <input type="text" name="txtVal_Total_Comp"><br>
                <label for="Rol">Numero de compras</label>
                <input type="text" name="txtNum_Comp"><br>

                <input type="submit" name="accion" value="Agregar">
            </form>
        </div>
    </body>
</html>
