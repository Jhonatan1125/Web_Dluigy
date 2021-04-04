<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="Head.jsp" /> <!--Ya incluye el boostrap 4 -->
        <title>Dluigy</title>
    </head>
    <body>
        <jsp:include page="Nav.jsp" />
        <h1>Pagina de inicio</h1>
        <div>
            <a href="Controlador_Usuario?accion=listar">Listar Usuario</a><br><br>
            <a href="Controlador_Rol?accion=listar">Listar Rol</a><br><br>
            <a href="Controlador_Fidelizacion?accion=listar">Listar Fidelizacion</a><br><br>
            <a href="Controlador_Cliente?accion=listar">Listar Cliente</a><br><br>
            <a href="Controlador_Categoria?accion=listar">Listar Categoria</a><br><br>
            <a href="Controlador_Recibo?accion=listar">Listar Recibo</a><br><br>
            <a href="Controlador_Vendedor?accion=listar">Listar Vendedor</a><br><br>
            <a href="Controlador_Inventario?accion=listar">Listar Inventario</a><br><br>
            <a href="Controlador_Proveedor?accion=listar">Listar Proveedor</a><br><br>
            <a href="Controlador_Producto?accion=listar">Listar Producto</a><br><br>
        </div>
        <jsp:include page="Footer.jsp" /><!--ya incluye en boostrap dentro-->
    </body>
</html>
