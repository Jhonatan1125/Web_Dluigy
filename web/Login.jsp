<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="Head.jsp" /> <!--Ya incluye el boostrap 4 -->
        <title>Login</title>
        <link href="Contenido/css/Estilo1.css" rel="stylesheet" type="text/css"/>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//Borrar memoria cache y quitar algoritmo para almacenar cache
            response.setHeader("Pragma", "no-cache");//memoria cache compatibles
            response.setDateHeader("Expires", 0);//Fecha que expira (automaticamente vence)
        %>
    </head>
    <body>
        <jsp:include page="Nav.jsp" />
        <div class="cuerpoFormulario">

            <form class="formularioLogin" method="post" action="Sesion">
                <div style="width: 100%; text-align: right;">
                    <a href="registro.jsp" class="btn btn-primary">Crear Cuenta</a>
                </div>
                <h1>Iniciar Sesion</h1>


                <input class="log" type="email"  id="txtUsuario" required="" name="txtUsuario" placeholder="Correo">

                <input class="log" type="password" id="txtContrasena" required="" name="txtClave" placeholder="Contraseña">
                <br>
                <input type="submit" class="btn btn-primary" style="width: 80%" value="Iniciar Sesion">

            </form>
        </div>
        <jsp:include page="Footer.jsp" /><!--Ya incluye el boostrap 4 -->

    </body>
</html>
