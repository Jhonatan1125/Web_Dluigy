<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Añadir -->Nombretabla</title>
    </head>
    <body>
        <div>
            <h1>Añadir Categoria</h1>
            <form action="Controlador_Categoria">
                <label for="">Nombre Categoria</label>
                <input type="text" name="txtNom_Categoria"><br>
                <label for="">Descripcion</label>
                <input type="text" name="txtDescripcion"><br>

                <input type="submit" name="accion" value="Agregar">
            </form>
        </div>
    </body>
</html>