<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="Head.jsp" /> <!--Ya incluye el boostrap 4 -->
        <title>Registrarse</title>
        <link href="Contenido/css/Estilo1.css" rel="stylesheet" type="text/css"/>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//Borrar memoria cache y quitar algoritmo para almacenar cache
            response.setHeader("Pragma", "no-cache");//memoria cache compatibles
            response.setDateHeader("Expires", 0);//Fecha que expira (automaticamente vence)
        %>
    </head>
    <body>
        <jsp:include page="Nav.jsp" />
        <div class="cuerpoFormulario2">


            <form id="formularioRegistro" method="post" action="Guardar">
                <div style="width: 100%; text-align: left;" >
                    <div style="width: 100%; text-align: right;">
                        <a href="Login.jsp" class="btn btn-primary">Iniciar Sesion</a>
                    </div>
                    <h1>Registro</h1>

                    <label for="P_nombre">Primer Nombre</label>
                    <input class="res" type="text" name="P_nombre" required="">
                    <label for="S_nombre">Segundo Nombre (OPCIONAL)</label>
                    <input class="res" type="text" name="S_nombre"><br>
                    <label for="P_apellido">Primer Apellido</label>
                    <input class="res" type="text" name="P_apellido" required="">
                    <label for="S_apellido">Segundo Apellido (OPCIONAL)</label>
                    <input class="res" type="text" name="S_apellido"><br>
                    <label for="Telefono">Telefono (OPCIONAL)</label>
                    <input class="res" type="text" name="Telefono">
                    <label for="Nacimiento">Fecha de Nacimiento</label>
                    <input class="res" type="text" name="Nacimiento" required=""><br>
                    <label for="Correo">Correo Electronico</label>
                    <input class="res" type="text" name="Correo" required="">
                    <label for="Clave">Contraseña</label>
                    <input class="res" type="text" name="Clave" required=""><br><br>

                    <input type="submit" class="btn btn-primary" style="width: 100%;" name="accion" value="Agregar">
                </div>
            </form>
        </div>
        <jsp:include page="Footer.jsp" /><!--Ya incluye el boostrap 4 -->
    </body>
</html>
