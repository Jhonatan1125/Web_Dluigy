<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Añadir Rol</title>
    </head>
    <body>
        <div>
            <h1>Añadir Rol</h1>
            <form action="Controlador_Rol">
                <label for="Rol">Nom_Rol</label>
                <input type="text" name="txtNom_Rol"><br>
                <label for="Rol">Descripcion</label>
                <input type="text" name="txtDescripcion"><br>

                <input type="submit" name="accion" value="Agregar">
            </form>
        </div>
    </body>
</html>