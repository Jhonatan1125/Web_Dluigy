<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
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
        <div class="cuerpoFormulario" id="cuerpoFormulario">
            <form class="formularioLogin" id="formularioLogin" method="post" action="Sesion">
                <h1>Iniciar Sesion</h1>
                <label for="">Usuario:</label>
                <div class="texto">
                    <input type="text" class="txt" id="txtUsuario" required="" name="txtUsuario">
                </div><br>
                <label for="">Contraseña:</label>
                <div class="texto">
                    <input type="password" class="txt" id="txtContrasena" required="" name="txtClave">
                </div>
                <br>
                <input type="submit" value="Iniciar Sesion">
            </form>
        </div>
        <jsp:include page="Footer.jsp" />
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>
</html>
