<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrarse</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
        <link href="Contenido/css/Estilo-Pri.css" rel="stylesheet" type="text/css"/>
        <link href="Contenido/css/normalize.css" rel="stylesheet" type="text/css"/>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//Borrar memoria cache y quitar algoritmo para almacenar cache
            response.setHeader("Pragma", "no-cache");//memoria cache compatibles
            response.setDateHeader("Expires", 0);//Fecha que expira (automaticamente vence)
%>
    </head>
    <body>
        <jsp:include page="Header.jsp" />
        <div>
            <h1>Registro</h1>
            <form id="formularioRegistro" method="post" action="Guardar">
                <label for="P_nombre">Primer Nombre</label>
                <input type="text" name="P_nombre" required=""><br>
                <label for="S_nombre">Segundo Nombre (OPCIONAL)</label>
                <input type="text" name="S_nombre"><br>
                <label for="P_apellido">Primer Apellido</label>
                <input type="text" name="P_apellido" required=""><br>
                <label for="S_apellido">Segundo Apellido (OPCIONAL)</label>
                <input type="text" name="S_apellido"><br>
                <label for="Telefono">Telefono (OPCIONAL)</label>
                <input type="text" name="Telefono"><br>
                <label for="Nacimiento">Fecha de Nacimiento</label>
                <input type="text" name="Nacimiento" required=""><br>
                <label for="Correo">Correo Electronico</label>
                <input type="text" name="Correo" required=""><br>
                <label for="Clave">Contraseña</label>
                <input type="text" name="Clave" required=""><br><br>

                <input type="submit" name="accion" value="Agregar">
            </form>
        </div>
        <jsp:include page="Footer.jsp" />
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>
</html>
