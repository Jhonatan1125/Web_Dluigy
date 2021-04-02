<%@page import="Modelo.Rol"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Rol</title>
    </head>
    <body>
        <div>
            <%
                    RolDAO dao = new RolDAO();
                    int id = Integer.parseInt((String) request.getAttribute("IDFun"));
                    Rol u = (Rol) dao.list(id);
                %>
            <h1>Editar Usuario</h1>
            <form action="Controlador_Rol">
                <label for="">IdRol</label>
                <input type="text" name="txtIdRol" value="<%= u.getIdRol() %>"><br>
                <label for="">Nombre Rol</label>
                <input type="text" name="txtNom_Rol" value="<%= u.getNom_Rol() %>"><br>
                <label for="">Descripcion</label>
                <input type="text" name="txtDescripcion" value="<%= u.getDescripcion() %>"><br>

                <input type="submit" name="accion" value="Actualizar">
                <a href="Controlador_Rol?accion=listar">Regresar</a>
            </form>
        </div>
    </body>
</html>