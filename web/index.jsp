<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Pagina de inicio</h1>
        <div>
            <a href="Controlador_Usuario?accion=listar">Listar Usuario</a><br>
            <a href="Controlador_Rol?accion=listar">Listar Rol</a><br>
            <a href="Controlador_Fidelizacion?accion=listar">Listar Fidelizacion</a><br>
            <a href="Controlador_Cliente?accion=listar">Listar Cliente</a><br>
            <a href="Controlador_Categoria?accion=listar">Listar Categoria</a><br>
            <a href="Controlador_Recibo?accion=listar">Listar Recibo</a><br>
            <a href="Login.jsp">Iniciar Sesion</a><br>
            <a href="registro.jsp">Registrarse</a><br>
        </div>
    </body>
</html>
