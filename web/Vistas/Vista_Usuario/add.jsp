<%-- 
    Document   : add
    Created on : 25/03/2021, 12:52:19 PM
    Author     : JHsan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Añadir Usuario</h1>
            <form action="Controlador_Usuario">
                <label for="Rol">Rol del Usuario</label>
                <input type="text" name="Rol"><br>
                <label for="P_nombre">Primer Nombre</label>
                <input type="text" name="P_nombre"><br>
                <label for="S_nombre">Segundo Nombre</label>
                <input type="text" name="S_nombre"><br>
                <label for="P_apellido">Primer Apellido</label>
                <input type="text" name="P_apellido"><br>
                <label for="S_apellido">Segundo Apellido</label>
                <input type="text" name="S_apellido"><br>
                <label for="Telefono">Telefono</label>
                <input type="text" name="Telefono"><br>
                <label for="Nacimiento">Fecha de Nacimiento</label>
                <input type="text" name="Nacimiento"><br>
                <label for="Correo">Correo Electronico</label>
                <input type="text" name="Correo"><br>
                <label for="Clave">Contraseña</label>
                <input type="text" name="Clave"><br><br>

                <input type="submit" name="accion" value="Agregar">
            </form>
        </div>
    </body>
</html>
