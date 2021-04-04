<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="Head.jsp" /> <!--Ya incluye el boostrap 4 -->
        <title>Login</title>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//Borrar memoria cache y quitar algoritmo para almacenar cache
            response.setHeader("Pragma", "no-cache");//memoria cache compatibles
            response.setDateHeader("Expires", 0);//Fecha que expira (automaticamente vence)
        %>
    </head>
    <body>
        <jsp:include page="Nav.jsp" />
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
        <jsp:include page="Footer.jsp" /><!--Ya incluye el boostrap 4 -->
        
    </body>
</html>
