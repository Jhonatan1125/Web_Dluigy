<%@page import="Modelo.Rol"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        
        <title>Editar Rol</title>
    </head>
    <body> 
        <div class="container">
            <div class="col-lg-6">
                <%
                    RolDAO dao = new RolDAO();
                    int id = Integer.parseInt((String) request.getAttribute("IDFun"));
                    Rol u = (Rol) dao.list(id);
                %>
            <h1>Editar Usuario</h1>
            <form action="Controlador_Rol">
                <label for="">IdRol</label>
                <input class="form-control" type="text" name="txtIdRol" value="<%= u.getIdRol() %>"><br>
                <label for="">Nombre Rol</label>
                <input class="form-control" type="text" name="txtNom_Rol" value="<%= u.getNom_Rol() %>"><br>
                <label for="">Descripcion</label>
                <input class="form-control" type="text" name="txtDescripcion" value="<%= u.getDescripcion() %>"><br>

                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar">
                <a style="text-decoration:none" href="Controlador_Rol?accion=listar">Regresar</a>
            </form>
            </div>
            
        </div>
    </body>
</html>