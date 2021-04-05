<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-8"> 
                <h1>Añadir Usuario</h1>
                <form action="Controlador_Usuario">
                    <label for="Rol">Rol del Usuario</label>
                    <input class="form-control" type="text" name="Rol"><br>
                    <label for="P_nombre">Primer Nombre</label>
                    <input class="form-control" type="text" name="P_nombre"><br>
                    <label for="S_nombre">Segundo Nombre</label>
                    <input class="form-control" type="text" name="S_nombre"><br>
                    <label for="P_apellido">Primer Apellido</label>
                    <input class="form-control" type="text" name="P_apellido"><br>
                    <label for="S_apellido">Segundo Apellido</label>
                    <input class="form-control" type="text" name="S_apellido"><br>
                    <label for="Telefono">Telefono</label>
                    <input class="form-control" type="text" name="Telefono"><br>
                    <label for="Nacimiento">Fecha de Nacimiento</label>
                    <input class="form-control" type="text" name="Nacimiento"><br>
                    <label for="Correo">Correo Electronico</label>
                    <input class="form-control" type="text" name="Correo"><br>
                    <label for="Clave">Contraseña</label>
                    <input class="form-control" type="text" name="Clave"><br><br>

                    <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
                </form>
            </div>

        </div>
    </body>
</html>
