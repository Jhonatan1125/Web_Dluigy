<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="Head.jsp" /> <!--Ya incluye el boostrap 4 -->
        <title>Registrarse</title>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//Borrar memoria cache y quitar algoritmo para almacenar cache
            response.setHeader("Pragma", "no-cache");//memoria cache compatibles
            response.setDateHeader("Expires", 0);//Fecha que expira (automaticamente vence)
        %>
    </head>
    <body>
        <jsp:include page="Nav.jsp" />
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
        <jsp:include page="Footer.jsp" /><!--Ya incluye el boostrap 4 -->
    </body>
</html>
